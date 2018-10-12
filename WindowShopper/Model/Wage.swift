//
//  Wage.swift
//  WindowShopper
//
//  Created by Horvath, Mate on 2018. 10. 12..
//  Copyright © 2018. Finastra. All rights reserved.
//

import Foundation


class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
