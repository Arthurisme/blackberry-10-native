import bb.cascades 1.4
import "js/Bmifunctions.js" as BMIFuntions
TabbedPane {
    showTabsOnActionBar: true
    Tab {
        title: "Metric"
        content: Page {
            titleBar: TitleBar {
                title: "BMI Calculator"
            }
            Container {
                id: mainContainer
                layout: DockLayout {
                }
                ImageView {
                    imageSource: "asset:///images/Running.jpg"
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Fill
                }
                Container {
                    id: contentContainer
                    layout: StackLayout {
                    }
                    topPadding: 20.0
                    leftPadding: 20.0
                    rightPadding: 20.0
                    Container {
                        id: weightContainer
                        layout: StackLayout {
                            orientation: LayoutOrientation.LeftToRight
                        }
                        Label {
                            id: weightLabel
                            text: "Weight in kg"
                            layoutProperties: StackLayoutProperties {
                                spaceQuota: 1.0
                            }
                        }
                        TextField {
                            id: weight
                            hintText: "Enter your weight"
                            opacity: 0.7
                            inputMode: TextFieldInputMode.NumbersAndPunctuation
                            layoutProperties: StackLayoutProperties {
                                spaceQuota: 2.0
                            }
                        }
                    }
                    Container {
                        id: metricContainer
                        topPadding: 10.0
                        bottomPadding: 20.0
                        layout: StackLayout {
                            orientation: LayoutOrientation.LeftToRight
                        }
                        Label {
                            text: "Height"
                            layoutProperties: StackLayoutProperties {
                                spaceQuota: 1.0
                            }
                        }
                        TextField {
                            id: metricHeight
                            opacity: 0.7
                            hintText: "meters..."
                            inputMode: TextFieldInputMode.NumbersAndPunctuation
                            layoutProperties: StackLayoutProperties {
                                spaceQuota: 2.0
                            }
                        }
                    }
                    Container {
                        id: buttonContainer
                        layout: StackLayout {
                            orientation: LayoutOrientation.LeftToRight
                        }
                        Button {
                            id: clearButton
                            text: "Clear"
                            layoutProperties: StackLayoutProperties {
                                spaceQuota: 1.0
                            }
                            onClicked: {
                                metricHeight.text = ""
                                weight.text = ""
                            }
                            opacity: 0.7
                        }
                        Button {
                            id: bmiButton
                            text: "BMI"
                            layoutProperties: StackLayoutProperties {
                                spaceQuota: 1.0
                            }
                            onClicked: {
                                bmi.text = BMIFuntions.bmiMetric(weight.text,
                                metricHeight.text);
                                bmiStatus.text = "You are " +
                                BMIFuntions.getWeightStatus(bmi.text) + "!";
                            }
                            opacity: 0.7
                        }
                    }
                    Container {
                        layout: DockLayout {
                        }
                        verticalAlignment: VerticalAlignment.Fill
                        horizontalAlignment: HorizontalAlignment.Fill
                        layoutProperties: StackLayoutProperties {
                            spaceQuota: 1.0
                        }
                        Container {
                            layout: StackLayout {
                            }
                            verticalAlignment: VerticalAlignment.Center
                            horizontalAlignment: HorizontalAlignment.Center
                            Label {
                                id: bmi
                                text: ""
                                textFit.mode: LabelTextFitMode.Default
                                verticalAlignment: VerticalAlignment.Center
                                horizontalAlignment: HorizontalAlignment.Center
                                textFit.minFontSizeValue: 63.0
                                textFit.maxFontSizeValue: 75.0
                                textStyle.textAlign: TextAlign.Center
                            }
                            Label {
                                id: bmiStatus
                                text: ""
                                horizontalAlignment: HorizontalAlignment.Center
                                textStyle.fontWeight: FontWeight.Default
                            }
                        }
                    }
                }
            }
        }
    }
    Tab {
        title: "Imperial"
        content: Page {
            titleBar: TitleBar {
                title: "BMI Calculator"
            }
            Container {
                id: mainContainer2
                layout: DockLayout {
                }
                ImageView {
                    imageSource: "asset:///images/running.jpg"
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Fill
                }
                Container {
                    id: contentContainer2
                    layout: StackLayout {
                    }
                    topPadding: 20.0
                    leftPadding: 20.0
                    rightPadding: 20.0
                    Container {
                        id: weightContainer2
                        layout: StackLayout {
                            orientation: LayoutOrientation.LeftToRight
                        }
                        Label {
                            id: weightLabel2
                            text: "Weight in lbs"
                            layoutProperties: StackLayoutProperties {
                                spaceQuota: 1.0
                            }
                        }
                        TextField {
                            id: weight2
                            hintText: "Enter your weight"
                            opacity: 0.7
                            inputMode: TextFieldInputMode.NumbersAndPunctuation
                            layoutProperties: StackLayoutProperties {
                                spaceQuota: 2.0
                            }
                        }
                    }
                    Container {
                        topPadding: 10.0
                        bottomPadding: 20.0
                        id: imperialContainer
                        layout: StackLayout {
                            orientation: LayoutOrientation.LeftToRight
                        }
                        Label {
                            text: "Height"
                            layoutProperties: StackLayoutProperties {
                                spaceQuota: 1.0
                            }
                        }
                        DropDown {
                            id: feet
                            layoutProperties: StackLayoutProperties {
                                spaceQuota: 2.0
                            }
                            opacity: 0.7
                            Option {
                                text: "4'"
                                value: 4
                            }
                            Option {
                                text: "5'"
                                value: 5
                            }
                            Option {
                                text: "6'"
                                value: 6
                            }
                            Option {
                                text: "7'"
                                value: 7
                            }
                        }
                        DropDown {
                            id: inches
                            layoutProperties: StackLayoutProperties {
                                spaceQuota: 2.0
                            }
                            opacity: 0.7
                            Option {
                                text: "1\""
                                value: 1
                            }
                            Option {
                                text: "2\""
                                value: 2
                            }
                            Option {
                                text: "3\""
                                value: 3
                            }
                            Option {
                                text: "4\""
                                value: 4
                            }
                            Option {
                                text: "5\""
                                value: 5
                            }
                            Option {
                                text: "6\""
                                value: 6
                            }
                            Option {
                                text: "7\""
                                value: 7
                            }
                            Option {
                                text: "8\""
                                value: 8
                            }
                            Option {
                                text: "9\""
                                value: 9
                            }
                            Option {
                                text: "10\""
                                value: 10
                            }
                            Option {
                                text: "11\""
                                value: 11
                            }
                        }
                    }
                    Container {
                        id: buttonContainer2
                        layout: StackLayout {
                            orientation: LayoutOrientation.LeftToRight
                        }
                        Button {
                            id: clearButton2
                            text: "Clear"
                            layoutProperties: StackLayoutProperties {
                                spaceQuota: 1.0
                            }
                            onClicked: {
                                weight2.text = ""
                            }
                            opacity: 0.7
                        }
                        Button {
                            id: bmiButton2
                            text: "BMI"
                            layoutProperties: StackLayoutProperties {
                                spaceQuota: 1.0
                            }
                            onClicked: {
                                bmi2.text = BMIFuntions.bmiImperial(weight2.text,
                                feet.selectedValue, inches.selectedValue);
                                bmiStatus2.text = "You are " +
                                BMIFuntions.getWeightStatus(bmi2.text) + "!";
                            }
                            opacity: 0.7
                        }
                    }
                    Container {
                        layout: DockLayout {
                        }
                        verticalAlignment: VerticalAlignment.Fill
                        horizontalAlignment: HorizontalAlignment.Fill
                        layoutProperties: StackLayoutProperties {
                            spaceQuota: 1.0
                        }
                        Container {
                            layout: StackLayout {
                            }
                            verticalAlignment: VerticalAlignment.Center
                            horizontalAlignment: HorizontalAlignment.Center
                            Label {
                                id: bmi2
                                text: ""
                                textFit.mode: LabelTextFitMode.Default
                                verticalAlignment: VerticalAlignment.Center
                                horizontalAlignment: HorizontalAlignment.Center
                                textFit.minFontSizeValue: 63.0
                                textFit.maxFontSizeValue: 75.0
                                textStyle.textAlign: TextAlign.Center
                            }
                            Label {
                                id: bmiStatus2
                                text: ""
                                horizontalAlignment: HorizontalAlignment.Center
                                textStyle.fontWeight: FontWeight.Default
                            }
                        }
                    }
                }
            }
        }
    }
}