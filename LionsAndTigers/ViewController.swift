//
//  ViewController.swift
//  LionsAndTigers
//
//  Created by Roy Montoya on 1/25/16.
//  Copyright © 2016 Roy Montoya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myImageView: UIImageView!

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    @IBOutlet weak var randomFactLabel: UILabel!
    
    
    var currentIndex = 0
    
    var myTigers:[Tiger] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var myTiger = Tiger()
        myTiger.name = "Tigger"
        myTiger.breed = "Bengal"
        myTiger.age = 3
        myTiger.image = UIImage(named: "BengalTiger.jpg")
        
        myTiger.age = myTiger.ageInTigerYearsFromAge(myTiger.age)
        myTiger.chuff()
        myTiger.chuffNumberofTimes(5, isLoud: false)
        
        self.myImageView.image = myTiger.image
        self.nameLabel.text = myTiger.name
        self.ageLabel.text = "\(myTiger.age)"
        self.breedLabel.text = myTiger.breed
        self.randomFactLabel.text = myTiger.randomFact()
        
        
        var secondTiger = Tiger()
        secondTiger.name = "snoop"
        secondTiger.breed = "IndoTiger"
        secondTiger.age = 3
        secondTiger.image = UIImage(named: "IndochineseTiger.jpg")
        
        var thirdTiger = Tiger()
        thirdTiger.name = "jager"
        thirdTiger.breed = "Malayan"
        thirdTiger.age = 3
        thirdTiger.image = UIImage(named: "MalayanTiger.jpg")
        
        var forthTiger = Tiger()
        forthTiger.name = "Spar"
        forthTiger.breed = "Syberian"
        forthTiger.age = 3
        forthTiger.image = UIImage(named: "SiberianTiger.jpg")
        
        self.myTigers += [myTiger, secondTiger, thirdTiger, forthTiger]
        myTiger.chuffNumberOfTimes(3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonPressed(sender: UIBarButtonItem) {
        var randomNumber: Int
        
        repeat{
             randomNumber = Int(arc4random_uniform(UInt32(myTigers.count)))
        }while self.currentIndex == randomNumber
        
        self.currentIndex = randomNumber
        
        let tiger = self.myTigers[randomNumber]
//        
//            myImageView.image = tiger.image
//            nameLabel.text = tiger.name
//            ageLabel.text = "\(tiger.age)"
//            breedLabel.text = tiger.breed
        
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            self.myImageView.image = tiger.image
            self.nameLabel.text = tiger.name
            self.ageLabel.text = "\(tiger.age)"
            self.breedLabel.text = tiger.breed
            self.randomFactLabel.text = tiger.randomFact()
            
            }, completion: {
                (finished: Bool) -> () in
        })
    }

}

