//
//  TasksViewController.swift
//  ArmorOfGod
//
//  Created by Alejandro Lopez on 7/20/16.
//  Copyright © 2016 LDSBC. All rights reserved.
//

import UIKit

//Global Variables
let helmet = UserDefaults.standard
let breastPlates = UserDefaults.standard
let sword = UserDefaults.standard
let shield = UserDefaults.standard
let loins = UserDefaults.standard
let feet = UserDefaults.standard
let checkDefaults = UserDefaults.standard
let activeLastTime = ActiveLastTime()

class TasksViewController: UIViewController {
    //Class Variables
    let dailyTaskClass = DailyButtons()
    let dailyButtonChange = DailyButtonChange()
    let button1 = UserDefaults.standard
    let button2 = UserDefaults.standard
    let button3 = UserDefaults.standard
    let button4 = UserDefaults.standard
    let button5 = UserDefaults.standard
    let button6 = UserDefaults.standard
    let button7 = UserDefaults.standard
    let button8 = UserDefaults.standard
   
    //Buttons Outlets
    @IBOutlet var redingScripturesButton: UIButton!
//    @IBOutlet var dailyMorningPrayerButton: UIButton!
    @IBOutlet var dailyPrayerButton: UIButton!
    @IBOutlet var partakingWorthilyOfTheSacrament: UIButton!
    @IBOutlet var redingConferenceTalkButton: UIButton!
    @IBOutlet var helpingOthersButton: UIButton!
    @IBOutlet var churchAttendanceButton: UIButton!
    @IBOutlet var honoringParentsButton: UIButton!
    
   
    //MARK:ReadingScripturesButtonDidTouch | Feet
    @IBAction func readingScripturesButtonDidTouch(_ sender: AnyObject) {
        //When the button is touch it will send the infomation to the dailyTaskClass.ifButtonPressed and it will retun a new value to the armor pieces
        let bool1 = dailyButtonChange.changeButtonDidTouchDay(redingScripturesButton,buttonDelfaultObject: button1,buttonNumber: "O")
        
        if ( bool1 == true) {
            dailyTaskClass.ifButtonPressed("feet", points: 3)
        }
        else {
            dailyTaskClass.ifButtonPressedTwice("feet", points: 3)
        }
    }
    //MARK:DailyEveningPrayerButtonDidTouch | Shield
    @IBAction func dailyPrayerButtonDidTouch(_ sender: AnyObject) {
        //When the button is touch it will send the infomation to the dailyTaskClass.ifButtonPressed and it will retun a new value to the armor pieces
        if(dailyButtonChange.changeButtonDidTouchDay(dailyPrayerButton,buttonDelfaultObject: button3,buttonNumber: "2") == true){
            dailyTaskClass.ifButtonPressed("shield", points: 3)
        }
        else {
            dailyTaskClass.ifButtonPressedTwice("shield", points: 3)
        }
    }
    //MARK:TempleVisitButtonDidTouch | Loins
    @IBAction func partakingWorthilyOfTheSacramentButtonDidTouch(_ sender: AnyObject) {
        //When the button is touch it will send the infomation to the dailyTaskClass.ifButtonPressed and it will retun a new value to the armor pieces
        if(dailyButtonChange.changeButtonDidTouchDay(partakingWorthilyOfTheSacrament,buttonDelfaultObject: button4,buttonNumber: "3") == true){
            dailyTaskClass.ifButtonPressed("loins", points: 21)
        }
        else {
            dailyTaskClass.ifButtonPressedTwice("loins", points: 21)
        }
    }
    //MARK:ReadingConferenceTalkButtonDidTouch
    @IBAction func readingConferenceTalkButtonDidTouch(_ sender: AnyObject) {
    //When the button is touch it will send the infomation to the dailyTaskClass.ifButtonPressed and it will retun a new value to the armor pieces
        if(dailyButtonChange.changeButtonDidTouchDay(redingConferenceTalkButton,buttonDelfaultObject: button5,buttonNumber: "4") == true){
            dailyTaskClass.ifButtonPressed("helmet", points: 1)
            dailyTaskClass.ifButtonPressed("breastPlates", points: 1)
            dailyTaskClass.ifButtonPressed("sword", points: 5)
            dailyTaskClass.ifButtonPressed("shield", points: 3)
            dailyTaskClass.ifButtonPressed("loins", points: 1)
            dailyTaskClass.ifButtonPressed("feet", points: 1)
        }
        else {
            dailyTaskClass.ifButtonPressedTwice("helmet", points: 1)
            dailyTaskClass.ifButtonPressedTwice("breastPlates", points: 1)
            dailyTaskClass.ifButtonPressedTwice("sword", points: 5)
            dailyTaskClass.ifButtonPressedTwice("shield", points: 3)
            dailyTaskClass.ifButtonPressedTwice("loins", points: 1)
            dailyTaskClass.ifButtonPressedTwice("feet", points: 1)
        }
    }
    //MARK:HelpingOtherButtonDidTouch
    @IBAction func helpingOthersButtonDidTouch(_ sender: AnyObject) {
        //When the button is touch it will send the infomation to the dailyTaskClass.ifButtonPressed and it will retun a new value to the armor pieces
        if(dailyButtonChange.changeButtonDidTouchDay(helpingOthersButton,buttonDelfaultObject: button6,buttonNumber: "5") == true){
            dailyTaskClass.ifButtonPressed("helmet", points: 1)
            dailyTaskClass.ifButtonPressed("breastPlates", points: 3)
            dailyTaskClass.ifButtonPressed("sword", points: 1)
            dailyTaskClass.ifButtonPressed("shield", points: 1)
            dailyTaskClass.ifButtonPressed("loins", points: 1)
            dailyTaskClass.ifButtonPressed("feet", points: 5)
        }
        else {
            dailyTaskClass.ifButtonPressedTwice("helmet", points: 1)
            dailyTaskClass.ifButtonPressedTwice("breastPlates", points: 3)
            dailyTaskClass.ifButtonPressedTwice("sword", points: 1)
            dailyTaskClass.ifButtonPressedTwice("shield", points: 1)
            dailyTaskClass.ifButtonPressedTwice("loins", points: 1)
            dailyTaskClass.ifButtonPressedTwice("feet", points: 5)
        }
    }
    //MARK:ChurchAttendaceButtonDidTouch | Helmet
    @IBAction func churchAttendnceButtonDidTouch(_ sender: AnyObject) {
        //When the button is touch it will send the infomation to the dailyTaskClass.ifButtonPressed and it will retun a new value to the armor pieces
        if(dailyButtonChange.changeButtonDidTouchDay(churchAttendanceButton,buttonDelfaultObject: button7,buttonNumber: "6") == true){
            dailyTaskClass.ifButtonPressed("helmet", points: 3)
        }
        else {
            dailyTaskClass.ifButtonPressedTwice("helmet", points: 3)
        }
    }
    //MARK:HonoringParentsButtonDidTouch
    @IBAction func honoringParentsButtonDidTouch(_ sender: AnyObject) {
        //When the button is touch it will send the infomation to the dailyTaskClass.ifButtonPressed and it will retun a new value to the armor pieces
        if(dailyButtonChange.changeButtonDidTouchDay(honoringParentsButton,buttonDelfaultObject: button8,buttonNumber: "7") == true){
            dailyTaskClass.ifButtonPressed("helmet", points: 1)
            dailyTaskClass.ifButtonPressed("breastPlates", points: 3)
            dailyTaskClass.ifButtonPressed("sword", points: 5)
            dailyTaskClass.ifButtonPressed("shield", points: 1)
            dailyTaskClass.ifButtonPressed("loins", points: 1)
            dailyTaskClass.ifButtonPressed("feet", points: 2)
        }
        else{
            dailyTaskClass.ifButtonPressedTwice("helmet", points: 1)
            dailyTaskClass.ifButtonPressedTwice("breastPlates", points: 3)
            dailyTaskClass.ifButtonPressedTwice("sword", points: 5)
            dailyTaskClass.ifButtonPressedTwice("shield", points: 1)
            dailyTaskClass.ifButtonPressedTwice("loins", points: 1)
            dailyTaskClass.ifButtonPressedTwice("feet", points: 2)
        }
    }
    
    //MARK:ViewWillAppear
    override func viewWillAppear(_ animated: Bool) {
        dailyButtonChange.verifyButtonImageDay(redingScripturesButton,buttonDelfaultObject: button1,buttonNumber: "O")
//        dailyButtonChange.verifyButtonImageDay(dailyMorningPrayerButton,buttonDelfaultObject: button2,buttonNumber: "1")
        dailyButtonChange.verifyButtonImageDay(dailyPrayerButton,buttonDelfaultObject: button3,buttonNumber: "2")
        dailyButtonChange.verifyButtonImageDay(partakingWorthilyOfTheSacrament,buttonDelfaultObject: button4,buttonNumber: "3")
        dailyButtonChange.verifyButtonImageDay(redingConferenceTalkButton,buttonDelfaultObject: button5,buttonNumber: "4")
        dailyButtonChange.verifyButtonImageDay(helpingOthersButton,buttonDelfaultObject: button6,buttonNumber: "5")
        dailyButtonChange.verifyButtonImageDay(churchAttendanceButton,buttonDelfaultObject: button7,buttonNumber: "6")
        dailyButtonChange.verifyButtonImageDay(honoringParentsButton,buttonDelfaultObject: button8,buttonNumber: "7")
        
        if(activeLastTime.checkDays(checkDefaults) == true){

        }
        else{
            if(helmet.value(forKey: "valueHelmet") as! Int > 0){
                var newValue = helmet.value(forKey: "valueHelmet") as! Int
                newValue = newValue - 5
                helmet.set(newValue, forKey: "valueHelmet")
            }
            if(breastPlates.value(forKey: "valueBreastPlates") as! Int > 0){
                var newValue = breastPlates.value(forKey: "valueBreastPlates") as! Int
                newValue = newValue - 5
                breastPlates.set(newValue, forKey: "valueBreastPlates")
            }
            if(sword.value(forKey: "valueSword") as! Int > 0){
                var newValue = sword.value(forKey: "valueSword") as! Int
                newValue = newValue - 5
                sword.set(newValue, forKey: "valueSword")
            }
            if(shield.value(forKey: "valueShield") as! Int > 0){
                var newValue = shield.value(forKey: "valueShield") as! Int
                newValue = newValue - 5
                shield.set(newValue, forKey: "valueShield")
            }
            if(loins.value(forKey: "valueLoins") as! Int > 0){
               var newValue = loins.value(forKey: "valueLoins") as! Int
                newValue = newValue - 5
                loins.set(newValue, forKey: "valueLoins")
            }
            if(feet.value(forKey: "valueFeet") as! Int > 0){
                var newValue = feet.value(forKey: "valueFeet") as! Int
                newValue = newValue - 5
                feet.set(newValue, forKey: "valueFeet")
            }
            
        }
        
        
    }
}
