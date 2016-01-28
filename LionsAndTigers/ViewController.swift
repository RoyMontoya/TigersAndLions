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
    
    var myTigers:[Tiger] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var myTiger = Tiger()
        myTiger.name = "Tigger"
        myTiger.breed = "Bengal"
        myTiger.age = 3
        myTiger.image = UIImage(named: "BengalTiger.jpg")
        
        myImageView.image = myTiger.image
        nameLabel.text = myTiger.name
        ageLabel.text = "\(myTiger.age)"
        breedLabel.text = myTiger.breed
        
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
        
        myTigers += [myTiger, secondTiger, thirdTiger, forthTiger]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonPressed(sender: UIBarButtonItem) {
        let randomNumber = Int(arc4random_uniform(UInt32(myTigers.count)))
        let tiger = myTigers[randomNumber]
        
            myImageView.image = tiger.image
            nameLabel.text = tiger.name
            ageLabel.text = "\(tiger.age)"
            breedLabel.text = tiger.breed
    }

}

