/*
 * Copyright (c) 2011-2015 BlackBerry Limited.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import bb.cascades 1.4

Page {
    Container {
        id: root
        background: Color.create("#25282A")
        layout: StackLayout {
            orientation: LayoutOrientation.TopToBottom

        }
        Container {
            id:imageContainer
            leftPadding: 10.0
            rightPadding: 10.0
            bottomPadding: 10.0
            topPadding: 10.0
            horizontalAlignment: HorizontalAlignment.Center
            layout: DockLayout {

            }
            ImageView {
                id:night
                imageSource: "asset:///images/night.jpg"
                horizontalAlignment: HorizontalAlignment.Center
            
            }
            ImageView {
                id:day
                imageSource: "asset:///images/day.jpg"
                horizontalAlignment: HorizontalAlignment.Center

            }


        }
        
        Container {
            id:controlContainer
            verticalAlignment: VerticalAlignment.Top
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight

            }
            leftPadding: 10.0
            rightPadding: 10.0
            ImageView {
                imageSource: "asset:///images/moon.png"
                verticalAlignment: VerticalAlignment.Center

            }

            Slider {
                layoutProperties: StackLayoutProperties {
                    spaceQuota: 1.0

                }
                onValueChanged: {
                    day.opacity = value
                }

            }
            ImageView {
                imageSource: "asset:///images/sun.png"
                verticalAlignment: VerticalAlignment.Center
                horizontalAlignment: HorizontalAlignment.Left

            }

        }

    }
}
