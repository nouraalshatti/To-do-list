//
//  firstVC.swift
//  To-do
//
//  Created by Noura on 10/24/20.
//  Copyright © 2020 Noura. All rights reserved.
//

import UIKit

class firstVC: UIViewController {

    @IBOutlet weak var currentTemp: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getWeatherDetails()

        // Do any additional setup after loading the view.
    }
    

       func getWeatherDetails()
        {
            Weather().requestWeatherFor(city: "Kuwait") { (forcast) in

                let tempInK = forcast!.main.temp
                let tempInC = Int((tempInK - 272.15).rounded())
                self.currentTemp.text = "\(tempInC)°"

            }
    }

}
