#include "fanseat.h"
#include <QDebug>

FanSeat::FanSeat(QObject *parent) : QObject(parent)
{
    qInfo() << "hi there";
}

QString FanSeat::mode() const
{
    return m_mode;
}

double FanSeat::height() const
{
    return m_height;
}

double FanSeat::width() const
{
    return m_width;
}

int FanSeat::rotation() const
{
    return m_rotation;
}

int FanSeat::ambient() const
{
    return m_ambient;
}

int FanSeat::diffusion() const
{
    return m_diffusion;
}

int FanSeat::upperTunning() const
{
    return m_upperTunning;
}

int FanSeat::lowerTunning() const
{
    return m_lowerTunning;
}

bool FanSeat::enviromentalAdaptation() const
{
    return m_enviromentalAdaptation;
}

bool FanSeat::linearInterpolation() const
{
    return m_linearInterpolation;
}

bool FanSeat::apllySegmentation() const
{
    return m_apllySegmentation;
}

bool FanSeat::replacementMode() const
{
    return m_replacementMode;
}

void FanSeat::setMode(QString mode)
{
    if (m_mode == mode)
        return;

    m_mode = mode;
    emit modeChanged(m_mode);
}

void FanSeat::setHeight(double height)
{
    qWarning("Floating point comparison needs context sanity check");
    if (qFuzzyCompare(m_height, height))
        return;

    m_height = height;
    emit heightChanged(m_height);
}

void FanSeat::setWidth(double width)
{
    qWarning("Floating point comparison needs context sanity check");
    if (qFuzzyCompare(m_width, width))
        return;

    m_width = width;
    emit widthChanged(m_width);
}

void FanSeat::setrotation(int rotation)
{
    if (m_rotation == rotation)
        return;

    m_rotation = rotation;
    emit rotationChanged(m_rotation);
}

void FanSeat::setAmbient(int ambient)
{
    m_ambient = ambient;
}

void FanSeat::setDiffusion(int diffusion)
{
    if (m_diffusion == diffusion)
        return;

    m_diffusion = diffusion;
    emit diffusionChanged(m_diffusion);
}

void FanSeat::setUpperTunning(int upperTunning)
{
    if (m_upperTunning == upperTunning)
        return;

    m_upperTunning = upperTunning;
    emit upperTunningChanged(m_upperTunning);
}

void FanSeat::setLowerTunning(int lowerTunning)
{
    if (m_lowerTunning == lowerTunning)
        return;

    m_lowerTunning = lowerTunning;
    emit lowerTunningChanged(m_lowerTunning);
}

void FanSeat::setEnviromentalAdaptation(bool enviromentalAdaptation)
{
    if (m_enviromentalAdaptation == enviromentalAdaptation)
        return;

    m_enviromentalAdaptation = enviromentalAdaptation;
    emit enviromentalAdaptationChanged(m_enviromentalAdaptation);
}

void FanSeat::setLinearInterpolation(bool linearInterpolation)
{
    if (m_linearInterpolation == linearInterpolation)
        return;

    m_linearInterpolation = linearInterpolation;
    emit linearInterpolationChanged(m_linearInterpolation);
}

void FanSeat::setApllySegmentation(bool apllySegmentation)
{
    if (m_apllySegmentation == apllySegmentation)
        return;

    m_apllySegmentation = apllySegmentation;
    emit apllySegmentationChanged(m_apllySegmentation);
}

void FanSeat::setReplacementMode(bool replacementMode)
{
    if (m_replacementMode == replacementMode)
        return;

    m_replacementMode = replacementMode;
    emit replacementModeChanged(m_replacementMode);
}
