//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
//        playSound(info: sender.titleLabel!.text!)
        playSound(info:sender.currentTitle!)
        
        sender.alpha = 0.5;
        
        DispatchQueue.main.asyncAfter(deadline:.now()+0.2){
            sender.alpha = 1;
        }
    }
    
    
    func playSound(info: String) {
        let url = Bundle.main.url(forResource: info, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
    //func greeting2(whoTest:String)
                   //parameter: datatype,  when create a function
    //when call the function, can use greeting2(whoTest: value)
    
    // using ! is means that we have check the value of that, don't worry, will have value because the currentTitle or titleLabel have the ?  which mean optional value.
}


