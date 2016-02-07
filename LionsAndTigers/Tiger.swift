//
//  Tiger.swift
//  LionsAndTigers
//
//  Created by Roy Montoya on 1/25/16.
//  Copyright © 2016 Roy Montoya. All rights reserved.
//

import Foundation
import UIKit


struct Tiger{
    var age = 0
    var name = ""
    var breed = ""
    var image = UIImage(named:"")
    
    func chuff(){
        print("Tiger: chuff chuff")
    }
    
    func chuffNumberOfTimes(numberOfTimes: Int){
        for var chuff = 0; chuff < numberOfTimes; ++chuff {
            self.chuff()
        }
    }
    
    func chuffNumberofTimes(numberOfTimes: Int, isLoud: Bool){
        for var chuff = 1 ; chuff <= numberOfTimes; chuff++ {
            if isLoud {
                self.chuff()
            }else{
                 print("Tiger: purr purr")
            }
        }
    }
    
    
    func ageInTigerYearsFromAge(regularAge: Int) ->Int{
        let newAge = regularAge * 3
        return newAge
    }
    
    func randomFact() -> String{
        let randomNumber = Int(arc4random_uniform(UInt32(3)))
        
        var randomFact: String
        if randomNumber == 0 {
            randomFact = "The Tyger is the biggest species in the car family"
        }else if randomNumber == 1 {
            randomFact = "Tigers can reach a length of 3.3 mts"
        }else{
            randomFact = "A group of tigers is an 'ambush' or 'streak'"
        }
        
        return randomFact
    }
    
}