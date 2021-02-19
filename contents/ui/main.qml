import QtQuick 2.15
import QtQuick.Controls 2.15
import org.kde.plasma.plasmoid 2.0
import org.kde.plasma.core 2.0 as PlasmaCore

Item {
    Plasmoid.backgroundHints: PlasmaCore.Types.NoBackground

    property int birth_year: plasmoid.configuration["year"]
    property int birth_month: plasmoid.configuration["month"]
    property int birth_day: plasmoid.configuration["day"]

    property int current_year
    property int current_month
    property int current_day

    property int current_hour
    property int current_minute
    property int current_second
    property int current_millisecond

    property real days_year
    property real days_month
    property real days_day

    property real hours_days
    property real minutes_days
    property real seconds_day
    property real milliseconds_day

    property real total_days
    property string age

    Row {
        anchors.verticalCenter: parent.verticalCenter

        Label {
            text: age.substr(0, 2)
            color: plasmoid.configuration["fontColor"]
            font.pointSize: plasmoid.configuration["fontSize"]
            font.bold: plasmoid.configuration["bold"]
            font.family: plasmoid.configuration["fontFamily"]
            x: plasmoid.configuration["xPos"]
            y: plasmoid.configuration["yPos"]

        }
        Label {
            text: age.substr(2, 10)
            color: plasmoid.configuration["decimalFontColor"]
            font.pointSize: plasmoid.configuration["decimalFontSize"]
            font.bold: plasmoid.configuration["bold"]
            x: plasmoid.configuration["decimalXPos"]
            y: plasmoid.configuration["decimalYPos"]
        }
    }

    Timer {
        interval: 100
        repeat: true
        running: true
        triggeredOnStart: true

        onTriggered: {
            getCurrentDate()
        }
    }

    function getCurrentDate() {
        var cdate = new Date()

        current_year = cdate.getFullYear()
        current_month = cdate.getMonth() + 1
        current_day = cdate.getDate()

        current_hour = cdate.getHours()
        current_minute = cdate.getMinutes()
        current_second = cdate.getSeconds()
        current_millisecond = cdate.getMilliseconds()

        days_year = (current_year - birth_year) * 365.24
        days_month = (current_month - birth_month) * 30.436875
        days_day = current_day - birth_day

        hours_days = current_hour / 24
        minutes_days = current_minute / 60 / 24
        seconds_day = current_second / 60 / 60 / 24
        milliseconds_day = current_millisecond / 1000 / 60 / 60 / 24

        total_days = days_year + days_month + days_day + hours_days + minutes_days + seconds_day + milliseconds_day
        age = total_days / 365.24
    }
}
