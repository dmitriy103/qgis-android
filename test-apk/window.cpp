#include "window.h"
#include "ui_window.h"
#include <proj_api.h>
#include <geos_c.h>


Window::Window(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::Window)
{
    ui->setupUi(this);
}

Window::~Window()
{
    delete ui;
}

void Window::on_ch2wgs_clicked()
{
    projConvert("+proj=somerc +lat_0=46.95240555555556 +lon_0=7.439583333333333 +k_0=1 +x_0=600000 +y_0=200000 +ellps=bessel +towgs84=674.374,15.056,405.346,0,0,0,0 +units=m +no_defs", "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs");

}
void Window::on_wgs2ch_clicked()
{
    projConvert("+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs", "+proj=somerc +lat_0=46.95240555555556 +lon_0=7.439583333333333 +k_0=1 +x_0=600000 +y_0=200000 +ellps=bessel +towgs84=674.374,15.056,405.346,0,0,0,0 +units=m +no_defs");

}

void Window::on_geos_clicked()
{
     //ui->outputGeos->setText(QString::fromStdString(c.toString()));
}


void Window::projConvert(char const* in, char const* out) {
    projPJ pj_in, pj_out;
    double x=ui->inputX->text().toDouble(), y=ui->inputY->text().toDouble();

    if (!(pj_in = pj_init_plus(in)) )
       return;
    if (!(pj_out = pj_init_plus(out)) )
       return;
    x *= DEG_TO_RAD;
    y *= DEG_TO_RAD;

    pj_transform(pj_in, pj_out, 1, 1, &x, &y, NULL );
    ui->outputX->setText(QString("%1").arg(x));
    ui->outputY->setText(QString("%1").arg(y));
}
