#ifndef ADVERTISMENTMODEL_H
#define ADVERTISMENTMODEL_H

#include <QAbstractListModel>

class  AdvertismentData;

class AdvertismentModel : public QAbstractListModel
{
    Q_OBJECT
    Q_PROPERTY(AdvertismentData *list READ list WRITE setList)

public:
    explicit AdvertismentModel(QObject *parent = nullptr);

    enum{
        AdType = Qt::UserRole,
        AdName
    };

    // Basic functionality:
    int rowCount(const QModelIndex &parent = QModelIndex()) const override;

    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;

    // Editable:
    bool setData(const QModelIndex &index, const QVariant &value,
                 int role = Qt::EditRole) override;

    Qt::ItemFlags flags(const QModelIndex& index) const override;

    virtual QHash<int , QByteArray> roleNames() const override;


    AdvertismentData *list() const;
    void setList(AdvertismentData *list);

private:
    AdvertismentData *mList;
};

#endif // ADVERTISMENTMODEL_H
