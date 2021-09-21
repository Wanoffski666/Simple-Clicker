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
    @IBOutlet weak var updateX2: UIButton!
    @IBOutlet weak var updateX4: UIButton!
    @IBOutlet weak var upRateLable: UILabel!
    
    var scoreUpRate = 1
    var scores = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreUpRate = 1
        scoreLabel.text = "Your score is: "
        scoreLabelPoint.text = "0"
        upRateLable.text = "Your rate lvl is: \(scoreUpRate)"
    }
    
    @IBAction func onClickAddScores(_ sender: Any) {
        scores = Int(scoreLabelPoint.text!)!
        scores += scoreUpRate
        scoreLabelPoint.text = String(scores)
        if scores >= 20 {
            updateX2.isHidden = false
        } else {
            updateX2.isHidden = true
        }
        
        if scores >= 40 {
            updateX4.isHidden = false
        } else {
            updateX4.isHidden = true
        }
        
    }
    @IBAction func onClickX2(_ sender: Any) {
        scoreUpRate *= 2
        scores -= 20
        scoreLabelPoint.text = String(scores)
        if scores >= 20 {
            updateX2.isHidden = false
        } else {
            updateX2.isHidden = true
        }
        upRateLable.text = "Your rate lvl is: \(scoreUpRate)"
    }
    @IBAction func onClickX4(_ sender: Any) {
        scoreUpRate *= 4
        scores -= 40
        scoreLabelPoint.text = String(scores)
        if scores >= 40 {
            updateX4.isHidden = false
        } else {
            updateX4.isHidden = true
        }
        upRateLable.text = "Your rate lvl is: \(scoreUpRate)"
    }
}

