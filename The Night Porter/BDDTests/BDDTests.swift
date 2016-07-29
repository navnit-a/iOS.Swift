//
//
//  Created by XCFit Framework
//  Copyright © 2016 XCFit Framework. All rights reserved.
//

import Foundation
class CucumberishInitializer: NSObject {
    class func CucumberishSwiftInit()
    {
        var application : XCUIApplication!
        //A closure that will be executed just before executing any of your features
        beforeStart { () -> Void in
            application = XCUIApplication()
        }
        //A Given step definition
        Given("the app is running") { (args, userInfo) -> Void in
            application.launch()
        }
        //Another step definition
        And("all data cleared") { (args, userInfo) -> Void in
            //Assume you defined an "I tap on \"(.*)\" button" step previousely, you can call it from your code as well.
            SStep("I tap the \"Clear All Data\" button")
        }
        //Tell Cucumberish the name of your features folder and let it execute them for you...
        Cucumberish.executeFeaturesInDirectory("ExampleFeatures", featureTags: nil)
    }
}