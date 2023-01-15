//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    let diceImages: [UIImage] = [UIImage(imageLiteralResourceName: "DiceOne"), UIImage(imageLiteralResourceName: "DiceTwo"), UIImage(imageLiteralResourceName: "DiceThree"), UIImage(imageLiteralResourceName: "DiceFour"), UIImage(imageLiteralResourceName: "DiceFive"), UIImage(imageLiteralResourceName: "DiceSix")]
    
    @IBAction func rollButton(_ sender: UIButton) {
        // Random value generated using Int.random within array boundaries
        diceImageViewOne.image = diceImages[Int.random(in: 0...diceImages.count - 1)]
        // Random value generated using randomElement's method
        diceImageViewTwo.image = diceImages.randomElement()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

