//
//  CalculatorUIView.swift
//  Calculator
//
//  Created by Nic Gibson on 7/15/19.
//  Copyright © 2019 Nic Gibson. All rights reserved.
//

import UIKit

class CalculatorUIView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
        roundCorners()
    }
    
    func roundCorners() {
        self.layer.cornerRadius = 45
        self.layer.masksToBounds = true
    }
}
