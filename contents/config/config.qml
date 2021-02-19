import QtQuick 2.0
import org.kde.plasma.configuration 2.0

ConfigModel {
    ConfigCategory {
        name: "Appearance"
        icon: "preferences-desktop-colors"
        source: "configAppearance.qml"
    }
    ConfigCategory {
        name: "Birthdate"
        icon: "preferences-system-time"
        source: "configBirthdate.qml"
    }
    ConfigCategory {
        name: "Positions"
        icon: "configure"
        source: "configPos.qml"
    }
}
