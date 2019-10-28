//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {



    @IBOutlet weak var winOrLost: UILabel!
    
    
    @IBOutlet weak var card1: UIButton!
    
    
    @IBOutlet weak var card2: UIButton!
    
    
    @IBOutlet weak var card3: UIButton!
    
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  
    
    @IBAction func newGame(_ sender: UIButton) {
        card1.setBackgroundImage(UIImage(named: "cardBackRed"), for: .normal)
        card2.setBackgroundImage(UIImage(named: "cardBackRed"), for: .normal)
        card3.setBackgroundImage(UIImage(named: "cardBackRed"), for: .normal)
        card1.isEnabled = true
        card2.isEnabled = true
        card3.isEnabled = true
    }
    
    
    @IBAction func card(_ sender: UIButton) {
        let images = ["threeCard" , "kingCard" , "threeCard"]
        let random = images.randomElement() ?? "threeCard"
        
        switch sender.tag {
        case 0 :
            sender.setBackgroundImage(UIImage(named: random), for: .normal)
            if random == "kingCard" {
             winOrLost.text = "you won!"
            } else {
                winOrLost.text = "you lost!"
            }
            
        case 1 :
        sender.setBackgroundImage(UIImage(named: random), for: .normal)
        if random == "kingCard" {
         winOrLost.text = "you won!"
        } else {
            winOrLost.text = "you lost!"
        }
        case 2 :
        sender.setBackgroundImage(UIImage(named: random), for: .normal)
        if random == "kingCard" {
         winOrLost.text = "you won!"
        } else {
            winOrLost.text = "you lost!"
        }
        default :
        sender.setBackgroundImage(UIImage(named: random), for: .normal)
        if random == "kingCard" {
         winOrLost.text = "you won!"
        } else {
            winOrLost.text = "you lost!"
        }
        }
        card1.isEnabled = false
        card2.isEnabled = false
        card3.isEnabled = false
        
        
        
        
    }
    
    
}

