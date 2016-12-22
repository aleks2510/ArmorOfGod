//
//  StatsViewController.swift
//  ArmorOfGod
//
//  Created by Alejandro Lopez on 7/27/16.
//  Copyright © 2016 LDSBC. All rights reserved.
//

import UIKit

class StatsViewController: UIViewController {
    //Outlet Variables
    @IBOutlet var helmetProgressBarImage: UIImageView!
    @IBOutlet var swordProgressBarImage: UIImageView!
    @IBOutlet var shieldProgressBarImage: UIImageView!
    @IBOutlet var breastplatesProgressBarImage: UIImageView!
    @IBOutlet var beltProgressBarImage: UIImageView!
    @IBOutlet var shoesProgressBarImage: UIImageView!
    //Variables
    let progressClasshelmet = ProgressBar()
    let progressClassSword = ProgressBar()
    let progressClassShield = ProgressBar()
    let progressClassBreastPlates = ProgressBar()
    let progressClassLoins = ProgressBar()
    let progressClassFeet = ProgressBar()
    
    let arrayOfTitles = [
        "Helmet":"Ephesians 6:17\nPray to find opportunities to serve others\nServing the Lord\nHave you prepared for the Sacrament on Sunday?",
        "Sword":"Ephesians 6:17\nD&C 6:2\nStudy Scriptures\nInvite the Holy Ghost to guide your words",
        "Shield":"Elder Hales Oct. 2013 Strengthening Faith and Testimony\nEphesians 6:16\nEnd your prayer with Thy Will Be Done Lord",
        "Breastplates":"Ephesians 6:14\nElder Hales - April 2013 Stand Strong in Holy Places\nHonor Parents - Are your actions honoring your family name?\nLive as Christ lives\nServe others",
        "Loins":"Ephesians 6:14\nPray to be honest\nVirtue - pray for pure thoughts\nRepentance",
        "Shoes":"Ephesians 6:15\nThe power of the Word - Aprl. 1986 Pres. Ezra Taft Benson\nFinding Peace\nStudy Scriptures \nObedience\nStudy Conference Talks\nPrepare to Partake of the Sacrament"]
    var currentDescription = String()
    var currentTitle = String()
    var currentImageName = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }
    
    //MARK:ViewWillAppear
    override func viewWillAppear(_ animated: Bool) {
        progressClasshelmet.imageChange(helmetProgressBarImage, armorPiece: helmet, valuePiece: "valueHelmet")
        progressClassSword.imageChange(swordProgressBarImage, armorPiece: sword, valuePiece: "valueSword")
        progressClassShield.imageChange(shieldProgressBarImage, armorPiece: shield, valuePiece: "valueShield")
        progressClassBreastPlates.imageChange(breastplatesProgressBarImage, armorPiece: breastPlates, valuePiece: "valueBreastPlates")
        progressClassLoins.imageChange(beltProgressBarImage, armorPiece: loins, valuePiece: "valueLoins")
        progressClassFeet.imageChange(shoesProgressBarImage, armorPiece: feet, valuePiece: "valueFeet")
    }
    
    @IBAction func helmetButtonDidTouch(_ sender: Any) {
        currentDescription = arrayOfTitles["Helmet"]!
        currentTitle = "Helmet"
        currentImageName = "Helmet Icon"
        self.performSegue(withIdentifier: "ArmorPieceDetailedSegue", sender: self)
        
    }
    @IBAction func swordButtonDidTouch(_ sender: Any) {
        currentDescription = arrayOfTitles["Sword"]!
        currentTitle = "Sword"
        currentImageName = "Sword Icon"
        self.performSegue(withIdentifier: "ArmorPieceDetailedSegue", sender: self)
    }
    @IBAction func shieldButtonDidTouch(_ sender: Any) {
        currentDescription = arrayOfTitles["Shield"]!
        currentTitle = "Shield"
        currentImageName = "Shield Icon"
        self.performSegue(withIdentifier: "ArmorPieceDetailedSegue", sender: self)
    }
    @IBAction func breastplatesButtonDidTouch(_ sender: Any) {
        currentDescription = arrayOfTitles["Breastplates"]!
        currentTitle = "Breastplates"
        currentImageName = "Breastplate Icon"
        self.performSegue(withIdentifier: "ArmorPieceDetailedSegue", sender: self)
    }
    @IBAction func beltButtonDidTouch(_ sender: Any) {
        currentDescription = arrayOfTitles["Loins"]!
        currentTitle = "Belt"
        currentImageName = "Belt Icon"
        self.performSegue(withIdentifier: "ArmorPieceDetailedSegue", sender: self)
    }
    @IBAction func shoesButtonDidTouch(_ sender: Any) {
        currentDescription = arrayOfTitles["Shoes"]!
        currentTitle = "Shoes"
        currentImageName = "Shoes Icon"
        self.performSegue(withIdentifier: "ArmorPieceDetailedSegue", sender: self)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "ArmorPieceDetailedSegue"){
            let nextScreen = segue.destination as? ArmorPieceDetailedViewController
            nextScreen?.armorDescription = currentDescription as String!
            nextScreen?.armorTitle = currentTitle as String!
            nextScreen?.armorImageName = currentImageName as String!
        }
    }
    
    
}
