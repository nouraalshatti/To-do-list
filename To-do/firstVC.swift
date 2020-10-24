//
//  firstVC.swift
//  To-do
//
//  Created by Noura on 10/24/20.
//  Copyright © 2020 Noura. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class firstVC: UIViewController {

    @IBOutlet weak var currentTemp: UILabel!
    @IBOutlet weak var videoLayer: UIView!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getWeatherDetails()
         playVideo()
        

    }
    

       func getWeatherDetails()
        {
            Weather().requestWeatherFor(city: "Kuwait") { (forcast) in

                let tempInK = forcast!.main.temp
                let tempInC = Int((tempInK - 272.15).rounded())
                self.currentTemp.text = "\(tempInC)°"

            }
    }
        func playVideo () {
            guard let path = Bundle.main.path(forResource: "clouds", ofType: "mp4") else{
                return
            }
            
            let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "clouds", ofType: "mp4")!))
            let layer = AVPlayerLayer(player: player)
            layer.frame = self.view.bounds
            view.layer.addSublayer(layer)
            layer.videoGravity = .resizeAspectFill
            self.videoLayer.layer.addSublayer(layer)
            
            videoLayer.bringSubviewToFront(currentTemp)
            player.play()
   
        }

}
