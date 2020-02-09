//
//  ViewController.swift
//  lixi
//
//  Created by Apple on 2/7/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var labelTop: UIImageView!
    
    @IBOutlet weak var buttonLixi1: UIButton!
    
    @IBOutlet weak var buttonLixi2: UIButton!
    
    @IBOutlet weak var buttonLixi3: UIButton!
    
    @IBOutlet weak var buttonLixi4: UIButton!
    
    @IBOutlet weak var buttonLixi5: UIButton!
    
    @IBOutlet weak var buttonLixi6: UIButton!
    
    @IBOutlet weak var buttonLixi7: UIButton!
    
    @IBOutlet weak var labelBottom: UILabel!
    
    @IBOutlet weak var imageTien: UIImageView!
    
    @IBOutlet weak var buttonReplay: UIButton!
    
    
    var totalTien : Int = 0
    var soundPlayer : AVAudioPlayer?
    var y : Int = 0 //(số tiền trong lì xì)
    var timer : Timer!
    var isZoomIn :Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.yellow
        labelBottom.text = "Chọn 1 Lì Xì Nào! Bạn đang có \(totalTien) VNĐ"
        labelBottom.numberOfLines = 0
        imageTien.isHidden = true
        buttonReplay.isHidden = true
        labelBottom.numberOfLines = 0
        labelTop.center.x = view.frame.width/2
        
        // sound
        playSound()
        
        // animation cho lì xì
        
        buttonLixi1.alpha = 0
        buttonLixi2.alpha = 0
        buttonLixi3.alpha = 0
        buttonLixi4.alpha = 0
        buttonLixi5.alpha = 0
        buttonLixi6.alpha = 0
        buttonLixi7.alpha = 0
        
        buttonLixi1.center.y = -100
        buttonLixi2.center.y = -100
        buttonLixi3.center.y = -100
        buttonLixi4.center.y = -100
        buttonLixi5.center.y = -100
        buttonLixi6.center.y = -100
        buttonLixi7.center.y = -100
        
        UIView.animate(withDuration: 4) {
            self.buttonLixi1.alpha = 1
            self.buttonLixi2.alpha = 1
            self.buttonLixi3.alpha = 1
            self.buttonLixi4.alpha = 1
            self.buttonLixi5.alpha = 1
            self.buttonLixi6.alpha = 1
            self.buttonLixi7.alpha = 1
            
            self.buttonLixi1.center.y += 440
            self.buttonLixi2.center.y += 440
            self.buttonLixi3.center.y += 380
            self.buttonLixi4.center.y += 540
            self.buttonLixi5.center.y += 680
            self.buttonLixi6.center.y += 680
            self.buttonLixi7.center.y += 580
        }
        
        // top logo animation
        timer = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(runLoopLabelTop), userInfo: nil, repeats: true)
        isZoomIn = true
    }
    
    @objc func runLoopLabelTop () {
        // phóng to thu nhỏ top logo
        switch isZoomIn {
        case true:
            isZoomIn = false
            labelTop.frame.size = CGSize(width: 414, height: 151)
            labelTop.center.x = self.view.frame.width/2
        case false:
            isZoomIn = true
            labelTop.frame.size = CGSize(width: 414*0.8, height: 160*0.8)
            labelTop.center.x = self.view.frame.width/2
        }
    }
    
    func randomTien() {
        // x là số thứ tự của file image tờ tiền -> random tờ tiền
        let x : Int = Int.random(in: 1...5)
        
        imageTien.isHidden = false
        imageTien.image = UIImage(named: "tien\(x)")
                
        buttonLixi1.isHidden = true
        buttonLixi2.isHidden = true
        buttonLixi3.isHidden = true
        buttonLixi4.isHidden = true
        buttonLixi5.isHidden = true
        buttonLixi6.isHidden = true
        buttonLixi7.isHidden = true
                
        switch x {
        case 1:
            y = 5000
        case 2:
            y = 20000
        case 3:
            y = 100000
        case 4:
            y = 200000
        case 5:
            y = 500000
        default:
            y = 0
        }
        
        labelBottom.text = "Bạn đã nhận được lì xì \(y) VND"
        buttonReplay.setTitle("Mở tiếp Lì Xì - Thêm Quà Thêm Zui!", for: .normal)
        
        buttonReplay.isHidden = false
        
        totalTien += y
    }
    
    @IBAction func pressLixi(_ sender: Any) {
        randomTien()
    }
    
    @IBAction func pressReplay(_ sender: Any) {
        imageTien.isHidden = true
        
        buttonLixi1.isHidden = false
        buttonLixi2.isHidden = false
        buttonLixi3.isHidden = false
        buttonLixi4.isHidden = false
        buttonLixi5.isHidden = false
        buttonLixi6.isHidden = false
        buttonLixi7.isHidden = false
        
        labelBottom.text = "Tiếp tục mở để nhận thêm Lì Xì! Bạn đang có tổng cộng \(totalTien) VNĐ"
        
        buttonReplay.isHidden = true
    }
        
    func playSound() {
        let path = Bundle.main.path(forResource: "babyShark.mp3", ofType: nil)!
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

