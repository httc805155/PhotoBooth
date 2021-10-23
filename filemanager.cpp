#include "filemanager.h"
#include <QStandardPaths>

FileManager::FileManager()
{

}

void FileManager::Save()
{

}

void FileManager::Read(QString path)
{

}

void GetPath()
{
    QStringList locations =
            QStandardPaths::locateAll(QStandardPaths::PicturesLocation, QString(), QStandardPaths::LocateDirectory);

}
