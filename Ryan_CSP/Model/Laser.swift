//
//  DeathStar.swift
//  Ryan_CSP
//
//  Created by Sharp, Ryan on 11/20/17.
//  Copyright © 2017 Sharp, Ryan. All rights reserved.
//

import UIKit
public class Laser: Destroyable
{
    public var destroyState: Bool
    
    public init()
    {
        self.destroyState = true
    }
    
    public func Destroy() -> Bool
    {
        print("I was destroyed")
        destroyState = true
    }
    
    public func wasDestroyed() -> Bool
    {
        if(destroyState)
        {
            print ("Destroyed")
        }
        else
        {
            print ("Not Destroyed")
        }
        return destroyState
        
    }
}
