//
//  Wage.swift
//  WindowShopper
//
//  Created by Rares Man on 01.09.2020.
//  Copyright © 2020 Rares Man. All rights reserved.
//

import Foundation

class Wage{
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int{
        return Int(ceil(price / wage))
    }
}
