/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QComboBox>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QLineEdit>
#include <QtGui/QMainWindow>
#include <QtGui/QMenuBar>
#include <QtGui/QPushButton>
#include <QtGui/QStatusBar>
#include <QtGui/QToolBar>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralWidget;
    QPushButton *btnStart;
    QPushButton *btnStop;
    QLabel *label;
    QComboBox *cmbGroup;
    QLabel *label_2;
    QLineEdit *txtFrequency;
    QLabel *label_3;
    QLabel *label_4;
    QComboBox *cmbQuality;
    QLabel *label_5;
    QLineEdit *txtPort;
    QMenuBar *menuBar;
    QToolBar *mainToolBar;
    QStatusBar *statusBar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QString::fromUtf8("MainWindow"));
        MainWindow->resize(338, 251);
        centralWidget = new QWidget(MainWindow);
        centralWidget->setObjectName(QString::fromUtf8("centralWidget"));
        btnStart = new QPushButton(centralWidget);
        btnStart->setObjectName(QString::fromUtf8("btnStart"));
        btnStart->setGeometry(QRect(20, 160, 97, 27));
        btnStop = new QPushButton(centralWidget);
        btnStop->setObjectName(QString::fromUtf8("btnStop"));
        btnStop->setEnabled(false);
        btnStop->setGeometry(QRect(220, 160, 97, 27));
        label = new QLabel(centralWidget);
        label->setObjectName(QString::fromUtf8("label"));
        label->setGeometry(QRect(20, 10, 101, 17));
        cmbGroup = new QComboBox(centralWidget);
        cmbGroup->setObjectName(QString::fromUtf8("cmbGroup"));
        cmbGroup->setGeometry(QRect(130, 10, 41, 27));
        label_2 = new QLabel(centralWidget);
        label_2->setObjectName(QString::fromUtf8("label_2"));
        label_2->setGeometry(QRect(20, 60, 101, 17));
        txtFrequency = new QLineEdit(centralWidget);
        txtFrequency->setObjectName(QString::fromUtf8("txtFrequency"));
        txtFrequency->setGeometry(QRect(130, 60, 131, 27));
        label_3 = new QLabel(centralWidget);
        label_3->setObjectName(QString::fromUtf8("label_3"));
        label_3->setGeometry(QRect(280, 60, 41, 17));
        label_4 = new QLabel(centralWidget);
        label_4->setObjectName(QString::fromUtf8("label_4"));
        label_4->setGeometry(QRect(20, 110, 101, 17));
        cmbQuality = new QComboBox(centralWidget);
        cmbQuality->setObjectName(QString::fromUtf8("cmbQuality"));
        cmbQuality->setGeometry(QRect(130, 110, 191, 27));
        label_5 = new QLabel(centralWidget);
        label_5->setObjectName(QString::fromUtf8("label_5"));
        label_5->setGeometry(QRect(190, 10, 61, 17));
        txtPort = new QLineEdit(centralWidget);
        txtPort->setObjectName(QString::fromUtf8("txtPort"));
        txtPort->setGeometry(QRect(250, 10, 71, 27));
        MainWindow->setCentralWidget(centralWidget);
        menuBar = new QMenuBar(MainWindow);
        menuBar->setObjectName(QString::fromUtf8("menuBar"));
        menuBar->setGeometry(QRect(0, 0, 338, 25));
        MainWindow->setMenuBar(menuBar);
        mainToolBar = new QToolBar(MainWindow);
        mainToolBar->setObjectName(QString::fromUtf8("mainToolBar"));
        MainWindow->addToolBar(Qt::TopToolBarArea, mainToolBar);
        statusBar = new QStatusBar(MainWindow);
        statusBar->setObjectName(QString::fromUtf8("statusBar"));
        MainWindow->setStatusBar(statusBar);

        retranslateUi(MainWindow);

        cmbQuality->setCurrentIndex(2);


        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "\346\241\214\351\235\242\350\247\206\351\242\221\344\274\232\350\256\256Linux\346\234\215\345\212\241\347\253\257", 0, QApplication::UnicodeUTF8));
        btnStart->setText(QApplication::translate("MainWindow", "\345\274\200\345\247\213\344\274\232\350\256\256", 0, QApplication::UnicodeUTF8));
        btnStop->setText(QApplication::translate("MainWindow", "\347\273\223\346\235\237\344\274\232\350\256\256", 0, QApplication::UnicodeUTF8));
        label->setText(QApplication::translate("MainWindow", "\351\200\211\346\213\251\344\274\232\350\256\256\347\274\226\345\217\267\357\274\232", 0, QApplication::UnicodeUTF8));
        cmbGroup->clear();
        cmbGroup->insertItems(0, QStringList()
         << QApplication::translate("MainWindow", "1", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("MainWindow", "2", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("MainWindow", "3", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("MainWindow", "4", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("MainWindow", "5", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("MainWindow", "6", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("MainWindow", "7", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("MainWindow", "8", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("MainWindow", "9", 0, QApplication::UnicodeUTF8)
        );
        label_2->setText(QApplication::translate("MainWindow", "\350\256\276\347\275\256\346\210\252\345\233\276\351\242\221\347\216\207\357\274\232", 0, QApplication::UnicodeUTF8));
        txtFrequency->setText(QApplication::translate("MainWindow", "300", 0, QApplication::UnicodeUTF8));
        label_3->setText(QApplication::translate("MainWindow", "(\346\257\253\347\247\222)", 0, QApplication::UnicodeUTF8));
        label_4->setText(QApplication::translate("MainWindow", "\350\256\276\347\275\256\345\233\276\345\203\217\350\264\250\351\207\217\357\274\232", 0, QApplication::UnicodeUTF8));
        cmbQuality->clear();
        cmbQuality->insertItems(0, QStringList()
         << QApplication::translate("MainWindow", "\350\276\203\345\267\256", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("MainWindow", "\344\270\200\350\210\254", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("MainWindow", "\350\211\257\345\245\275", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("MainWindow", "\346\234\200\344\275\263", 0, QApplication::UnicodeUTF8)
        );
        label_5->setText(QApplication::translate("MainWindow", "\347\253\257\345\217\243\345\217\267\357\274\232", 0, QApplication::UnicodeUTF8));
        txtPort->setText(QApplication::translate("MainWindow", "8001", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
