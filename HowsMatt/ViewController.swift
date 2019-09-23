//
//  ViewController.swift
//  HowsMatt
//
//  Created by Amal Agrawal on 9/23/19.
//  Copyright © 2019 Amal Agrawal. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer = AVAudioPlayer()

    @IBOutlet weak var stepperPressed: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func playsound(soundName : String, audioPlayer: inout AVAudioPlayer) {
        
        if let sound = NSDataAsset(name: soundName){
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("Error: data in \(soundName) couldn't be played as a sound")
            }
        }else{
            print("The sound did not play!")
        }
        
}
    @IBAction func tellMePressed(_ sender: UIButton) {
        playsound(soundName: "alright", audioPlayer: &audioPlayer)
    }
}
