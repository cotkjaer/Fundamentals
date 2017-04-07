//
//  OptionalEqualityTests.swift
//  Fundamentals
//
//  Created by Christian Otkjær on 07/04/17.
//  Copyright © 2017 Silverback IT. All rights reserved.
//

import XCTest

@testable import Fundamentals

class OptionalEqualityTests: XCTestCase
{
    func test_optional_equality()
    {
        var a: Int? = nil
        var b: Int? = nil
        
        XCTAssertTrue(a =?= b)
        XCTAssertNil(a?.equals(b))
        XCTAssertNil(b?.equals(a))
        
        a = 1

        XCTAssertTrue(a =?= b)
        XCTAssertEqual(a?.equals(b), false)
        XCTAssertNil(b?.equals(a))
        
        b = 1
        
        XCTAssertTrue(a =?= b)
        XCTAssertEqual(a?.equals(b), true)
        XCTAssertEqual(b?.equals(a), true)
        
        a = 2

        XCTAssertFalse(a =?= b)
        XCTAssertEqual(a?.equals(b), false)
    }
}
