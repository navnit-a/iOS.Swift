//
//
//  Created by XCFit Framework
//  Copyright © 2016 XCFit Framework. All rights reserved.
//

import Foundation
class CucumberishInitializer: NSObject {
    class func CucumberishSwiftInit()
    {
        var app : XCUIApplication!
        //A closure that will be executed just before executing any of your features
        beforeStart { () -> Void in
            app = XCUIApplication()
        }
        //A Given step definition
        Given("the app is running") { (args, userInfo) -> Void in
            app.launch()
            //let app = XCUIApplication()
            let funkyButton = app.buttons["Funky"]
            funkyButton.tap()
            
            let darkModeButton = app.buttons["Dark Mode"]
            darkModeButton.tap()
            
            let lightModeButton = app.buttons["Light Mode"]
            lightModeButton.tap()
            funkyButton.tap()
            lightModeButton.tap()
            darkModeButton.tap()
            funkyButton.tap()
            lightModeButton.tap()
            darkModeButton.tap()
            funkyButton.tap()
            lightModeButton.tap()
            darkModeButton.tap()
            
            let changeButton = app.buttons["Change"]
            changeButton.tap()
            changeButton.tap()
        }
        //Another step definition
        And("all data cleared") { (args, userInfo) -> Void in
            //Assume you defined an "I tap on \"(.*)\" button" step previousely, you can call it from your code as well.
            SStep("I tap the \"Clear All Data\" button")
        }
        //Tell Cucumberish the name of your features folder and let it execute them for you...
        Cucumberish.executeFeaturesInDirectory("Features", featureTags: nil)
    }
}