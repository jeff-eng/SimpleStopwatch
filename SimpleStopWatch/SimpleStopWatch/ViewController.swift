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
    
    @IBOutlet weak var timerLabel: UILabel!

    @IBAction func play(sender: AnyObject) {
        // launch timer here
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(increaseTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func reset(sender: AnyObject) {
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
    
}

