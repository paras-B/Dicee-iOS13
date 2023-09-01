//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewLeft: UIImageView!
    
    @IBOutlet weak var diceImageViewRight: UIImageView!
    
    // array for dice images
    let imageArray = [UIImage(imageLiteralResourceName: "DiceOne"),
                      UIImage(imageLiteralResourceName: "DiceTwo"),
                      UIImage(imageLiteralResourceName: "DiceThree"),
                      UIImage(imageLiteralResourceName: "DiceFour"),
                      UIImage(imageLiteralResourceName: "DiceFive"),
                      UIImage(imageLiteralResourceName: "DiceSix")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImageViewLeft.image = imageArray[5]
        diceImageViewRight.image = imageArray[5]
    }

    @IBAction func rollButton(_ sender: UIButton) {
        let randomLeft = Int.random(in: 0..<6)
        let randomRight = Int.random(in: 0..<6)
        
        diceImageViewLeft.image = imageArray[randomLeft]
        diceImageViewRight.image = imageArray[randomRight]
    }
    
}

