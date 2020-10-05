// swift-tools-version:5.3
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
        .package(name: "leftpad", url: "https://github.com/armcknight/truncate.swift.git", .exact("1.0.0"))
    ]
)
