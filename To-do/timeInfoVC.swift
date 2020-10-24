//
//  timeInfoVC.swift
//  To-do
//
//  Created by Noura on 10/24/20.
//  Copyright © 2020 Noura. All rights reserved.
//

import UIKit

class timeInfoVC: UIViewController {
    

    @IBOutlet weak var extraNotesTexr: UITextField!
    @IBOutlet weak var TaskText: UITextField!
    @IBOutlet weak var TimeText: UITextField!
    @IBOutlet weak var taskname: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func addtaskstoarray(_ sender: Any) {
        var newtask = TaskText.text!
        NewFocus.Tasks.append(newtask)
        TaskText.text = " "
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func doneAction(_ sender: Any) {
      
        NewFocus.taskname = taskname.text!
        NewFocus.extraNote = extraNotesTexr.text!
        NewFocus.Time = TimeText.text!
        
    }
}
