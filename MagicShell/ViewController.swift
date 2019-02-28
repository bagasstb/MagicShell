//
//  ViewController.swift
//  MagicShell
//
//  Created by bagasstb on 28/02/19.
//  Copyright © 2019 xProject. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    
    var answer: Int = 0
    let answerList: [String] = ["Absolutely Yes!", "Yes!", "No!", "Absolutely No!"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func getAnswer() {
        answer = Int.random(in: 0 ... 3)
        answerLabel.text = answerList[answer]
    }

    @IBAction func getAnswerPressed(_ sender: UIButton) {
        getAnswer()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        getAnswer()
    }
}

