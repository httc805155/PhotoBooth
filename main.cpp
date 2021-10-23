#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtMultimedia>
#include <QCamera>
#include <QQuickItem>

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    QString configDataDirString = QStandardPaths::standardLocations(QStandardPaths::AppConfigLocation).at(1);
    qDebug() << configDataDirString;

    if(!QDir(configDataDirString).exists())
    {
        QDir().mkdir(configDataDirString);
    }

    QObject *object = engine.rootObjects()[0];
    object->setProperty("defaultPath", configDataDirString);

    return app.exec();
}
