//
//  addTaskVC.swift
//  To-do
//
//  Created by Noura on 10/19/20.
//  Copyright © 2020 Noura. All rights reserved.
//

import UIKit
import UserNotifications

class addTaskVC: UIViewController {

    @IBOutlet weak var TasksInfo: UILabel!
    @IBOutlet weak var TimeInfo: UILabel!
    @IBOutlet weak var NotesINfo: UILabel!
    @IBOutlet weak var NameInfo: UILabel!
    @IBAction func action(_ sender: Any) {
        
        let content = UNMutableNotificationContent()
        content.title = "Make sure to do your school work Noura!"
        content.subtitle = "1- study math, 2- Attend on time."
        content.body = "dont forget to do your school work now!"
        content.badge = 1
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "Time is up", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
    }
    
    
    
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
        
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, error in })
        
        
        
       
      
    }

    @IBAction func addButton(_ sender: Any) {
        
    }
    @IBAction func AddTask(_ sender: Any){
        
    }
    
}
