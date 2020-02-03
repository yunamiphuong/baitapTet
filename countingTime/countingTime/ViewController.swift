//
//  ViewController.swift
//  countingTime
//
//  Created by Apple on 2/2/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelDisplayNumber: UILabel!
    
    @IBOutlet weak var buttonStartPause: UIButton!
    
    @IBOutlet weak var buttonReset: UIButton!
    
    var timeCounting : Timer!
    var count: Int = 0
    var isCounting: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelDisplayNumber.text = "Bấm start để bắt đầu đếm"
        
        isCounting = false
    }
    
    @objc func runCountingTime() {
        count += 1
        labelDisplayNumber.text = "\(count)"
        buttonStartPause.setTitle("PAUSE", for: .normal)
    }
    
    @IBAction func pressStartPause(_ sender: Any) {
        if isCounting == false {
        timeCounting = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runCountingTime), userInfo: nil, repeats: true)
            isCounting = true
        } else {
            timeCounting.invalidate()
            isCounting = false
            buttonStartPause.setTitle("START", for: .normal)
        }
    }
    
    @IBAction func pressReset(_ sender: Any) {
        count = 0
        labelDisplayNumber.text = "\(count)"
        isCounting = false
        timeCounting.invalidate()
        buttonStartPause.setTitle("START", for: .normal)
    }
    
    
}

