//
//  Lion.swift
//  LionsAndTigers
//
//  Created by Roy Montoya on 2/10/16.
//  Copyright © 2016 Roy Montoya. All rights reserved.
//

import Foundation
import UIKit

class Lion{
    var age = 0
    var isAlphaMale = false
    var image = UIImage(named: "")
    var name = ""
    var subspecies = ""
    
    func roar(){
        print("Lion: Roar Roar")
    }
    
    func changeToAlphaMale(){
        self.isAlphaMale = true
    }
    
    func randomFact() -> String {
        var randomFact: String
        
        if self.isAlphaMale {
            randomFact = "Male lions are easy to recognize, thanks to their manes. Males with dark manes are more likely to attract females."
        }else{
            randomFact = "Female lionesses form the stable social unit, and do not tolerate outside females."
        }
        return randomFact
    }
}