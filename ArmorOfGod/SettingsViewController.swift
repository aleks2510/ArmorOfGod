//
//  SettingsViewController.swift
//  ArmorOfGod
//
//  Created by Alejandro Lopez on 7/13/16.
//  Copyright © 2016 LDSBC. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    let dailyTaskClass = DailyButtons()
    
    @IBAction func RestartAllStatsButtonDidTouch(_ sender: AnyObject) {
        
        let alertController = UIAlertController(title: "Warning", message: "If you press 'Remove' all your stats will be removed. Are you sure? ", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler:{(action) in print("Cancel Button Pressed")})
        alertController.addAction(cancelAction)
        let removeAction = UIAlertAction(title: "Remove", style: .destructive, handler: {
            (action) in self.dailyTaskClass.ifButtonPressed("removeAll", points: 3)})
        alertController.addAction(removeAction)
        self.present(alertController, animated: true, completion: nil)
        
    }

    
    @IBAction func selectGenderButtonDidTouch(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "SelectGenderSegue", sender: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
