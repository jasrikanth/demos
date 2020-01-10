#include "login.h"
#include <QSettings>
#include <QDebug>

Login::Login(QObject *parent) : QObject(parent)
{

}
void Login::dologin(QString username,QString password)
{
    QSettings settings(QString("C:/Users/Bhumi/Documents/class23/database.ini"), QSettings::IniFormat);
    settings.beginGroup(username);
    if(username == settings.value("name").toString() && password ==  settings.value("password").toString())
    {
        emit loginsucess();
    }
    else {
        emit loginfail();
    }
    settings.endGroup();
}
void Login::createaccount(QString name,QString password,QString email)
{
    QSettings settings(QString("C:/Users/Bhumi/Documents/class23/database.ini"), QSettings::IniFormat);
    settings.beginGroup(name);
    settings.setValue("name",name);
    settings.setValue("password",password);

    settings.setValue("email",email);
    settings.endGroup();



}

void Login::forgotpassword(QString email)
{

}
