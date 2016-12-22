//
//  HomescreenViewController.swift
//  ArmorOfGod
//
//  Created by Alejandro Lopez on 7/13/16.
//  Copyright © 2016 LDSBC. All rights reserved.
//

import UIKit
let userDefaults = UserDefaults.standard
class HomescreenViewController: UIViewController {
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var userCharacterImgeView: UIImageView!
    @IBOutlet var helmetImageView: UIImageView!
    @IBOutlet var shoeImageView: UIImageView!
    @IBOutlet var breastplatesImageView: UIImageView!
    @IBOutlet var beltImageView: UIImageView!
    @IBOutlet var shieldImageView: UIImageView!
    @IBOutlet var swordImageView: UIImageView!
    let helmetImage = ArmorImage()
    let swordImage = ArmorImage()
    let shieldImage = ArmorImage()
    let breastplatesImage = ArmorImage()
    let loinsImage = ArmorImage()
    let feetImage = ArmorImage()
    @IBOutlet var backgroundUIImage: UIImageView!
    
    var genderChoice = String()
    var something = userDefaults
    var checkHour = HourChecker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
     
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        greetingLabel.text = checkHour.checkHour(background: backgroundUIImage)
        if(userDefaults.value(forKey: "gender") == nil){
            userDefaults.setValue("Boy", forKey: "gender")
            userDefaults.synchronize()
            genderL = userDefaults.value(forKey: "gender") as! String
        }
        else if(userDefaults.value(forKey: "gender") != nil){
            genderL = userDefaults.value(forKey: "gender") as! String
            userDefaults.synchronize()
        }
        if(genderL == "Boy" || genderL == "Girl" || genderL == "Girl 2" || genderL == "Boy 2"){
            userCharacterImgeView.image = UIImage(named: userDefaults.string(forKey: "gender")!)
        }

        if(genderL == "Boy" || genderL == "Boy 2"){
            helmetImage.selectArmorBoy(helmetImageView, armorPiece: helmet, valuePiece: "valueHelmet")
            swordImage.selectArmorBoy(swordImageView, armorPiece: sword, valuePiece: "valueSword")
            shieldImage.selectArmorBoy(shieldImageView, armorPiece: shield, valuePiece: "valueShield")
            breastplatesImage.selectArmorBoy(breastplatesImageView, armorPiece: breastPlates, valuePiece: "valueBreastPlates")
            loinsImage.selectArmorBoy(beltImageView, armorPiece:loins, valuePiece: "valueLoins")
            feetImage.selectArmorBoy(shoeImageView, armorPiece: feet, valuePiece: "valueFeet")
            
            
            
        }
        if(genderL == "Girl" || genderL == "Girl 2"){
            helmetImage.selectArmorGirl(helmetImageView, armorPiece: helmet, valuePiece: "valueHelmet")
            swordImage.selectArmorGirl(swordImageView, armorPiece: sword, valuePiece: "valueSword")
            shieldImage.selectArmorGirl(shieldImageView, armorPiece: shield, valuePiece: "valueShield")
            breastplatesImage.selectArmorGirl(breastplatesImageView, armorPiece: breastPlates, valuePiece: "valueBreastPlates")
            loinsImage.selectArmorGirl(beltImageView, armorPiece:loins, valuePiece: "valueLoins")
            feetImage.selectArmorGirl(shoeImageView, armorPiece: feet, valuePiece: "valueFeet")
    

        }
        
        
        
    }
    

    }
