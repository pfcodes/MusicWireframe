//
//  ViewController.swift
//  MusicWireframe
//
//  Created by Phil on 3/5/20.
//  Copyright © 2020 AURORA Digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var albumImageView: UIImageView!
  @IBOutlet weak var reverseBackground: UIView!
  @IBOutlet weak var playPauseBackground: UIView!
  @IBOutlet weak var forwardBackground: UIView!
  @IBOutlet weak var reverseButton: UIButton!
  @IBOutlet weak var playPauseButton: UIButton!
  @IBOutlet weak var forwardButton: UIButton!
  
  var isPlaying: Bool = true {
    didSet {
      if isPlaying {
        playPauseButton.setImage(UIImage(named: "pause"), for: .normal)
      } else {
        playPauseButton.setImage(UIImage(named: "play"), for: .normal)
      }
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    reverseBackground.layer.cornerRadius = 35.0
    reverseBackground.clipsToBounds = true
    reverseBackground.alpha = 0

    playPauseBackground.layer.cornerRadius = 35.0
    playPauseBackground.clipsToBounds = true
    playPauseBackground.alpha = 0

    forwardBackground.layer.cornerRadius = 35.0
    forwardBackground.clipsToBounds = true
    forwardBackground.alpha = 0
  }

  @IBAction func playPauseButtonTapped(_ sender: Any) {
    if isPlaying {
      UIView.animate(withDuration: 0.5, animations: {
        self.albumImageView.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
      })
    } else {
      UIView.animate(withDuration: 0.5, animations: {
        self.albumImageView.transform = CGAffineTransform.identity
      })
    }
    
    isPlaying.toggle()
  }
  
}

