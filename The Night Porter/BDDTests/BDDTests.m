//
//
//  Created by XCFit Framework
//  Copyright © 2016 XCFit Framework. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <XCTest/XCTest.h>


//Replace CucumberishExampleUITests with the name of your swift test target
#import "BDDTests-Swift.h"
__attribute__((constructor))
void CucumberishInit()
{
    [CucumberishInitializer CucumberishSwiftInit];
}