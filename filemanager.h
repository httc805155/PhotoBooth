#ifndef FILEMANAGER_H
#define FILEMANAGER_H

#include <QString>

class FileManager
{
public:
    FileManager();
    void Save();
    void Read(QString path);
};

#endif // FILEMANAGER_H
