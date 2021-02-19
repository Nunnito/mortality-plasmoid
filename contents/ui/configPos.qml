import QtQuick 2.0
import QtQuick.Controls 2.5
import org.kde.kirigami 2.4 as Kirigami
import org.kde.plasma.plasmoid 2.0
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.kquickcontrols 2.0 as KQControls

Kirigami.FormLayout {
    id: page
    property var cdate: new Date()
  
    property alias cfg_xPos: xPos.value
    property alias cfg_yPos: yPos.value
    property alias cfg_decimalXPos: decimalXPos.value
    property alias cfg_decimalYPos: decimalYPos.value

    SpinBox {
        id: xPos
        Kirigami.FormData.label: "X Position"
        from: -999
        to: 999
    }
    SpinBox {
        id: yPos
        Kirigami.FormData.label: "Y Position"
        from: -999
        to: 999
    }
    SpinBox {
        id: decimalXPos
        Kirigami.FormData.label: "Decimal X Position"
        from: -999
        to: 999
    }
    SpinBox {
        id: decimalYPos
        Kirigami.FormData.label: "Decimal Y Position"
        from: -999
        to: 999
    }
}
