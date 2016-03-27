//
//  LeftPad-String.swift
//  LeftPad
//
//  Created by Andrew McKnight on 3/27/16.
//  Copyright © 2016 Two Ring Software. All rights reserved.
//

import Foundation
import Truncate

let defaultPaddingString = " "

// abridged signatures that call through with defaults
public extension String {

    public func leftPad(toWidth width: Int) -> String {
        return leftPad(toWidth: width, withString: defaultPaddingString)
    }
	
}

public extension String {

    public func leftPad(toWidth width: Int, withString string: String?) -> String {
        let paddingString = string ?? defaultPaddingString

        if self.characters.count >= width {
            return self
        }

        let remainingLength: Int = width - self.characters.count
        var padString = String()
        for _ in 0 ..< remainingLength {
            padString += paddingString
        }

        return [padString, self].joinWithSeparator("")
    }

}