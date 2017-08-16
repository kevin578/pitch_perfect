//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Kevin Briggs on 7/4/17.
//  Copyright © 2017 Kevin Briggs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        recordingLabel.text = "waiting"
        stop.isEnabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func record(_ sender: Any) {
        print("button was pressed")
        recordingLabel.text = "recording"
        stop.isEnabled = true
        record.isEnabled = false
    }
    
    @IBAction func stopButton(_ sender: Any) {
        record.isEnabled = true
        stop.isEnabled = false
        recordingLabel.text = "Waiting to record"
    }
    @IBOutlet weak var recordingLabel: UILabel!
    
    @IBOutlet weak var stop: UIButton!

    @IBOutlet weak var record: UIButton!

}

