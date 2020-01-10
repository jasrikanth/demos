#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <login.h>
#include <QQmlContext>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    Login *mylogin = new Login;
    engine.rootContext()->setContextProperty("Login",mylogin);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
