//
//  listTableVC.swift
//  To-do
//
//  Created by Noura on 10/21/20.
//  Copyright © 2020 Noura. All rights reserved.
//

import UIKit



class listTableVC: UITableViewController {
  
//    
//    
//    @IBOutlet weak var button1: UIButton!
//    
//    var selectedButton = UIButton()
//    
//    let transperantView = UIView()
//    let tableView = UITableView()
//    var dataSource = [Int]()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        tableView.delegate = self
//        tableView.dataSource = self
//        
//    }
//    
//    
//    
//    func addTransparentView(frames: CGRect) {
//        let window = UIApplication.shared.keyWindow
//        transperantView.frame = window?.frame ?? self.view.frame
//        self.view.addSubView(transperantView)
//        
//        tableView.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: 0)
//        self.view.addSubview(tableView)
//        tableView.layer.cornerRadius = 5
//        
//        
//        transperantView.backgroundColor = UIColor.black.withAlphaComponent(0.9)
//        
//        let tapgesture = UITapGestureRecognizer(target: self, action: #selector(removeTransparentView))
//        transperantView.addGestureRecognizer(tapgesture)
//        transperantView.alpha = 0
//        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
//            self.transperantView.alpha = 0.5
//            self.tableView.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height + 5, width: frames.width, height: 200)
//        
//    }
//    @objc func removeTransparentView() {
//        let frames = selectedButton.frame
//        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
//                   self.transperantView.alpha = 0
//             self.tableView.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: 0)
//               }, completion: nil)
//    }
//    
//    
//    @IBAction func Button2(_ sender: Any) {
//        dataSource = ["1...12"]
//        selectedButton = Button1
//        addTransparentView(frames: button1.frame)
//      
//    }
//    
//    
////    
//
//    @IBOutlet weak var TimeDrag: UILabel!
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        extension ViewController: UITableViewDelegate, UITableViewDataSource{
//            func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//                return dataSource.count
//            }
//     
//        }
//        
    
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

//    // MARK: - Table view data source
//
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

  
    
    
    
}




}
