//
//  welcomescreenVC.swift
//  To-do
//
//  Created by Noura on 10/15/20.
//  Copyright © 2020 Noura. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation


class welcomescreenVC: UIViewController {

    @IBOutlet weak var NameEnter: UITextField!
    @IBOutlet weak var currentTemp: UILabel!
    @IBOutlet weak var videoLayer: UIView!
    
    
    

    
    
     
    override func viewDidLoad() {
        super.viewDidLoad()
        getWeatherDetails()
        playVideo()
       
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
         
//    
   
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
        
        videoLayer.bringSubviewToFront(NameEnter)
        videoLayer.bringSubviewToFront(currentTemp)
        player.play()
//        
    }
    func getWeatherDetails()
    {
        Weather().requestWeatherFor(city: "Kuwait") { (forcast) in
            
            let tempInK = forcast!.main.temp
            let tempInC = Int((tempInK - 272.15).rounded())
            self.currentTemp.text = "\(tempInC)°"
           
        }

    
//
//    @IBOutlet weak var Continue: UILabel!{
//
//
//    }
//    }
//
//}
//override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//      performSegue(withIdentifier: "next", sender: addTasks)
//
//
}
}
