//
//  VideoViewController.swift
//  BMI-RMG
//
//  Created by 유명규 on 11/21/24.
//

import UIKit
import AVKit

class VideoViewController: UIViewController {

    @IBAction func playVideo(_ sender: UIButton) {
        
        let videoPath : String? = Bundle.main.path(forResource: "bmi", ofType: "mp4")
        let videoURL = URL(filePath: videoPath!)
        let player = AVPlayer(url: videoURL)
        
        let playerController = AVPlayerViewController()
        playerController.player = player
        
        
        self.present(playerController, animated: true) {
            player.play()
        } // 아래 소스의 경우 영상이 나오기 전에 소리 먼저 나올 수 있음
        
        // self.present(playerController, animated: true)
        // player.play()
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
