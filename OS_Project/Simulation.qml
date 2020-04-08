    import QtQuick 2.11
import QtQuick.Window 2.11
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {
    id: process
    anchors.centerIn: parent
    property var scheduledId: []
    property var ganttChart: []
    property var waitingTime: []

    Timer{
        id: drawTimer
        repeat: true
        interval: 1000
        property int it: 0
        running: true
        onTriggered: {
<<<<<<< HEAD
        processRepeater.itemAt(it).visible = true
        processRepeater.itemAt(it).state = "faded"
=======
        processRepeater.itemAt(it).visible = true;
        processRepeater.itemAt(it).state = "red"
>>>>>>> 3186afb204c9d9ef90c40c553db6851cc7f64515
        it++;
        it == scheduledId.length ? drawTimer.running = false: drawTimer.running = true ;
        }


    }

    Row{
        id: rowId
        anchors.centerIn: parent
        antialiasing: true

        Repeater{
            id: processRepeater
            model: process.scheduledId


            Rectangle{
                id: processRect
<<<<<<< HEAD
                width: index != 0 ? (ganttChart[index] - ganttChart[index-1])*process.width*0.08 :
                                    (ganttChart[index+1]- ganttChart[index]) *process.width*0.08
=======
                width: 100
>>>>>>> 3186afb204c9d9ef90c40c553db6851cc7f64515
                height: 70
                color: "steelblue"
                border.color: "white"
                radius: 10
                antialiasing: true
                visible: false
<<<<<<< HEAD

                states:
                    State {
                    name: "faded"
=======
                states: State {
                    name: "red"
>>>>>>> 3186afb204c9d9ef90c40c553db6851cc7f64515
                    PropertyChanges {
                        target: processRect
                        color: "red"
                    }
                }
                transitions: Transition {
<<<<<<< HEAD
                    ParallelAnimation{
                    ColorAnimation {
                        duration: drawTimer.interval*0.5
                        }
                    ScaleAnimator{
                        duration: drawTimer.interval*0.5
                    }
                    }
                }


                Text {
                    id: zeros
                    text: "0"
                    antialiasing: true
                    color: "black"
                    font.pixelSize: 16

                    visible: index == 0 ? true : false
                    font.family: "Helvetica"
                    font.bold: true
                    anchors.top: processRect.bottom
                    anchors.left: processRect.left
                }

=======
                    ColorAnimation {
                        duration: 1000
                    }
                }
>>>>>>> 3186afb204c9d9ef90c40c553db6851cc7f64515

                Text {
                    id: textIdLable
                    text: scheduledId[index]
                    antialiasing: true
                    color: "yellow"
                    font.pixelSize: process.width*0.015
                    font.bold: true
                    anchors.centerIn: parent
                }

                Text{
                    id: textIdBurstTime

                    text: ganttChart[index]
                    antialiasing: true
                    color: "black"
                    font.pixelSize: 16
                    font.family: "Helvetica"
                    font.bold: true
                    anchors.top: processRect.bottom
                    anchors.left: processRect.right
                }



            }


            }

        }

//    Row{

//    anchors.centerIn: parent.Center
//    anchors.topMargin: 50
//    anchors.top: rowId.bottom

//        Text {
//            id: avgWaitingTime
//            text: qsTr("50.7")
//            antialiasing: true
//            color: "black"
//            font.pixelSize: 16
//            font.family: "Helvetica"
//            font.bold: true
//        }

//    }



}


