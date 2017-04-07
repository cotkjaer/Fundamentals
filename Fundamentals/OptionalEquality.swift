//
//  OptionalEquality.swift
//  Fundamentals
//
//  Created by Christian Otkjær on 07/04/17.
//  Copyright © 2017 Silverback IT. All rights reserved.
//

import Foundation

public protocol OptionalEquatable: Equatable
{
    func equals(_ thing: Any?) -> Bool
}

// MARK: - Defaults

extension OptionalEquatable
{
    public func equals(_ thing: Any?) -> Bool
    {
        guard let other = thing as? Self else { return false }
        
        return self == other
    }
}

// MARK: - Standard

extension Int: OptionalEquatable {}
extension Float: OptionalEquatable {}
extension Double: OptionalEquatable {}

extension String: OptionalEquatable {}
extension Character: OptionalEquatable {}

/** compares two optional Equatables and returns true if they are equal or one or both are nil
*/
infix operator =?= : ComparisonPrecedence

/** compares two optional Equatables and returns true if they are equal or one or both are nil
 - parameter lhs: optional left hand side
 - parameter rhs: optional right hand side
 */
public func =?= <T:Equatable> (lhs: T?, rhs: T?) -> Bool
{
    if lhs == nil { return true }
    if rhs == nil { return true }
    return lhs == rhs
}


