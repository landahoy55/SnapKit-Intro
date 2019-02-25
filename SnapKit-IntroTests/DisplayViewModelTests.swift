//
//  DisplayViewModelTests.swift
//  SnapKit-IntroTests
//
//  Created by P Malone on 25/02/2019.
//  Copyright © 2019 landahoy55. All rights reserved.
//

import XCTest
@testable import SnapKit_Intro

class DisplayViewModelTests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        //Should really work out how to view the window here...
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testInputViewModel() {
        
        let inputViewModel = InputViewModel()
        inputViewModel.inputAnswer.value = 3
        XCTAssertEqual(inputViewModel.stringTotal.value, "3")
        
        inputViewModel.inputAnswer.value = 4
        XCTAssertEqual(inputViewModel.stringTotal.value, "34")
        
    }
    
    //This class isn't actually being used right now lol.
    
    func testDisplayViewModel() {
        
//        let displayViewModel = DisplayViewModel()
//
//        displayViewModel.display.value = 3
//        XCTAssertEqual(displayViewModel.displayString.value, "3")
        
    }
    
    
}

