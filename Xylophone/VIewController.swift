//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        playSound(number: sender.tag)
    }
    
    func playSound(number: Int) {
        guard let soundUrl = Bundle.main.url(forResource: "note\(number)", withExtension: "wav") else { return }
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl)
        } catch {
            print(error.localizedDescription)
        }
        audioPlayer?.play()
    }

}

