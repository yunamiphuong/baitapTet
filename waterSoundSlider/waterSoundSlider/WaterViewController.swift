//
//  WaterViewController.swift
//  waterSoundSlider
//
//  Created by Apple on 2/2/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit
import AVFoundation

class WaterViewController: UIViewController {
    @IBOutlet weak var uiWaterLevel: UIView!
    
    @IBOutlet weak var sliderWaterControl: UISlider!
    
    @IBOutlet weak var labelControlHere: UILabel!
    
    var soundPlayer : AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playSound()
        labelControlHere.text = "Điều chỉnh mực nước bằng Slider dưỡi đây"
        labelControlHere.center.y = view.center.y/3
    }
    
    
    @IBAction func sliderWater(_ sender: UISlider) {
        uiWaterLevel.frame = CGRect(x: 0, y: view.frame.height - view.frame.height*CGFloat(sender.value), width: view.bounds.width, height: view.frame.height*CGFloat(sender.value))
    }
    
    func playSound() {
        let path = Bundle.main.path(forResource: "bubblewater.mp3", ofType: nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            soundPlayer = try AVAudioPlayer(contentsOf: url)
            soundPlayer?.play()
            // đặt numberOfLoops = -1 để nó chạy lại khi chạy hết
            soundPlayer?.numberOfLoops = -1
        } catch {
            print("lỗi")
            // couldn't load file
        }
    }
}

