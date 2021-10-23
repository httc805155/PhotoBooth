#include "cameramanager.h"
#include <QCamera>
#include <QMediaDevices>

CameraManager::CameraManager()
{

}

bool CameraManager::CheckCameraAvailability()
{
    if (QMediaDevices::videoInputs().count() > 0)
        return true;
    else
        return false;
}
