//
//  ViewController.swift
//  lightcolor
//
//  Created by Владимир on 04.05.2021.
//
///hello world
import UIKit
import AVFoundation

class ViewController: UIViewController {

    let StatusOff = true
    
    override var prefersStatusBarHidden: Bool {return true
        
    }
    
    @IBOutlet weak var on: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func PressedFlashlight(_ sender: Any) {
        
        let device = AVCaptureDevice.default(for: AVMediaType.video)
        if ((device?.hasTorch) != nil) {
            do {
                try device?.lockForConfiguration()
                device?.torchMode = device?.torchMode == AVCaptureDevice.TorchMode.on ? .off : .on
                device?.unlockForConfiguration()
            } catch {print(error)}    }
    
}
}
