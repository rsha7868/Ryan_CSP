//
//  StarWars.swift
//  Ryan_CSP
//
//  Created by Sharp, Ryan on 11/20/17.
//  Copyright © 2017 Sharp, Ryan. All rights reserved.
//

import Foundation
public protocol StarWars
{
    var starState : Bool {get set}
    func star() -> Void
    func isStarWars() -> Bool
}
