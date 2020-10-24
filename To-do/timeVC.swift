//
//  timeVC.swift
//  To-do
//
//  Created by Noura on 10/24/20.
//  Copyright © 2020 Noura. All rights reserved.
//

import UIKit

class timeVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
        @IBOutlet weak var button1: UIButton!
        
        var selectedButton = UIButton()
        
        let transperantView = UIView()
        let tableView = UITableView()
        var dataSource = [Int]()
        
        
        
        
        
        func addTransparentView(frames: CGRect) {
            let window = UIApplication.shared.keyWindow
            transperantView.frame = window?.frame ?? self.view.frame
            self.view.addSubView(transperantView)
            
            tableView.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: 0)
            self.view.addSubview(tableView)
            tableView.layer.cornerRadius = 5
            
            
            transperantView.backgroundColor = UIColor.black.withAlphaComponent(0.9)
            
            let tapgesture = UITapGestureRecognizer(target: self, action: #selector(removeTransparentView))
            transperantView.addGestureRecognizer(tapgesture)
            transperantView.alpha = 0
            UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
                self.transperantView.alpha = 0.5
                self.tableView.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height + 5, width: frames.width, height: 200)
                
            }
            @objc func removeTransparentView() {
                let frames = selectedButton.frame
                UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
                    self.transperantView.alpha = 0
                    self.tableView.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: 0)
                }, completion: nil)
            }
            
            
            @IBAction func Button2(_ sender: Any) {
                dataSource = ["1...12"]
                selectedButton = Button1
                addTransparentView(frames: button1.frame)
                
            }
            
            
            //
            
            @IBOutlet weak var TimeDrag: UILabel!
            
            
            override func viewDidLoad() {
                super.viewDidLoad()
                
                extension ViewController: UITableViewDelegate, UITableViewDataSource{
                    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                        return dataSource.count
                    }
                }
                
            }
        }
    }
}
