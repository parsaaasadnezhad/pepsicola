#include "advertismentmodel.h"
#include "advertismentdata.h"

AdvertismentModel::AdvertismentModel(QObject *parent)
    : QAbstractListModel(parent)
    , mList(nullptr)
{
}

int AdvertismentModel::rowCount(const QModelIndex &parent) const
{
    // For list models only the root node (an invalid parent) should return the list's size. For all
    // other (valid) parents, rowCount() should return 0 so that it does not become a tree model.
    if (parent.isValid() || !mList)
        return 0;

    // FIXME: Implement me!
    return mList->items().size();
}

QVariant AdvertismentModel::data(const QModelIndex &index, int role) const
{
    if (!index.isValid() || !mList)
        return QVariant();

    // FIXME: Implement me!
    const AbstractAd item = mList->items().at(index.row());
    switch (role) {
    case AdName:
        return QVariant(item.getName());
    case AdType:
        return QVariant(item.getType());
    }

    return QVariant();
}

bool AdvertismentModel::setData(const QModelIndex &index, const QVariant &value, int role)
{
    if(!mList)
        return false ;
    if (data(index, role) != value) {
        // FIXME: Implement me!
        emit dataChanged(index, index, QVector<int>() << role);
        return true;
    }
    return false;
}

Qt::ItemFlags AdvertismentModel::flags(const QModelIndex &index) const
{
    if (!index.isValid())
        return Qt::NoItemFlags;

    return Qt::ItemIsEditable; // FIXME: Implement me!
}

QHash<int, QByteArray> AdvertismentModel::roleNames() const
{
    QHash<int , QByteArray> role;
    role[AdName] = "name";
    role[AdType] = "type";
    return role;
}

AdvertismentData *AdvertismentModel::list() const
{
    return mList;
}

void AdvertismentModel::setList(AdvertismentData *list)
{
//    beginResetModel();
//    if(mList)
//        mList->disconnect(this);
    mList = list;
}
