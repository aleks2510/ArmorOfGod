//
//  AppDelegate.swift
//  ArmorOfGod
//
//  Created by Alejandro Lopez on 4/6/16.
//  Copyright © 2016 LDSBC. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var interval : TimeInterval = 1
    var window: UIWindow?
    

    private func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //Register the remote Notifiction
        let notificationSettings = UIUserNotificationSettings(types: [.alert, .sound], categories: nil)
        UIApplication.shared.registerUserNotificationSettings(notificationSettings)
        self.createLocalNotification()
        
               return true
    }
    
    func createLocalNotification(){
        let localNotification = UILocalNotification()
        localNotification.fireDate = Date(timeIntervalSinceNow: interval)
        localNotification.soundName = UILocalNotificationDefaultSoundName
        localNotification.userInfo = [
            "message": "Please update your stats for a better Experience"
        ]
        localNotification.alertBody = "If you have not done it, it is time to update stats!"
        
        UIApplication.shared.scheduleLocalNotification(localNotification)
        
        
    }
    
    func application(_ application: UIApplication, didReceive notification: UILocalNotification) {
        if application.applicationState == .active{
            //We are inside the app
            self.takeActionWithNotification(notification)

        }
        else {
            self.takeActionWithNotification(notification)
                 }
    }
    
    func takeActionWithNotification(_ localNotification: UILocalNotification){
        
        localNotification.userInfo = [
            "message": "Please update your stats for a better Experience"
        ]
        localNotification.alertBody = "If you have not done it, it is time to update stats!"
        let notificationMessage = localNotification.userInfo! ["message"] as! String
        let alertController = UIAlertController(title: "Update your stats", message: notificationMessage, preferredStyle: .alert)
        
        //This action will set the alert if they want to remind them later
        let remindLater = UIAlertAction(title: "Remind me Latter", style: .default) {(action) -> Void in
            self.interval = 1600
            let localNotification = UILocalNotification()
            localNotification.soundName = UILocalNotificationDefaultSoundName
            localNotification.fireDate = Date(timeIntervalSinceNow: self.interval)
            UIApplication.shared.scheduleLocalNotification(localNotification)
            localNotification.userInfo = [
                "message": "Please update your stats for a better Experience"
            ]
        }
        
        //This action will set the alert  in  24 hours when they click Go
        let goAction = UIAlertAction(title: "Go", style: .default) { (action) -> Void in
            let tabBarController = self.window?.rootViewController as! UITabBarController
            self.interval = 86400
            
            localNotification.alertBody = "If you have not done it, it is time to update stats!"
            let localNotification = UILocalNotification()
            localNotification.soundName = UILocalNotificationDefaultSoundName
            localNotification.fireDate = Date(timeIntervalSinceNow: self.interval)
            UIApplication.shared.scheduleLocalNotification(localNotification)
            tabBarController.selectedIndex = 1
            
        
        }
        
        //This action will do nothing
        let ignore = UIAlertAction(title:"ignore", style: .cancel){(action) -> Void in
        }
        
        alertController.addAction(remindLater)
        alertController.addAction(goAction)
        alertController.addAction(ignore)
        
        self.window?.rootViewController?.present(alertController, animated: true, completion: nil)
        
    }
    
    

}

