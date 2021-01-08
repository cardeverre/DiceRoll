//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by JP Van Loggerenberg. 
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgLeftDice: UIImageView!
    @IBOutlet weak var imgRightDice: UIImageView!
    
    var leftDiceValue = 1
    var rightDiceValue = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgLeftDice.image = #imageLiteral(resourceName: "DiceSix")
        imgLeftDice.alpha = 0.5
        
        imgRightDice.image = #imageLiteral(resourceName: "DiceTwo")
        
    }

    @IBAction func btnRoll(_ sender: Any) {
        //print("Button Pushed")
        
        let imgDiceArray = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        
        imgLeftDice.image = imgDiceArray[Int.random(in:0...5)]
        imgRightDice.image = imgDiceArray[Int.random(in:0...5)]
        
    }
    
}

