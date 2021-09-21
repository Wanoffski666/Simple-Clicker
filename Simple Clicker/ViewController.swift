//
//  ViewController.swift
//  Simple Clicker
//
//  Created by Дане4ка on 22.09.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var scoreLabelPoint: UILabel!
    @IBOutlet weak var buttonAddScores: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "Your score is: "
        scoreLabelPoint.text = "0"
    }
    
    @IBAction func onClickAddScores(_ sender: Any) {
        var scores = Int(scoreLabelPoint.text!)!
        scores += 1
        scoreLabelPoint.text = String(scores)
    }
    
}

