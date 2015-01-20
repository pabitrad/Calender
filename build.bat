@if "%SCM_TRACE_LEVEL%" NEQ "4" @echo off

:: Prerequisites
:: -------------

:: Setup
:: -----

setlocal enabledelayedexpansion

IF NOT DEFINED SOLUTION_NAME (
	SET SOLUTION_NAME=Kwasant.sln
)

IF NOT DEFINED DEPLOYMENT_SOURCE (
  SET DEPLOYMENT_SOURCE=%~dp0%.
)

IF NOT DEFINED DEPLOYMENT_TEMP (
  SET DEPLOYMENT_TEMP=%temp%\___deployTemp%random%
  SET CLEAN_LOCAL_DEPLOYMENT_TEMP=true
)

IF NOT DEFINED MSBUILD_PATH (
  SET MSBUILD_PATH=%WINDIR%\Microsoft.NET\Framework\v4.0.30319\msbuild.exe
)

IF NOT DEFINED NUNIT_RUNNERS_VERSION (
  Set NUNIT_RUNNERS_VERSION=2.6.3
)

IF NOT DEFINED NUNIT_RUNNERS (
  SET NUNIT_RUNNERS=NUnit.Runners.%NUNIT_RUNNERS_VERSION%\tools\nunit-console.exe
)

IF NOT DEFINED NUGET_EXE (
	SET NUGET_EXE=.nuget/nuget.exe
)

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Building
:: ----------

:: 1. Clean workspace
echo Cleaning workspace...
call :ExecuteCmd "git" clean -fdx

:: 3. Build to the temporary path
IF /I "%IN_PLACE_DEPLOYMENT%" NEQ "1" (
  echo Building application to temp folder
  call :ExecuteCmd "%MSBUILD_PATH%" "%DEPLOYMENT_SOURCE%\KwasantWeb.csproj" /nologo /verbosity:m /t:Build /p:WarningLevel=0 /t:pipelinePreDeployCopyAllFilesToOneFolder /p:_PackageTempDir="%DEPLOYMENT_TEMP%";AutoParameterizationWebConfigConnectionStrings=false;Configuration=Release /p:SolutionDir="%DEPLOYMENT_SOURCE%\.\\" %SCM_BUILD_ARGS%
  IF !ERRORLEVEL! NEQ 0 goto error
  call :ExecuteCmd "%MSBUILD_PATH%" "%DEPLOYMENT_SOURCE%\Tests\KwasantTest\KwasantTest.csproj" /nologo /verbosity:m /t:Build /p:WarningLevel=0 /p:_PackageTempDir="%DEPLOYMENT_TEMP%";AutoParameterizationWebConfigConnectionStrings=false;Configuration=Release /p:SolutionDir="%DEPLOYMENT_SOURCE%\.\\" %SCM_BUILD_ARGS%
  IF !ERRORLEVEL! NEQ 0 goto error
  call :ExecuteCmd "%MSBUILD_PATH%" "%DEPLOYMENT_SOURCE%\Tests\DDay\DDay.Collections.Test\DDay.Collections.Test.csproj" /nologo /verbosity:m /t:Build /p:WarningLevel=0 /p:_PackageTempDir="%DEPLOYMENT_TEMP%";AutoParameterizationWebConfigConnectionStrings=false;Configuration=Release /p:SolutionDir="%DEPLOYMENT_SOURCE%\.\\" %SCM_BUILD_ARGS%
  IF !ERRORLEVEL! NEQ 0 goto error
  call :ExecuteCmd "%MSBUILD_PATH%" "%DEPLOYMENT_SOURCE%\Tests\DDay\DDay.iCal.Test\DDay.iCal.Test.csproj" /nologo /verbosity:m /t:Build /p:WarningLevel=0 /p:_PackageTempDir="%DEPLOYMENT_TEMP%";AutoParameterizationWebConfigConnectionStrings=false;Configuration=Release /p:SolutionDir="%DEPLOYMENT_SOURCE%\.\\" %SCM_BUILD_ARGS%
  IF !ERRORLEVEL! NEQ 0 goto error

) ELSE (
  echo Building application in place
  call :ExecuteCmd "%MSBUILD_PATH%" "%DEPLOYMENT_SOURCE%\KwasantWeb.csproj" /nologo /verbosity:m /t:Build /p:WarningLevel=0 /p:AutoParameterizationWebConfigConnectionStrings=false;Configuration=Release /p:SolutionDir="%DEPLOYMENT_SOURCE%\.\\" %SCM_BUILD_ARGS%
  IF !ERRORLEVEL! NEQ 0 goto error
  call :ExecuteCmd "%MSBUILD_PATH%" "%DEPLOYMENT_SOURCE%\Tests\KwasantTest\KwasantTest.csproj" /nologo /verbosity:m /t:Build /p:WarningLevel=0 /p:AutoParameterizationWebConfigConnectionStrings=false;Configuration=Release /p:SolutionDir="%DEPLOYMENT_SOURCE%\.\\" %SCM_BUILD_ARGS%
  IF !ERRORLEVEL! NEQ 0 goto error
  call :ExecuteCmd "%MSBUILD_PATH%" "%DEPLOYMENT_SOURCE%\Tests\DDay\DDay.Collections.Test\DDay.Collections.Test.csproj" /nologo /verbosity:m /t:Build /p:WarningLevel=0 /p:AutoParameterizationWebConfigConnectionStrings=false;Configuration=Release /p:SolutionDir="%DEPLOYMENT_SOURCE%\.\\" %SCM_BUILD_ARGS%
  IF !ERRORLEVEL! NEQ 0 goto error
  call :ExecuteCmd "%MSBUILD_PATH%" "%DEPLOYMENT_SOURCE%\Tests\DDay\DDay.iCal.Test\DDay.iCal.Test.csproj" /nologo /verbosity:m /t:Build /p:WarningLevel=0 /p:AutoParameterizationWebConfigConnectionStrings=false;Configuration=Release /p:SolutionDir="%DEPLOYMENT_SOURCE%\.\\" %SCM_BUILD_ARGS%
  IF !ERRORLEVEL! NEQ 0 goto error
)

:: 5.
echo Running tests
call :ExecuteCmd "%NUGET_EXE%" install NUnit.Runners -Version %NUNIT_RUNNERS_VERSION%
IF !ERRORLEVEL! NEQ 0 goto error
call :ExecuteCmd "%NUNIT_RUNNERS%" -labels "%DEPLOYMENT_SOURCE%\Tests\KwasantTest\bin\Release\KwasantTest.dll"
IF !ERRORLEVEL! NEQ 0 goto error
:: call :ExecuteCmd "%NUNIT_RUNNERS%" -labels "%DEPLOYMENT_SOURCE%\Tests\DDay\DDay.Collections.Test\bin\Release\DDay.Collections.Test.dll"
:: IF !ERRORLEVEL! NEQ 0 goto error
:: call :ExecuteCmd "%NUNIT_RUNNERS%" -labels "%DEPLOYMENT_SOURCE%\Tests\DDay\DDay.iCal.Test\bin\Release\DDay.iCal.Test.dll"
:: IF !ERRORLEVEL! NEQ 0 goto error

goto end

:ExecuteCmd
setlocal
set _CMD_=%*
call %_CMD_%
if "%ERRORLEVEL%" NEQ "0" echo Failed exitCode=%ERRORLEVEL%, command=%_CMD_%
exit /b %ERRORLEVEL%

:end
echo Finished successfully.
