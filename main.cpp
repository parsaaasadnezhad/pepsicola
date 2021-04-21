#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "AdvertismentCpp/fanseat.h"

#include "advertismentmodel.h"
#include "advertismentdata.h"
//#include "Abstract/abstractad.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

//    qmlRegisterType<FanSeat>("AdvertismentCpp" , 1 , 0 , "FanSeatCpp");
    qmlRegisterType<AdvertismentModel>("AdvertismentModel" , 1 , 0 , "AdModel");
    qmlRegisterUncreatableType<AdvertismentData>("AdvertismentModel" , 1 , 0 , "AdData" , "warning");
    AdvertismentData data;

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("adData" , &data);
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
