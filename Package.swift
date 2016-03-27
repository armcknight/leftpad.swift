//
//  Package.swift
//  LeftPad
//
//  Created by Andrew McKnight on 3/27/16.
//  Copyright © 2016 Two Ring Software. All rights reserved.
//

import PackageDescription

let package = Package(
    name:  "LeftPad",
    dependencies: [
        .Package(url: "https://github.com/armcknight/truncate.swift.git", majorVersion: 1)
    ]
)
