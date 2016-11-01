//
//  ViewController.swift
//  SimpleStopWatch
//
//  Created by Jeffrey Eng on 10/31/16.
//  Copyright © 2016 Jeffrey Eng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentTime = 0
    var timer = NSTimer()
    var playPressed: Bool = false
    
    @IBOutlet weak var timerLabel: UILabel!

    @IBAction func play(sender: AnyObject) {
        if playPressed == false {
        // launch timer here
            runTimer()
            
            playPressed = true
            print(playPressed)
        } else if playPressed == true {
            print("Play button was already pressed")
        }
    }
    
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
        playPressed = false
    }
    
    @IBAction func reset(sender: AnyObject) {
        print("Reset button pressed")
        // stop the timer from calling the increaseTimer function
        timer.invalidate()
        // set the currentTime variable back to zero
        currentTime = 0
        // reset the text of the timerLabel back to zero
        timerLabel.text = "0"
        // set the playPressed variable to false
        playPressed = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func increaseTimer() {
        currentTime += 1
        timerLabel.text = "\(currentTime)"
    }
    
    func runTimer() {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(increaseTimer), userInfo: nil, repeats: true)
    }
    
}

