import QtQuick 2.0
import QtQuick.Controls 2.5
import org.kde.kirigami 2.4 as Kirigami
import org.kde.plasma.plasmoid 2.0
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.kquickcontrols 2.0 as KQControls

Kirigami.FormLayout {
    id: page
    property var cdate: new Date()
  
    property alias cfg_year: year.value
    property alias cfg_month: month.value
    property alias cfg_day: day.value

    SpinBox {
        id: year
        Kirigami.FormData.label: "Year: "
        from: 1
        to: cdate.getFullYear()
    }
    SpinBox {
        id: month
        Kirigami.FormData.label: "Month: "
        from: 1
        to: 12
    }
    SpinBox {
        id: day
        Kirigami.FormData.label: "Day: "
        from: 1
        to: 31
    }
}
