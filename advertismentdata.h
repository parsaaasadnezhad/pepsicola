#ifndef ADVERTISMENTDATA_H
#define ADVERTISMENTDATA_H

#include <QObject>

#include "Abstract/abstractad.h"

class AdvertismentData : public QObject
{
    Q_OBJECT
public:
    AdvertismentData(QObject *parent = nullptr);

    QList<AbstractAd> items() const;

private:
    QList<AbstractAd> adList;
};

#endif // ADVERTISMENTDATA_H
