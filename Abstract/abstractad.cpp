#include "abstractad.h"

AbstractAd::AbstractAd()
{

}

QString AbstractAd::getType() const
{
    return type;
}

void AbstractAd::setType(QString type)
{
    this->type = type;
}

QString AbstractAd::getName() const
{
    return name;
}

void AbstractAd::setName(const QString &value)
{
    name = value;
}
