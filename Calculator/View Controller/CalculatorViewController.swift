//
//  CalculatorViewController.swift
//  Calculator
//
//  Created by Nic Gibson on 7/15/19.
//  Copyright © 2019 Nic Gibson. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var chooseSkillLabel: UILabel!
    @IBOutlet weak var skillIndicatorLabel: UILabel!
    @IBOutlet weak var currentLevelTextField: UITextField!
    @IBOutlet weak var targetLevelTextField: UITextField!
    @IBOutlet weak var attackImage: UIButton!
    @IBOutlet weak var defenseImage: UIImageView!
    @IBOutlet weak var rangedImage: UIImageView!
    @IBOutlet weak var neededXPLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func attackButtonTapped(_ sender: Any) {
        skillIndicatorLabel.text = "Attack!"
    }
    
    @IBAction func strengthButtonTapped(_ sender: Any) {
        skillIndicatorLabel.text = "Strength!"

    }
    
    @IBAction func defenseButtonTapped(_ sender: Any) {
        skillIndicatorLabel.text = "Defense!"

    }
    
    @IBAction func magicButtonTapped(_ sender: Any) {
        skillIndicatorLabel.text = "Magic!"

    }
    
    @IBAction func rangedButtonTapped(_ sender: Any) {
        skillIndicatorLabel.text = "Ranged!"

    }
    
    @IBAction func prayerButtonTapped(_ sender: Any) {
        skillIndicatorLabel.text = "Prayer!"
    }
    
    @IBAction func fetchButtonTapped(_ sender: Any) {
        guard let currentLevel = currentLevelTextField.text,
            let targetLevel = targetLevelTextField.text else {return}
        getXPNeededForDesignatedLevel(atCurrentLevel: Int(currentLevel)!, atTargetLevel: Int(targetLevel)!)
    }
    
    func getXPNeededForDesignatedLevel(atCurrentLevel enteredLevel: Int, atTargetLevel: Int) -> Int{
        let level = Int(currentLevelTextField.text!)
        var currentLevel = enteredLevel
        let xp: Int = 0
        var targetLevelXP: Int = 0
        for (level, xp) in Levels.sharedInstance.levels {
            if "\(currentLevel)" == "\(level)" {
                return xp
            }
        }
        
        func findTargetXP() -> Int {
            for (level, xp) in Levels.sharedInstance.levels {
                if "\(atTargetLevel)" == "\(level)" {
        }
                targetLevelXP = xp
            }
            return targetLevelXP
        }
        
        let neededXP = targetLevelXP - xp
        neededXPLabel.text = "\(neededXP)"
        return neededXP
    }
    
    func getTargetXP() {
        
    }
    
}
