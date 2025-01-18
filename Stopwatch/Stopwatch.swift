//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Maha Alnassr on 18/01/2025.
//

import Foundation

class Stopwatch {
    
    private var startTime: NSDate?
    func start() {
        startTime = NSDate()
    }
    func stop() {
        startTime = nil
    }
    
    var elapsedTime: TimeInterval {
        if let startTime = self.startTime {
            return -1 * startTime.timeIntervalSinceNow
        } else {
            return 0
        }
    }
    
    // Format elapsed time as a string
    var elapsedTimeAsString: String {
        let totalSeconds = Int(elapsedTime)
        let minutes = totalSeconds / 60
        let seconds = totalSeconds % 60
        let fraction = Int((elapsedTime.truncatingRemainder(dividingBy: 1)) * 10)
        
        return String(format: "%02d:%02d.%d", minutes, seconds, fraction)
    }
    
    var getIsRunning: Bool {
        return startTime != nil // Returns true if the stopwatch is running
    }
    
    
}
