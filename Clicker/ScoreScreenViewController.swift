//
//  ScoreScreenViewController.swift
//  Clicker
//
//  Created by Vadim Shoshin on 21.10.2017.
//  Copyright © 2017 Vadim Shoshin. All rights reserved.
//

import UIKit

class ScoreScreenViewController: UIViewController {
    @IBOutlet weak var finalScoreLabel: UILabel!
    
    var finalScore: Int?
    
    //var finalScore: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let nonOptScore = finalScore
        {
            finalScoreLabel.text = "Your score: \(nonOptScore)"
        }
    }
    
    
}
