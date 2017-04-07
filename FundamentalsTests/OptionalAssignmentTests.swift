//
//  OptionalAssignmentTests.swift
//  Fundamentals
//
//  Created by Christian Otkjær on 07/04/17.
//  Copyright © 2017 Silverback IT. All rights reserved.
//

import XCTest

@testable import Fundamentals

class OptionalAssignmentTests: XCTestCase
{
    func test_assignment()
    {
        var a = "a"
        
        XCTAssertTrue(a ?= "b")
        XCTAssertEqual(a, "b")
        
        XCTAssertFalse(a ?= "b")
        XCTAssertEqual(a, "b")
        
        XCTAssertTrue(a ?= "a")
        XCTAssertEqual(a, "a")
    }
}
