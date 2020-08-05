/* Copyright (c) 2020 Qmlio
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
*/
import QtQuick 2.11
import QtGraphicalEffects 1.0
import QtQuick.Controls 2.2
import Qmlio.Controls 1.0

Item {
    id: item

    property real span: dp(12)
    property real radius: 0
    property color color: "#ffffff"
    property string icon
    property real iconSize: sp(26)
    property string iconFamily
    property color iconColor: "black"
    property alias mouseMask: mask
    property alias textIcon: icon_text

    width: implicitWidth
    height: implicitHeight

    Rectangle {
        anchors.fill: parent
        color: "transparent"
        radius: parent.radius

        // background
        Rectangle {
            id: l
            anchors.centerIn: parent
            radius: parent.radius
            width: parent.width - span
            height: parent.height - span

            layer.enabled: true
            layer.effect: DropShadow {
                source: l
                anchors.fill: l
                radius: dp(18)
                samples: radius * 2
                color: "#e0000000"
                horizontalOffset: 0
                verticalOffset: dp(3)
                spread: 0
                cached: false
                transparentBorder: true
            }
        }

        // foreground
        Rectangle {
            width: parent.width
            height: parent.height
            radius: parent.radius
            color: item.color
            smooth: true
            antialiasing: true
            Text {
                id: icon_text
                anchors.centerIn: parent
                text: icon
                font.pixelSize: iconSize
                font.family: iconFamily
                color: iconColor
            }
            MouseArea {
                id: mask
                anchors.fill: parent

                //  radius: parent.radius
            }
        }
    }
}
