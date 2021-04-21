#ifndef ABSTRACTAD_H
#define ABSTRACTAD_H

#include <QString>

class AbstractAd
{

public:
    explicit AbstractAd();

    QString getType() const;
    void setType(QString type);


    QString getName() const;
    void setName(const QString &value);

private:
    QString type;
    QString name;
};

#endif // ABSTRACTAD_H
