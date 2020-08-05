
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
import "headers"
import "delegates"

ListView {
    id: listView
    width: parent.width
    height: parent.height
    model: ListModel {
        ListElement {

            title: "Qt World Summit 2020"
            details: "Do you have any idea where it will be held?"
            to: "Sandra, Scott, Jane"
            image: "../images/a (1).jpg"
        }

        ListElement {
            title: "Qmlio conference"
            details: "Will you attend the conference?"
            to: "James, Geoffrey"
            image: "../images/a (2).jpg"
        }
        ListElement {
            title: "No!"
            details: "Is the project ready?"
            to: "Sandra Adams"
            image: "../images/a (3).jpg"
        }
        ListElement {
            title: "New Recipe"
            details: "Try out this new rice recipe I have just invented."
            to: "James, John"
            image: "../images/a (4).jpg"
        }
        ListElement {
            title: "Happy Birthday"
            details: "Congraturations, your now 25."
            to: "Guen"
            image: "../images/a (5).jpg"
        }
        ListElement {
            title: "Publish"
            details: "Have you finished the plugin?"
            to: "Joel"
            image: "../images/a.jpg"
        }
        ListElement {
            title: "Brunch this weekend?"
            details: "I will be your new neighbour this weekend."
            to: "Joseph"
            image: "../images/a (6).jpg"
        }
        ListElement {
            title: "Summer BBQ"
            details: "I wish you the best."
            to: "Scott, Doe, Noah"
            image: "../images/a (7).jpg"
        }
    }
    boundsBehavior: Flickable.StopAtBounds
    header: MainListHeader {
    }
    delegate: MainListDelegate {
    }
}
