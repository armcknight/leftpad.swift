//
//  LeftPadTests.swift
//  LeftPadTests
//
//  Created by Andrew McKnight on 3/27/16.
//  Copyright © 2016 Two Ring Software. All rights reserved.
//

import XCTest
import LeftPad

class LeftPadTests: XCTestCase {

    func testLeftPadAllDefaults() {
        for (input, expectedOutput) in [
            "abc"           : "       abc",
            "abcdefghijk"   : "abcdefghijk"
            ] {
                let computedOutput = input.leftPad(toWidth: 10)
                XCTAssert(computedOutput == expectedOutput, "expected \(expectedOutput) but got \(computedOutput)")
        }
    }

    func testLeftPadAlternatePadString() {
        for (input, expectedOutput) in [
            "abc"           : "%%%%%%%abc",
            "abcdefghijk"   : "abcdefghijk"
            ] {
                let computedOutput = input.leftPad(toWidth: 10, withString: "%")
                XCTAssert(computedOutput == expectedOutput, "expected \(expectedOutput) but got \(computedOutput)")
        }
    }
    
}
