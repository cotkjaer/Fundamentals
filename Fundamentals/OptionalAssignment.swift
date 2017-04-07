//
//  OptionalAssignment.swift
//  Fundamentals
//
//  Created by Christian Otkjær on 07/04/17.
//  Copyright © 2017 Silverback IT. All rights reserved.
//

/** Assign only if the new value differs from the existing value
 */
infix operator ?= : AssignmentPrecedence

/** Assign only if the new value differs from the existing value
 - parameter lhs: the variable to potentially be updated
 - parameter rhs: the new value
 */
@discardableResult
public func ?= <T:Equatable> (lhs: inout T, rhs: T) -> Bool
{
    guard lhs != rhs else { return false }
    
    lhs = rhs
    
    return true
}

/** Assign only if the new value differs from the existing value
 - parameter lhs: the variable to potentially be updated
 - parameter rhs: the new value
 */
@discardableResult
public func ?= <T:AnyObject> (lhs: inout T, rhs: T) -> Bool
{
    guard lhs !== rhs else { return false }
    
    lhs = rhs
    
    return true
}


public func ?= <T:Equatable> (lhs: inout T?, rhs: T?)
{
    if !(lhs =?= rhs) { lhs = rhs }
}
