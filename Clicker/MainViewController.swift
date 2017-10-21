//
//  MainViewController.swift
//  Clicker
//
//  Created by Vadim Shoshin on 21.10.2017.
//  Copyright © 2017 Vadim Shoshin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var lastScoreLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func backToFirstScreen(_ sender: UIStoryboardSegue)
    {
        if let sourceVC = sender.source as? ClickerViewController
        {
            lastScoreLabel.text = "Last score: \(sourceVC.currentScore)"
        }
        
        if let sourceVC = sender.source as? ScoreScreenViewController
        {
            lastScoreLabel.text = sourceVC.finalScoreLabelText
        }
    }
}
