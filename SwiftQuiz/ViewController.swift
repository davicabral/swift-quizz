//
//  ViewController.swift
//  SwiftQuiz
//
//  Created by Davi Cabral de Oliveira on 03/05/19.
//  Copyright © 2019 Davi Cabral de Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet var buttons: [UIButton]!
    
    var duration: Double =  100
    private let formatter = DateComponentsFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        formatter.unitsStyle = .positional
        formatter.allowedUnits = [.minute, .second]
        formatter.zeroFormattingBehavior = [.dropLeading]
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
            self.duration -= 1
            self.timerLabel.text = self.formatter.string(from: self.duration)
            if self.duration <= 0 {
                timer.invalidate()
            }
        }
        
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        print(sender)
    }
}

