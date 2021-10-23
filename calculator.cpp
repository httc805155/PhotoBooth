#include "calculator.h"
#include <QDebug>

Calculator::Calculator()
{

}

int Calculator::Add(int a, int b)
{
    qDebug()<<"a:"<<a;
    qDebug()<<"b:"<<b;
    qDebug()<<"Result:"<<a+b;
    return a + b;
}
