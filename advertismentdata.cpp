#include "advertismentdata.h"

AdvertismentData::AdvertismentData(QObject *parent) : QObject(parent)
{
    AbstractAd one , two , three ,four ,five;
    one.setName("1");two.setName("2");three.setName("3");four.setName("4");five.setName("5");
    one.setType("type");two.setType("type");three.setType("type");four.setType("type");five.setType("type");
    adList.append(one);
    adList.append(two);
    adList.append(three);
    adList.append(four);
    adList.append(five);
}

QList<AbstractAd> AdvertismentData::items() const
{
   return adList;
}
