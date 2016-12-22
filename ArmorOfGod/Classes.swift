//
//  Functions.swift
//  ArmorOfGod
//
//  Created by Alejandro Lopez on 7/20/16.
//  Copyright © 2016 LDSBC. All rights reserved.
//

import Foundation
import UIKit

class ActiveLastTime {
    
    func checkDays(_ checkDefaultObject: UserDefaults) -> Bool{
        let date = Date();
        let calendar = NSCalendar.current
        let valueKeyday = "day"
        let valueKeyhour = "hour"
        let valueKeymonth = "month"
        let valueKeyyear = "year"
        let valueKeyminute = "minute"
        let checkObject = checkDefaultObject.value(forKey: "checkNumber")
        let checkObjectMonth = checkDefaultObject.value(forKey: valueKeymonth)
        let checkObjectDay = checkDefaultObject.value(forKey: valueKeyday)
        let firstComponentDay = calendar.component(.day, from: date)
        let firstComponentMonth = calendar.component(.month, from: date)
        let firstComponentYear = calendar.component(.year, from: date)
        let firstComponentHour = calendar.component(.hour, from: date);
        let firstComponentMinute = calendar.component(.minute, from: date);
        var verify:Bool
        
        
        if(checkObject == nil){
            checkDefaultObject.set(1, forKey: "checkNumber")
            checkDefaultObject.set(firstComponentDay, forKey: valueKeyday)
            checkDefaultObject.set(firstComponentMonth, forKey: valueKeymonth)
            checkDefaultObject.set(firstComponentYear, forKey: valueKeyyear)
            checkDefaultObject.set(firstComponentHour, forKey: valueKeyhour)
            checkDefaultObject.set(firstComponentMinute, forKey: valueKeyminute)
            checkDefaultObject.synchronize()
            verify = true
        }
        else {
            //If it is the same Day you will keep your points
            if((firstComponentDay - (checkObjectDay as! Int) ) == 1 || (firstComponentDay - (checkObjectDay as! Int) ) == 0){
                checkDefaultObject.setValue(1, forKey: "checkNumber")
                checkDefaultObject.set(firstComponentDay, forKey: valueKeyday)
                checkDefaultObject.set(firstComponentMonth, forKey: valueKeymonth)
                checkDefaultObject.set(firstComponentYear, forKey: valueKeyyear)
                checkDefaultObject.set(firstComponentHour, forKey: valueKeyhour)
                checkDefaultObject.set(firstComponentMinute, forKey: valueKeyminute)
                checkDefaultObject.synchronize()
                verify = true
            }
            else{
                //If it is not the next number but still it is the next day
                if((firstComponentDay - (checkObjectDay as! Int)) >= -27){
                    //Verify if it is the next month
                    if(firstComponentMonth != checkObjectMonth as! Int){
                        checkDefaultObject.setValue(1, forKey: "checkNumber")
                        checkDefaultObject.set(firstComponentDay, forKey: valueKeyday)
                        checkDefaultObject.set(firstComponentMonth, forKey: valueKeymonth)
                        checkDefaultObject.set(firstComponentYear, forKey: valueKeyyear)
                        checkDefaultObject.set(firstComponentHour, forKey: valueKeyhour)
                        checkDefaultObject.set(firstComponentMinute, forKey: valueKeyminute)
                        checkDefaultObject.synchronize()
                        verify = true
                    }
                    else {
                        checkDefaultObject.setValue(1, forKey: "checkNumber")
                        checkDefaultObject.set(firstComponentDay, forKey: valueKeyday)
                        checkDefaultObject.set(firstComponentMonth, forKey: valueKeymonth)
                        checkDefaultObject.set(firstComponentYear, forKey: valueKeyyear)
                        checkDefaultObject.set(firstComponentHour, forKey: valueKeyhour)
                        checkDefaultObject.set(firstComponentMinute, forKey: valueKeyminute)
                        checkDefaultObject.synchronize()
                        verify = false
                    }
                }
                    //If it is not the next number nor the next day send False.
                else {
                    checkDefaultObject.setValue(0, forKey: "checkNumber")
                    checkDefaultObject.set(firstComponentDay, forKey: valueKeyday)
                    checkDefaultObject.set(firstComponentMonth, forKey: valueKeymonth)
                    checkDefaultObject.set(firstComponentYear, forKey: valueKeyyear)
                    checkDefaultObject.set(firstComponentHour, forKey: valueKeyhour)
                    checkDefaultObject.set(firstComponentMinute, forKey: valueKeyminute)
                    checkDefaultObject.synchronize()
                    verify = false
                }
                }
        }
    return verify
    }
    func checkMinutes(_ checkDefaultObject: UserDefaults) -> Bool {
        let date = Date();
        let calendar = NSCalendar.current
        let valueKeyday = "day"
        let valueKeyhour = "hour"
        let valueKeymonth = "month"
        let valueKeyyear = "year"
        let valueKeyminute = "minute"
        let checkObject = checkDefaultObject.value(forKey: "checkNumber")
        let checkObjectMinute = checkDefaultObject.value(forKey: valueKeyminute)
        let checkObjectHour = checkDefaultObject.value(forKey: valueKeyhour)
        let firstComponentDay = calendar.component(.day, from: date)
        let firstComponentMonth = calendar.component(.month, from: date)
        let firstComponentYear = calendar.component(.year, from: date)
        let firstComponentHour = calendar.component(.hour, from: date);
        let firstComponentMinute = calendar.component(.minute, from: date);
        var verify:Bool
        
        if(checkObject == nil){
            checkDefaultObject.set(1, forKey: "checkNumber")
            checkDefaultObject.set(firstComponentDay, forKey: valueKeyday)
            checkDefaultObject.set(firstComponentMonth, forKey: valueKeymonth)
            checkDefaultObject.set(firstComponentYear, forKey: valueKeyyear)
            checkDefaultObject.set(firstComponentHour, forKey: valueKeyhour)
            checkDefaultObject.set(firstComponentMinute, forKey: valueKeyminute)
            checkDefaultObject.synchronize()
            verify = true
            print("MARK 1")
        }
        else {
            //If it is the same MINUTE you will keep your points
            if((firstComponentMinute - (checkObjectMinute as! Int) ) == 1 || (firstComponentMinute - (checkObjectMinute as! Int) ) == 0){
                checkDefaultObject.setValue(1, forKey: "checkNumber")
                checkDefaultObject.set(firstComponentDay, forKey: valueKeyday)
                checkDefaultObject.set(firstComponentMonth, forKey: valueKeymonth)
                checkDefaultObject.set(firstComponentYear, forKey: valueKeyyear)
                checkDefaultObject.set(firstComponentHour, forKey: valueKeyhour)
                checkDefaultObject.set(firstComponentMinute, forKey: valueKeyminute)
                checkDefaultObject.synchronize()
                verify = true
                print("It is the same minute or the next one" )
                print("MARK 2")
            }
           
            else{
                //If it is not the next number but still it is the next minute
                if((firstComponentMinute - (checkObjectMinute as! Int)) <= -59){
                    //Verify if it is the next hour
                    if(firstComponentHour != checkObjectHour as! Int){
                        checkDefaultObject.setValue(1, forKey: "checkNumber")
                        checkDefaultObject.set(firstComponentDay, forKey: valueKeyday)
                        checkDefaultObject.set(firstComponentMonth, forKey: valueKeymonth)
                        checkDefaultObject.set(firstComponentYear, forKey: valueKeyyear)
                        checkDefaultObject.set(firstComponentHour, forKey: valueKeyhour)
                        checkDefaultObject.set(firstComponentMinute, forKey: valueKeyminute)
                        checkDefaultObject.synchronize()
                        verify = true
                        print("It is the next minute but not Hour")
                        print("MARK 3")
                    }
                    else {
                        verify = false
                        print("MARK 4")
                    }
                }
                    //If it is not the next number nor the next day send False.
                else {
                    checkDefaultObject.setValue(0, forKey: "checkNumber")
                    checkDefaultObject.set(firstComponentDay, forKey: valueKeyday)
                    checkDefaultObject.set(firstComponentMonth, forKey: valueKeymonth)
                    checkDefaultObject.set(firstComponentYear, forKey: valueKeyyear)
                    checkDefaultObject.set(firstComponentHour, forKey: valueKeyhour)
                    checkDefaultObject.set(firstComponentMinute, forKey: valueKeyminute)
                    checkDefaultObject.synchronize()
                    verify = false
                    print("It is more than a minute or two and not the next hour")
                    print("MARK 5")
                }
            }
        }
        return verify
    }
    
}

class SelectGender {
    func boySelection() -> Void {
        genderL = "Boy"
        userDefaults.setValue(genderL, forKey: "gender")
        userDefaults.synchronize()
    }
    func boy2Selection() -> Void {
        genderL = "Boy 2"
        userDefaults.setValue(genderL, forKey: "gender")
        userDefaults.synchronize()
    }
    func girlSelection() -> Void {
    genderL = "Girl"
    userDefaults.setValue(genderL, forKey: "gender")
    userDefaults.synchronize()
    }
    func girl2Selection() -> Void {
        genderL = "Girl 2"
        userDefaults.setValue(genderL, forKey: "gender")
        userDefaults.synchronize()
    }
}

class HourChecker {
    func checkHour(background: UIImageView) -> String {
        var text:String = "Hello"
        let date = Date()
        let calendar = NSCalendar.current
        if(calendar.component(.hour, from: date) >= 6 && calendar.component(.hour, from: date) <= 12){
            text = "Good Morning!"
            background.image = UIImage(named: "BackGround Morning.png")
            
        }
        else if(calendar.component(.hour, from: date) > 12 && calendar.component(.hour, from: date) < 18){
            text = "Good Afternoon!"
            background.image = UIImage(named: "BackGround Afternoon.png")
        }
        else {
            text = "Good Evening!"
            background.image = UIImage(named: "BackGround Night.png")
        }
        return text
    }

}

class DailyButtons{
    func ifButtonPressedTwice(_ armorPiece: String, points: Int){
        if(armorPiece == "helmet"){
            helmet.set(helmet.value(forKey: "valueHelmet") as! NSInteger - points, forKey: "valueHelmet")
            helmet.synchronize()
        }
        else if(armorPiece == "breastPlates"){
            breastPlates.set(breastPlates.value(forKey: "valueBreastPlates") as! NSInteger - points, forKey: "valueBreastPlates")
            breastPlates.synchronize()
        }
        else if(armorPiece == "sword"){
            sword.set(sword.value(forKey: "valueSword") as! NSInteger - points, forKey: "valueSword")
            sword.synchronize()
        }
        else if(armorPiece == "shield"){
            shield.set(shield.value(forKey: "valueShield") as! NSInteger - points, forKey: "valueShield")
            shield.synchronize()
        }
        else if(armorPiece == "loins"){
            loins.set(loins.value(forKey: "valueLoins") as! NSInteger - points, forKey: "valueLoins")
            loins.synchronize()
        }
        else{
                feet.set(feet.value(forKey: "valueFeet") as! NSInteger - points, forKey: "valueFeet")
                feet.synchronize()
            
        }
    }
    
    func ifButtonPressed(_ armorPiece: String, points: Int){
        
        if(armorPiece == "helmet"){
            if(helmet.value(forKey: "valueHelmet") == nil){
                helmet.set(1, forKey: "valueHelmet")
                helmet.synchronize()
                
            }
            else{
                helmet.set(helmet.value(forKey: "valueHelmet") as! NSInteger + points, forKey: "valueHelmet")
                helmet.synchronize()
            }
        }
        else if(armorPiece == "breastPlates"){
            if(breastPlates.value(forKey: "valueBreastPlates") == nil){
                breastPlates.set(1, forKey: "valueBreastPlates")
                breastPlates.synchronize()
            }
            else{
                breastPlates.set(breastPlates.value(forKey: "valueBreastPlates") as! NSInteger + points, forKey: "valueBreastPlates")
                breastPlates.synchronize()
            }
        }
        else if(armorPiece == "sword"){
            if(sword.value(forKey: "valueSword") == nil){
                sword.set(1, forKey: "valueSword")
                sword.synchronize()
            }
            else{
                sword.set(sword.value(forKey: "valueSword") as! NSInteger + points, forKey: "valueSword")
                sword.synchronize()
            }
        }
        else if(armorPiece == "shield"){
            if(shield.value(forKey: "valueShield") == nil){
                shield.set(1, forKey: "valueShield")
                shield.synchronize()
            }
            else{
                shield.set(shield.value(forKey: "valueShield") as! NSInteger + points, forKey: "valueShield")
                shield.synchronize()
            }
        }
        else if(armorPiece == "loins"){
            if(loins.value(forKey: "valueLoins") == nil){
                loins.set(1, forKey: "valueLoins")
                loins.synchronize()
            }
            else{
                loins.set(loins.value(forKey: "valueLoins") as! NSInteger + points, forKey: "valueLoins")
                loins.synchronize()
            }
        }
        else if(armorPiece == "removeAll"){
            helmet.set(0, forKey: "valueHelmet")
            helmet.set(0, forKey: "valueBreastPlates")
            helmet.set(0, forKey: "valueSword")
            helmet.set(0, forKey: "valueShield")
            helmet.set(0, forKey: "valueLoins")
            helmet.set(0, forKey: "valueFeet")
        }
        else{
            if(feet.value(forKey: "valueFeet") == nil){
                feet.set(1, forKey: "valueFeet")
                feet.synchronize()
            }
            else{
                feet.set(feet.value(forKey: "valueFeet") as! NSInteger + points, forKey: "valueFeet")
                feet.synchronize()
            }
        }
        
 
        
    }
}

class DailyButtonChange{
    
    //This function will check if you have pressed a button during the same minute
    func changeButtonDidTouchMinute(_ button:UIButton, buttonDelfaultObject:UserDefaults, buttonNumber: String) -> Bool{
        let date = Date();
        let calendar = NSCalendar.current
        let valueKeyday = "day" + buttonNumber
        let valueKeyhour = "hour" + buttonNumber
        let valueKeymonth = "month" + buttonNumber
        let valueKeyyear = "year" + buttonNumber
        let valueKeyminute = "minute" + buttonNumber
        let buttonObject = buttonDelfaultObject.value(forKey: buttonNumber)
        let ButtonObjectMinute = buttonDelfaultObject.value(forKey: valueKeyminute)
        let firstComponentDay = calendar.component(.day, from: date)
        let firstComponentMonth = calendar.component(.month, from: date)
        let firstComponentYear = calendar.component(.year, from: date)
        let firstComponentHour = calendar.component(.hour, from: date)
        let firstComponentMinute = calendar.component(.minute, from: date)
        var verify:Bool
        
        if(buttonObject == nil){
            button.setImage(UIImage(named: "ButtonPressed"), for: UIControlState())
            buttonDelfaultObject.set(1, forKey: buttonNumber)
            buttonDelfaultObject.set(firstComponentDay, forKey: valueKeyday)
            buttonDelfaultObject.set(firstComponentMonth, forKey: valueKeymonth)
            buttonDelfaultObject.set(firstComponentYear, forKey: valueKeyyear)
            buttonDelfaultObject.set(firstComponentHour, forKey: valueKeyhour)
            buttonDelfaultObject.set(firstComponentMinute, forKey: valueKeyminute)
            buttonDelfaultObject.synchronize()
            verify = true
        }
        else {
            //If it is the same Day you cannot select the same button
            
            if(buttonDelfaultObject.value(forKey: buttonNumber) as! Int == 1){
                
                
                if(ButtonObjectMinute as! Int != firstComponentMinute){
                    button.setImage(UIImage(named: "ButtonPressed"), for: UIControlState())
                    buttonDelfaultObject.setValue(1, forKey: buttonNumber)
                    buttonDelfaultObject.set(firstComponentDay, forKey: valueKeyday)
                    buttonDelfaultObject.set(firstComponentMonth, forKey: valueKeymonth)
                    buttonDelfaultObject.set(firstComponentYear, forKey: valueKeyyear)
                    buttonDelfaultObject.set(firstComponentHour, forKey: valueKeyhour)
                    buttonDelfaultObject.set(firstComponentMinute, forKey: valueKeyminute)
                    buttonDelfaultObject.synchronize()
                    verify = true
                }
                else {
                    button.setImage(UIImage(named: "ButtonUnpressed"), for: UIControlState())
                    buttonDelfaultObject.setValue(0, forKey: buttonNumber)
                    buttonDelfaultObject.set(firstComponentDay, forKey: valueKeyday)
                    buttonDelfaultObject.set(firstComponentMonth, forKey: valueKeymonth)
                    buttonDelfaultObject.set(firstComponentYear, forKey: valueKeyyear)
                    buttonDelfaultObject.set(firstComponentHour, forKey: valueKeyhour)
                    buttonDelfaultObject.set(firstComponentMinute, forKey: valueKeyminute)
                    buttonDelfaultObject.synchronize()
                    verify = false
                    
                }
                
            }
            else{
                button.setImage(UIImage(named: "ButtonPressed"), for: UIControlState())
                buttonDelfaultObject.setValue(1, forKey: buttonNumber)
                buttonDelfaultObject.set(firstComponentDay, forKey: valueKeyday)
                buttonDelfaultObject.set(firstComponentMonth, forKey: valueKeymonth)
                buttonDelfaultObject.set(firstComponentYear, forKey: valueKeyyear)
                buttonDelfaultObject.set(firstComponentHour, forKey: valueKeyhour)
                buttonDelfaultObject.set(firstComponentMinute, forKey: valueKeyminute)
                buttonDelfaultObject.synchronize()
                verify = true
            }
            
            
        }
        return verify
        
        
    }
  
    //This function will check if you have pressed a button during the same day
    func changeButtonDidTouchDay(_ button:UIButton, buttonDelfaultObject:UserDefaults, buttonNumber: String) -> Bool{
        let date = Date();
        let calendar = NSCalendar.current
        let valueKeyday = "day" + buttonNumber
        let valueKeyhour = "hour" + buttonNumber
        let valueKeymonth = "month" + buttonNumber
        let valueKeyyear = "year" + buttonNumber
        let valueKeyminute = "minute" + buttonNumber
        let buttonObject = buttonDelfaultObject.value(forKey: buttonNumber)
        let ButtonObjectDay = buttonDelfaultObject.value(forKey: valueKeyday)
        let firstComponentDay = calendar.component(.day, from: date)
        let firstComponentMonth = calendar.component(.month, from: date)
        let firstComponentYear = calendar.component(.year, from: date)
        let firstComponentHour = calendar.component(.hour, from: date);
        let firstComponentMinute = calendar.component(.minute, from: date);
        var verify:Bool
        
        if(buttonObject == nil){
            button.setImage(UIImage(named: "ButtonPressed"), for: UIControlState())
            buttonDelfaultObject.set(1, forKey: buttonNumber)
            buttonDelfaultObject.set(firstComponentDay, forKey: valueKeyday)
            buttonDelfaultObject.set(firstComponentMonth, forKey: valueKeymonth)
            buttonDelfaultObject.set(firstComponentYear, forKey: valueKeyyear)
            buttonDelfaultObject.set(firstComponentHour, forKey: valueKeyhour)
            buttonDelfaultObject.set(firstComponentMinute, forKey: valueKeyminute)
            buttonDelfaultObject.synchronize()
            verify = true
        }
        else {
            //If it is the same Day you cannot select the same button
            
            if(buttonDelfaultObject.value(forKey: buttonNumber) as! Int == 1){
            
            
                if(ButtonObjectDay as! Int != firstComponentDay){
                    button.setImage(UIImage(named: "ButtonPressed"), for: UIControlState())
                    buttonDelfaultObject.setValue(1, forKey: buttonNumber)
                    buttonDelfaultObject.set(firstComponentDay, forKey: valueKeyday)
                    buttonDelfaultObject.set(firstComponentMonth, forKey: valueKeymonth)
                    buttonDelfaultObject.set(firstComponentYear, forKey: valueKeyyear)
                    buttonDelfaultObject.set(firstComponentHour, forKey: valueKeyhour)
                    buttonDelfaultObject.set(firstComponentMinute, forKey: valueKeyminute)
                    buttonDelfaultObject.synchronize()
                    verify = true
                }
                else {
                    button.setImage(UIImage(named: "ButtonUnpressed"), for: UIControlState())
                    buttonDelfaultObject.setValue(0, forKey: buttonNumber)
                    buttonDelfaultObject.set(firstComponentDay, forKey: valueKeyday)
                    buttonDelfaultObject.set(firstComponentMonth, forKey: valueKeymonth)
                    buttonDelfaultObject.set(firstComponentYear, forKey: valueKeyyear)
                    buttonDelfaultObject.set(firstComponentHour, forKey: valueKeyhour)
                    buttonDelfaultObject.set(firstComponentMinute, forKey: valueKeyminute)
                    buttonDelfaultObject.synchronize()
                    verify = false
                    
                }

            }
            else{
                button.setImage(UIImage(named: "ButtonPressed"), for: UIControlState())
                buttonDelfaultObject.setValue(1, forKey: buttonNumber)
                buttonDelfaultObject.set(firstComponentDay, forKey: valueKeyday)
                buttonDelfaultObject.set(firstComponentMonth, forKey: valueKeymonth)
                buttonDelfaultObject.set(firstComponentYear, forKey: valueKeyyear)
                buttonDelfaultObject.set(firstComponentHour, forKey: valueKeyhour)
                buttonDelfaultObject.set(firstComponentMinute, forKey: valueKeyminute)
                buttonDelfaultObject.synchronize()
                verify = true
            }

            
        }
        return verify
    }
    
    //This Function will see if you hve already pressed the button during the same minute
    func verifyButtonImageMinute(_ button:UIButton, buttonDelfaultObject:UserDefaults, buttonNumber: String){
        let date = Date();
        let calendar = NSCalendar.current
        let valueKeyminute = "minute" + buttonNumber
        let buttonObject = buttonDelfaultObject.value(forKey: buttonNumber)
        let ButtonObjectMinute = buttonDelfaultObject.value(forKey: valueKeyminute)
        let firstComponentMinute = calendar.component(.minute, from: date)
        if(buttonObject == nil){
            button.setImage(UIImage(named: "ButtonUnpressed"), for: UIControlState())
        }
        else {
            if(ButtonObjectMinute as! Int != firstComponentMinute){
            button.setImage(UIImage(named: "ButtonUnpressed"), for: UIControlState())
        }
            else{
                if(buttonDelfaultObject.value(forKey: buttonNumber) as! Int == 0){
                    button.setImage(UIImage(named: "ButtonUnpressed"), for: UIControlState())
                }
                else{
                    button.setImage(UIImage(named: "ButtonPressed"), for: UIControlState())
                }
            }

        }
    }
    
    //This Function will see if you have already pressed the Button during the same day
    
    func verifyButtonImageDay(_ button:UIButton, buttonDelfaultObject:UserDefaults, buttonNumber: String){
        let date = Date();
        let calendar = NSCalendar.current
        let valueKeyDay = "day" + buttonNumber
        let ButtonObjectDay = buttonDelfaultObject.value(forKey: valueKeyDay)
        let firstComponentDay = calendar.component(.day, from: date)
        let buttonObject = buttonDelfaultObject.value(forKey: buttonNumber)
        if(buttonObject == nil){
            button.setImage(UIImage(named: "ButtonUnpressed"), for: UIControlState())
        }
        else {
            if(ButtonObjectDay as! Int != firstComponentDay){
                button.setImage(UIImage(named: "ButtonUnpressed"), for: UIControlState())
            }
            else{
                if(buttonDelfaultObject.value(forKey: buttonNumber) as! Int == 0){
                    button.setImage(UIImage(named: "ButtonUnpressed"), for: UIControlState())
                }
                else{
                    button.setImage(UIImage(named: "ButtonPressed"), for: UIControlState())
                }
            }
            
        }
    }
}

class ProgressBar{
    func imageChange(_ progressbarImage:UIImageView, armorPiece:UserDefaults,valuePiece: String){
        var value = 0
        if(armorPiece.value(forKey: valuePiece) != nil){
            value = armorPiece.value(forKey: valuePiece) as! Int
            if(armorPiece.value(forKey: valuePiece) as! Int > 100){
                value = 100
            }
            else{
                if(0 > armorPiece.value(forKey: valuePiece) as! Int ){
                    value = 0
                }
            }
            
            
            
        }
        else{
            value = 0;
        }
        let numberValue :NSNumber = value as NSNumber
        let imageString = "Progress Bar " + numberValue.stringValue
        progressbarImage.image = UIImage(named: imageString)
    }
}

class ArmorImage{
    func selectArmorBoy(_ armorPieceImage:UIImageView, armorPiece:UserDefaults,valuePiece:String){
       
        var value = 0
        if(armorPiece.value(forKey: valuePiece) != nil){
            value = armorPiece.value(forKey: valuePiece) as! Int
        }
        else{
            value = 0;
        }
        switch valuePiece {
        case "valueHelmet":
            if(value < 33){
                let imageString = "Helmet-Low-Boy"
                armorPieceImage.image = UIImage(named: imageString)
            }
            else if(value >= 33 && value < 66){
                let imageString = "Helmet-Medium-Boy"
                armorPieceImage.image = UIImage(named: imageString)
            }
            else {
                let imageString = "Helmet-High-Boy"
                armorPieceImage.image = UIImage(named: imageString)
            }
        case "valueSword":
            if(value < 33){
                let imageString = "Sword-Low-Boy"
                armorPieceImage.image = UIImage(named: imageString)
            }
            else if(value >= 33 && value < 66){
                let imageString = "Sword-Medium-Boy"
                armorPieceImage.image = UIImage(named: imageString)
            }
            else {
                let imageString = "Sword-High-Boy"
                armorPieceImage.image = UIImage(named: imageString)
            }
        case "valueShield":
            if(value < 33){
                let imageString = "Shield-Low-Boy"
                armorPieceImage.image = UIImage(named: imageString)
            }
            else if(value >= 33 && value < 66){
                let imageString = "Shield-Medium-Boy"
                armorPieceImage.image = UIImage(named: imageString)
            }
            else {
                let imageString = "Shield-High-Boy"
                armorPieceImage.image = UIImage(named: imageString)
            }
        case "valueBreastPlates":
            if(value < 33){
                let imageString = "Breastplates-Low-Boy"
                armorPieceImage.image = UIImage(named: imageString)
            }
            else if(value >= 33 && value < 66){
                let imageString = "Breastplates-Medium-Boy"
                armorPieceImage.image = UIImage(named: imageString)
            }
            else {
                let imageString = "Breastplates-High-Boy"
                armorPieceImage.image = UIImage(named: imageString)
            }
        case "valueLoins":
            if(value < 33){
                let imageString = "Belt-Low-Boy"
                armorPieceImage.image = UIImage(named: imageString)
            }
            else if(value >= 33 && value < 66){
                let imageString = "Belt-Medium-Boy"
                armorPieceImage.image = UIImage(named: imageString)
            }
            else {
                let imageString = "Belt-High-Boy"
                armorPieceImage.image = UIImage(named: imageString)
            }
        case "valueFeet":
            if(value < 33){
                let imageString = "Shoes-Low-Boy"
                armorPieceImage.image = UIImage(named: imageString)
            }
            else if(value >= 33 && value < 66){
                let imageString = "Shoes-Medium-Boy"
                armorPieceImage.image = UIImage(named: imageString)
            }
            else {
                let imageString = "Shoes-High-Boy"
                armorPieceImage.image = UIImage(named: imageString)
            }
        default:
            print("Error in Selecting picture for boy")
        }
    }
    func selectArmorGirl(_ armorPieceImage:UIImageView, armorPiece:UserDefaults,valuePiece:String){
        
        var value = 0
        if(armorPiece.value(forKey: valuePiece) != nil){
            value = armorPiece.value(forKey: valuePiece) as! Int
        }
        else{
            value = 0;
        }
        
        switch valuePiece {
        case "valueHelmet":
            if(value < 33){
                let imageString = "Helmet-Low-Girl"
                armorPieceImage.image = UIImage(named: imageString)
            }
            else if(value >= 33 && value < 66){
                let imageString = "Helmet-Medium-Girl"
                armorPieceImage.image = UIImage(named: imageString)
            }
            else {
                let imageString = "Helmet-High-Girl"
                armorPieceImage.image = UIImage(named: imageString)
            }
        case "valueSword":
            if(value < 33){
                let imageString = "Sword-Low-Girl"
                armorPieceImage.image = UIImage(named: imageString)
            }
            else if(value >= 33 && value < 66){
                let imageString = "Sword-Medium-Girl"
                armorPieceImage.image = UIImage(named: imageString)
            }
            else {
                let imageString = "Sword-High-Girl"
                armorPieceImage.image = UIImage(named: imageString)
            }
        case "valueShield":
            if(value < 33){
                let imageString = "Shield-Low-Girl"
                armorPieceImage.image = UIImage(named: imageString)
            }
            else if(value >= 33 && value < 66){
                let imageString = "Shield-Medium-Girl"
                armorPieceImage.image = UIImage(named: imageString)
            }
            else {
                let imageString = "Shield-High-Girl"
                armorPieceImage.image = UIImage(named: imageString)
            }
        case "valueBreastPlates":
            if(value < 33){
                let imageString = "Breastplates-Low-Girl"
                armorPieceImage.image = UIImage(named: imageString)
            }
            else if(value >= 33 && value < 66){
                let imageString = "Breastplates-Medium-Girl"
                armorPieceImage.image = UIImage(named: imageString)
            }
            else {
                let imageString = "Breastplates-High-Girl"
                armorPieceImage.image = UIImage(named: imageString)
            }
        case "valueLoins":
            if(value < 33){
                let imageString = "Belt-Low-Girl"
                armorPieceImage.image = UIImage(named: imageString)
            }
            else if(value >= 33 && value < 66){
                let imageString = "Belt-Medium-Girl"
                armorPieceImage.image = UIImage(named: imageString)
            }
            else {
                let imageString = "Belt-High-Girl"
                armorPieceImage.image = UIImage(named: imageString)
            }
        case "valueFeet":
            if(value < 33){
                let imageString = "Shoes-Low-Girl"
                armorPieceImage.image = UIImage(named: imageString)
            }
            else if(value >= 33 && value < 66){
                let imageString = "Shoes-Medium-Girl"
                armorPieceImage.image = UIImage(named: imageString)
            }
            else {
                let imageString = "Shoes-High-Girl"
                armorPieceImage.image = UIImage(named: imageString)
            }
        default:
            print("Error in Selecting picture for Girl")
        }
    }}
