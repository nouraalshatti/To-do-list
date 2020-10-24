//
//  addTaskVC.swift
//  To-do
//
//  Created by Noura on 10/19/20.
//  Copyright © 2020 Noura. All rights reserved.
//

import UIKit

class addTaskVC: UIViewController {

    @IBOutlet weak var TasksInfo: UILabel!
    @IBOutlet weak var TimeInfo: UILabel!
    @IBOutlet weak var NotesINfo: UILabel!
    @IBOutlet weak var NameInfo: UILabel!
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        var tasksinstring = " "
        for task in NewFocus.Tasks
        {
            tasksinstring = tasksinstring + " " + task
        }

       
        TasksInfo.text = tasksinstring
        TimeInfo.text = NewFocus.Time
        NotesINfo.text = NewFocus.extraNote
        NameInfo.text = NewFocus.taskname
        
        
        
        
        
       
      
    }

    @IBAction func addButton(_ sender: Any) {
        
    }
    @IBAction func AddTask(_ sender: Any){
        
    }
    
}
