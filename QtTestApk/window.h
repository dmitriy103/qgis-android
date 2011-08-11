#ifndef WINDOW_H
#define WINDOW_H

#include <QMainWindow>

namespace Ui {
    class Window;
}

class Window : public QMainWindow
{
    Q_OBJECT

public:
    explicit Window(QWidget *parent = 0);
    ~Window();

private slots:
    void on_wgs2ch_clicked();
    void on_ch2wgs_clicked();
    void on_geos_clicked();

private:
    Ui::Window *ui;
    void projConvert(char const* in, char const* out);
};

#endif // WINDOW_H
