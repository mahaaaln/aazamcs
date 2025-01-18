//
//  ViewController.swift
//  Stopwatch
//
//  Created by Maha Alnassr on 18/01/2025.
//

import UIKit

class ViewController: UIViewController {
    let stopwatch = Stopwatch()
    
    @IBOutlet weak var elapsedTimeLabel: UILabel!
    
    @IBOutlet weak var Time: UILabel!
    @IBOutlet weak var Stop: UIButton!
    @IBOutlet weak var Start: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func startButtonTapped(sender: UIButton) {
    // code to start the clock
        Timer.scheduledTimer(
                timeInterval: 0.1,
                target: self,
                selector: #selector(updateElapsedTimeLabel),
                userInfo: nil,
                repeats: true
            )
            stopwatch.start()
    }
    @IBAction func stopButtonTapped(sender: UIButton) {
    // code to stop the clock
        stopwatch.stop()
    }
    
    @objc func updateElapsedTimeLabel(timer: Timer) {
        if stopwatch.getIsRunning { // Replace with your actual condition to check if the stopwatch is running
            elapsedTimeLabel.text = stopwatch.elapsedTimeAsString
        } else {
            timer.invalidate() // Stops the timer if the stopwatch isn't running
        }
    }

}

