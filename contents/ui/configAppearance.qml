import QtQuick 2.0
import QtQuick.Controls 2.5
import org.kde.kirigami 2.4 as Kirigami
import org.kde.plasma.plasmoid 2.0
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.kquickcontrols 2.0 as KQControls

Kirigami.FormLayout {
    id: page
  
    property alias cfg_bold: bold.checked
    property alias cfg_fontSize: fontSize.value
    property alias cfg_decimalFontSize: decimalFontSize.value
    property alias cfg_fontColor: fontColor.color
    property alias cfg_decimalFontColor: decimalFontColor.color
    property alias cfg_fontFamily: fontFamily.currentText

    ComboBox {
        id: fontFamily

        Kirigami.FormData.label: "Font family: "
        model: Qt.fontFamilies()
        Component.onCompleted: {
            var index = find(plasmoid.configuration["fontFamily"])
            if (index >= 0) {
			    currentIndex = index
		    }
        }
    }

    SpinBox {
        id: fontSize
        Kirigami.FormData.label: "Font size: "
    }

    SpinBox {
        id: decimalFontSize
        Kirigami.FormData.label: "Decimal font size: "
    }

    KQControls.ColorButton {
        id: fontColor
        Kirigami.FormData.label: "Font color: "
        showAlphaChannel: true
    }

    KQControls.ColorButton {
        id: decimalFontColor
        Kirigami.FormData.label: "Decimal font color: "
        showAlphaChannel: true
    }

    CheckBox {
        id: bold
        Kirigami.FormData.label: "Bold: "
    }
}
