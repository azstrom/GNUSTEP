/********************************************************************************
** Form generated from reading UI file 'setdialog.ui'
**
** Created by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_SETDIALOG_H
#define UI_SETDIALOG_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QComboBox>
#include <QtGui/QDialog>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QLineEdit>
#include <QtGui/QPushButton>

QT_BEGIN_NAMESPACE

class Ui_SetDialog
{
public:
    QLabel *label;
    QComboBox *cmbGroup;
    QLabel *label_2;
    QLineEdit *txtPort;
    QPushButton *btnStart;

    void setupUi(QDialog *SetDialog)
    {
        if (SetDialog->objectName().isEmpty())
            SetDialog->setObjectName(QString::fromUtf8("SetDialog"));
        SetDialog->resize(236, 176);
        label = new QLabel(SetDialog);
        label->setObjectName(QString::fromUtf8("label"));
        label->setGeometry(QRect(30, 30, 91, 17));
        cmbGroup = new QComboBox(SetDialog);
        cmbGroup->setObjectName(QString::fromUtf8("cmbGroup"));
        cmbGroup->setGeometry(QRect(130, 30, 85, 27));
        label_2 = new QLabel(SetDialog);
        label_2->setObjectName(QString::fromUtf8("label_2"));
        label_2->setGeometry(QRect(30, 90, 91, 17));
        txtPort = new QLineEdit(SetDialog);
        txtPort->setObjectName(QString::fromUtf8("txtPort"));
        txtPort->setGeometry(QRect(130, 90, 91, 27));
        btnStart = new QPushButton(SetDialog);
        btnStart->setObjectName(QString::fromUtf8("btnStart"));
        btnStart->setGeometry(QRect(70, 130, 81, 27));
        btnStart->setDefault(true);

        retranslateUi(SetDialog);

        QMetaObject::connectSlotsByName(SetDialog);
    } // setupUi

    void retranslateUi(QDialog *SetDialog)
    {
        SetDialog->setWindowTitle(QApplication::translate("SetDialog", "Dialog", 0, QApplication::UnicodeUTF8));
        label->setText(QApplication::translate("SetDialog", "\351\200\211\346\213\251\344\274\232\350\256\256\345\256\244\357\274\232", 0, QApplication::UnicodeUTF8));
        cmbGroup->clear();
        cmbGroup->insertItems(0, QStringList()
         << QApplication::translate("SetDialog", "1", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("SetDialog", "2", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("SetDialog", "3", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("SetDialog", "4", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("SetDialog", "5", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("SetDialog", "6", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("SetDialog", "7", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("SetDialog", "8", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("SetDialog", "9", 0, QApplication::UnicodeUTF8)
        );
        label_2->setText(QApplication::translate("SetDialog", "\346\216\245\346\224\266\347\253\257\345\217\243\345\217\267\357\274\232", 0, QApplication::UnicodeUTF8));
        txtPort->setText(QApplication::translate("SetDialog", "8001", 0, QApplication::UnicodeUTF8));
        btnStart->setText(QApplication::translate("SetDialog", "\347\241\256\345\256\232", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class SetDialog: public Ui_SetDialog {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_SETDIALOG_H
