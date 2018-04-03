//
//  ViewController.swift
//  Lession7
//
//  Created by mai.thi.giang on 4/3/18.
//  Copyright © 2018 mai.thi.giang. All rights reserved.
//

import UIKit
import UserNotifications
import CoreData

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func scheduleLocalNotification(_ sender: Any) {
        let notificationContent = UNMutableNotificationContent()
        notificationContent.title = "Cocoacasts"
        notificationContent.subtitle = "Local Notifications"
        notificationContent.body = "In this tutorial, you learn how to schedule local notifications with the User Notifications framework."
        let notificationTrigger = UNTimeIntervalNotificationTrigger(timeInterval: 10.0, repeats: false)
        let notificationRequest = UNNotificationRequest(identifier: "cocoacasts_local_notification", content: notificationContent, trigger: notificationTrigger)
        UNUserNotificationCenter.current().add(notificationRequest) { (error) in
            if let error = error {
                print("Unable to Add Notification Request (\(error), \(error.localizedDescription))")
            }
        }
    }
    
    @IBAction func insertToCoredata(_ sender: Any) {
        let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
        let managedContext = appDelegate.persistentContainer.viewContext
        let userEntity = NSEntityDescription.entity(forEntityName: "User", in: managedContext)!
        
        userEntity.setValue("1", forKey: "user_id")
        userEntity.setValue("maigiangbk@gmail.com", forKey: "email")
        userEntity.setValue("Mai Giang", forKey: "user_name")
        
        do {
            try managedContext.save()
            print("insert success")
        } catch {
            print("insert error")
        }
    }
    
    @IBAction func deleteFromCoredata(_ sender: Any) {
        
    }
}

