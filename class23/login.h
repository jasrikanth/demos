#ifndef LOGIN_H
#define LOGIN_H

#include <QObject>

class Login : public QObject
{
    Q_OBJECT
public:
    explicit Login(QObject *parent = 0);

signals:

    void loginsucess();
    void loginfail();


public slots:

    void dologin(QString username,QString password);
    void createaccount(QString name,QString password,QString email);
    void forgotpassword(QString email);







};

#endif // LOGIN_H
