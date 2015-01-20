﻿using System;
using System.IO;
using Data.Entities;
using Microsoft.WindowsAzure;

namespace Data.Infrastructure
{
    public static class FileManager
    {
        static string GetAbsolutePath(String relativePath)
        {
            string directory = CloudConfigurationManager.GetSetting("LocalFileStorageDirectory");
            if (String.IsNullOrEmpty(directory))
                directory = Path.GetTempPath();

            directory = Path.GetFullPath(directory);
            if (!Directory.Exists(directory))
                Directory.CreateDirectory(directory);
            return Path.Combine(directory, relativePath);
        }

        public static void SaveFile(StoredFileDO fileDO)
        {
            if (String.IsNullOrEmpty(fileDO.StoredName))
                fileDO.StoredName = Path.GetRandomFileName();

            FileStream fileStream = new FileStream(GetAbsolutePath(fileDO.StoredName), FileMode.Create);
            fileDO.GetData().CopyTo(fileStream);
            fileStream.Close();
        }

        public static void LoadFile(StoredFileDO fileDO)
        {
            if (String.IsNullOrEmpty(fileDO.StoredName))
                throw new Exception("File does not have a stored name");

            MemoryStream memoryStream = new MemoryStream();
            FileStream fileStream = new FileStream(GetAbsolutePath(fileDO.StoredName), FileMode.Open);
            fileStream.CopyTo(memoryStream);
            fileStream.Close();
            fileDO.SetData(memoryStream);
        }
    }
}
