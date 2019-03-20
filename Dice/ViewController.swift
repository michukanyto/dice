//
//  ViewController.swift
//  Dice
//
//  Created by Marlon Escobar on 2019-03-12.
//  Copyright © 2019 Marlon Escobar A. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 = 0
    var randomDiceIndex2 = 0
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    var dices:[UIImage] = [UIImage(named: "dice1.png")!,
                           UIImage(named: "dice2.png")!,
                           UIImage(named: "dice3.png")!,
                           UIImage(named: "dice4.png")!,
                           UIImage(named: "dice5.png")!,
                           UIImage(named: "dice6.png")!
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initialize()
    }
    
    func initialize(){
        randomDiceIndex1 = Int.random(in: 0..<6)
        randomDiceIndex2 = Int.random(in: 0 ... 5)//random works equal than random above this
        diceImageView1.image = dices[randomDiceIndex1]
        diceImageView2.image = dices[randomDiceIndex2]
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        initialize()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        initialize()
    }
    
}

