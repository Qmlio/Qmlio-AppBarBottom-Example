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
import QtQuick.Window 2.11
import Qmlio.Controls 1.0
import QtQuick.Controls.Material 2.2
import "controls"

Window {
    visible: true

    // For a mobile feel
    width: 380
    height: 620

    title: qsTr("Qmlio Example")
    property color primaryColor: "#263238"
    property color secondaryColor: "#5c6970"

    // main content section
    MainContent {
    }

    // AppBarBottom
    AppBarBottom {
        id: bottomAppBar
        padding: dp(16)
        color: "#fff"
        leftItem: BarButton {
            text: MaterialIcons.mdiMenu
            Material.foreground: primaryColor
        }
        rightRowItem: Row {
            padding: 0
            spacing: dp(8)
            anchors.right: parent.right
            BarButton {
                text: MaterialIcons.mdiMagnify
                Material.foreground: primaryColor
            }
            BarButton {
                text: MaterialIcons.mdiDotsVertical
                Material.foreground: primaryColor
            }
        }
    }
    Fab {
        width: height
        height: dp(56)
        color: primaryColor
        z: 5
        radius: width / 2
        icon: MaterialIcons.mdiPlus
        iconSize: sp(32)
        iconColor: "#fff"
        iconFamily: Defaults.iconsFont
        y: parent.height - (height + bottomAppBar.height / 2)
        x: parent.width / 2 - width / 1.95
    }

    // NOTE FOR ANDROID DEVELOPERS
    // Please define these two functions.
    function dp(value) {
        // FIX ME
        return value
    }
    function sp(value) {
        // FIX ME
        return value
    }
}
