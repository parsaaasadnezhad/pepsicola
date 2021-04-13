#ifndef FANSEAT_H
#define FANSEAT_H

#include <QObject>

class FanSeat : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString mode READ mode WRITE setMode NOTIFY modeChanged)
    Q_PROPERTY(double height READ height WRITE setHeight NOTIFY heightChanged)
    Q_PROPERTY(double width READ width WRITE setWidth NOTIFY widthChanged)
    Q_PROPERTY(int rotation READ rotation WRITE setrotation NOTIFY rotationChanged)

    //translation

    Q_PROPERTY(int ambient READ ambient WRITE setAmbient NOTIFY ambientChanged)
    Q_PROPERTY(int diffusion READ diffusion WRITE setDiffusion NOTIFY diffusionChanged)
    Q_PROPERTY(int upperTunning READ upperTunning WRITE setUpperTunning NOTIFY upperTunningChanged)
    Q_PROPERTY(int lowerTunning READ lowerTunning WRITE setLowerTunning NOTIFY lowerTunningChanged)

    //missing shadow thresholds and shadow contrast

    Q_PROPERTY(bool enviromentalAdaptation READ enviromentalAdaptation WRITE setEnviromentalAdaptation NOTIFY enviromentalAdaptationChanged)
    Q_PROPERTY(bool linearInterpolation READ linearInterpolation WRITE setLinearInterpolation NOTIFY linearInterpolationChanged)
    Q_PROPERTY(bool apllySegmentation READ apllySegmentation WRITE setApllySegmentation NOTIFY apllySegmentationChanged)
    Q_PROPERTY(bool replacementMode READ replacementMode WRITE setReplacementMode NOTIFY replacementModeChanged)

private:
    QString m_mode;
    double  m_height;
    double  m_width;
    int           m_rotation;
    int           m_ambient;
    int           m_diffusion;
    int           m_upperTunning;
    int           m_lowerTunning;
    bool       m_enviromentalAdaptation;
    bool       m_linearInterpolation;
    bool       m_apllySegmentation;
    bool       m_replacementMode;

public:
    explicit FanSeat(QObject *parent = nullptr);
    QString mode() const;
    double height() const;
    double width() const;
    int rotation() const;
    int ambient() const;
    int diffusion() const;
    int upperTunning() const;
    int lowerTunning() const;
    bool enviromentalAdaptation() const;
    bool linearInterpolation() const;
    bool apllySegmentation() const;
    bool replacementMode() const;

public slots:
    void setMode(QString mode);
    void setHeight(double height);
    void setWidth(double width);
    void setrotation(int rotation);
    void setAmbient(int ambient);
    void setDiffusion(int diffusion);
    void setUpperTunning(int upperTunning);
    void setLowerTunning(int lowerTunning);
    void setEnviromentalAdaptation(bool enviromentalAdaptation);
    void setLinearInterpolation(bool linearInterpolation);
    void setApllySegmentation(bool apllySegmentation);
    void setReplacementMode(bool replacementMode);

signals:
    void modeChanged(QString mode);
    void heightChanged(double height);
    void widthChanged(double width);
    void rotationChanged(int rotation);
    void ambientChanged(int ambient);
    void diffusionChanged(int diffusion);
    void upperTunningChanged(int upperTunning);
    void lowerTunningChanged(int lowerTunning);
    void enviromentalAdaptationChanged(bool enviromentalAdaptation);
    void linearInterpolationChanged(bool linearInterpolation);
    void apllySegmentationChanged(bool apllySegmentation);
    void replacementModeChanged(bool replacementMode);
};

#endif // FANSEAT_H
