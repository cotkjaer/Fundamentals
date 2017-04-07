//
//  OptionalComparable.swift
//  Fundamentals
//
//  Created by Christian Otkjær on 07/04/17.
//  Copyright © 2017 Silverback IT. All rights reserved.
//

import Foundation

public protocol OptionalComparable: Comparable
{
    func isLessThan(_ thing: Any?) -> Bool
}

// MARK: - Defaults

extension OptionalComparable
{
    public func isLessThan(_ thing: Any?) -> Bool
    {
        guard let other = thing as? Self else { return false }
        
        return self < other
    }
}

// MARK: - Standard

extension Int: OptionalComparable {}
extension Float: OptionalComparable {}
extension Double: OptionalComparable {}

extension String: OptionalComparable {}
extension Character: OptionalComparable {}

/** compares two optional comparables and returns true if lhs is less than rhs, nil is less than anything
 - parameter lhs: optional left hand side
 - parameter rhs: optional right hand side
 */
public func < <T:Comparable> (lhs: T?, rhs: T?) -> Bool
{
    guard let lhs = lhs else { return rhs != nil }
    
    guard let rhs = rhs else { return false }
    
    return lhs < rhs
}
