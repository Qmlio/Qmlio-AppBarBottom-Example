
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
import QtQuick 2.9
import QtQuick.Controls 2.2
import Qmlio.Controls 1.0

Item {
    property alias title: mtitle
    width: parent.width
    height: column.height
    Column {
        id: column
        width: parent.width
        spacing: 0
        bottomPadding: dp(16)
        leftPadding: rightPadding
        rightPadding: dp(16)
        Rectangle {
            width: parent.width - dp(32)
            height: dp(56)
            Text {
                id: mtitle
                font.family: Defaults.robotoMedium
                text: "Inbox"
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: sp(24)
                font.letterSpacing: sp(0.15)
                color: primaryColor
            }
        }
        Rectangle {
            width: parent.width - dp(32)
            height: dp(16)
            Text {
                font.family: Defaults.roboto
                text: "Today"
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: sp(12)
                font.letterSpacing: sp(0.4)
                color: secondaryColor
            }
        }
    }
}
