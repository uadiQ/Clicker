//
//  ClickerViewController.swift
//  Clicker
//
//  Created by Vadim Shoshin on 21.10.2017.
//  Copyright © 2017 Vadim Shoshin. All rights reserved.
//

import UIKit

class ClickerViewController: UIViewController {
    
    @IBOutlet weak var currentScoreLabel: UILabel!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    var currentScore: Int = 0

    override func viewDidLoad() {
        currentScore = 0
        super.viewDidLoad()

    }
    
    func showRandomButton()
    {
        var clickersArray: [UIButton] = [firstButton, secondButton, thirdButton]
        let randomButtonIndex = Int(arc4random_uniform(3))
        for button in clickersArray
        {
            button.isHidden = true
        }
        clickersArray[randomButtonIndex].isHidden = false
    }

    @IBAction func anyTapButtonClicked(_ sender: UIButton) {
        currentScore += 1
        currentScoreLabel.text = "Score: \(currentScore)"
        showRandomButton()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "showThirdScreen"
        {
            if let destVC = segue.destination as? ScoreScreenViewController
            {
                destVC.finalScoreLabelText = "Your score: \(currentScore)"
            }
        }
    }
}
