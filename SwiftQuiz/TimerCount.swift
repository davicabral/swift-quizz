//
//  TimerCount.swift
//  SwiftQuiz
//
//  Created by Davi Cabral de Oliveira on 03/05/19.
//  Copyright © 2019 Davi Cabral de Oliveira. All rights reserved.
//

import Foundation

class TimerCount {
    
    var duration: TimeInterval
    private let formatter = DateComponentsFormatter()
    
    init(with time: TimeInterval) {
        duration = time
        formatter.unitsStyle = .positional
        formatter.allowedUnits = [.minute, .second]
        formatter.zeroFormattingBehavior = [.pad]
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
            self.duration -= 1
            if self.duration <= 0 {
                timer.invalidate()
            }
        }
    }
    
    

}
