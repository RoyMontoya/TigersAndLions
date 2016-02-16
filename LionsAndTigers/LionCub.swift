//
//  LionCub.swift
//  LionsAndTigers
//
//  Created by Roy Montoya on 2/15/16.
//  Copyright © 2016 Roy Montoya. All rights reserved.
//

import Foundation

class LionCub: Lion {
    
    func rubLionsCubBelly () {
        print("LionCub is happy")
    }
    
    override func roar() {
        print("LionCub: Growl Growl")
    }
    
    override func randomFact() -> String {
        var randomFact: String
        if isAlphaMale {
            randomFact = "Cubs are usually hidden in the dense bush for approximately six weeks."
        }
        else {
            randomFact = "Cubs begin eating meat at about the age of six weeks"
        }
        
        return randomFact
    }
}