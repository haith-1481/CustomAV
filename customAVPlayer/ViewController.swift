//
//  ViewController.swift
//  customAVPlayer
//
//  Created by trinh.hoang.hai on 2/26/19.
//  Copyright © 2019 trinh.hoang.hai. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

//    let videoPath = Bundle.main.path(forResource: "bulletTrain", ofType: "mp4")!
//    let videoPath = "https://wolverine.raywenderlich.com/content/ios/tutorials/video_streaming/foxVillage.mp4"

    @IBAction func playButtonTap(_ sender: Any) {
        let videoPath = Bundle.main.path(forResource: "bulletTrain", ofType: "mp4")!
        let videoURL = URL(fileURLWithPath: videoPath)
        let player = AVPlayer(url: videoURL)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player

        present(playerViewController, animated: true) {
            player.play()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

