
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
import QtQuick.Controls.Material 2.2
import "../controls"

ItemDelegate {
    id: mainItem
    width: parent.width
    height: row.height
    Divider {

        y: parent.height - height
        x: row.rightPadding + dp(40) + row.spacing
        visible: (index == listView.count - 1) ? false : true
    }
    Row {
        id: row
        width: parent.width
        padding: dp(16)
        spacing: dp(16)
        Rectangle {
            width: height
            height: dp(40)
            color: "#f5f5f5"
            radius: width / 2
            Avatar {
                width: height
                height: dp(40)
                radius: width / 2
                source: model.image
            }
        }
        Item {
            width: parent.width - ((dp(16) * 2) + parent.spacing + dp(40))
            height: column.height

            Column {
                id: column
                width: parent.width
                spacing: dp(2)
                padding: 0
                Text {
                    font.pixelSize: sp(16)
                    color: primaryColor
                    text: model.title
                    font.family: Defaults.roboto
                    font.letterSpacing: sp(0.15)
                }
                Row {
                    width: parent.width
                    spacing: dp(10)
                    Text {
                        id: userName
                        font.pixelSize: sp(14)
                        color: primaryColor
                        text: model.to
                        font.family: Defaults.roboto
                        font.letterSpacing: sp(0.25)
                    }
                    Text {
                        id: hythen
                        font.pixelSize: sp(14)
                        color: secondaryColor
                        text: "|"
                        y: dp(2)
                        rotation: 90
                    }
                    Text {
                        width: parent.width - (parent.spacing + userName.width + hythen.width + dp(
                                                   16))
                        font.pixelSize: sp(14)
                        color: secondaryColor
                        font.letterSpacing: sp(0.25)
                        maximumLineCount: 1
                        elide: Text.ElideRight
                        font.family: Defaults.roboto
                        text: model.details
                    }
                }
            }
        }
    }
}
