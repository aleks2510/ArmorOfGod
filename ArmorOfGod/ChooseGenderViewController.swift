//
//  MainViewController.swift
//  ArmorOfGod
//
//  Created by Alejandro Lopez on 4/6/16.
//  Copyright © 2016 LDSBC. All rights reserved.
//

import UIKit

var genderL : String = ""


class ChooseGenderViewController: UIViewController {

    //Variables
    let selectGenderFunction = SelectGender()
    @IBOutlet var boyImageView: UIImageView!
    @IBOutlet weak var boy2ImageView: UIImageView!
    @IBOutlet var girlImageView: UIImageView!
    @IBOutlet var girl2ImageView: UIImageView!
    
    //MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        boyImageView.image = UIImage(named: "Boy 1 Selection.png")
        boy2ImageView.image = UIImage(named: "Boy 2 Selection.png")
        girlImageView.image = UIImage(named: "Girl 1 Selection.png")
        girl2ImageView.image = UIImage(named: "Girl 2 Selection.png")
        
    }
    //This method will return a gender according to what option you selected
    @IBAction func boySelectButtonDidTouch(_ sender: AnyObject) {
        selectGenderFunction.boySelection()
       self.dismiss(animated: true, completion: nil)
    }
    @IBAction func boy2SelecButtonDidTouch(_ sender: Any) {
        selectGenderFunction.boy2Selection()
        self.dismiss(animated: true, completion: nil)
    }
    //This method will return a gender according to what option you selected
    @IBAction func girlSelectButtonDidTouch(_ sender: AnyObject) {
        selectGenderFunction.girlSelection()
       self.dismiss(animated: true, completion: nil)
    }
    //This method will return a gender according to what option you selected
    @IBAction func girl2SelectButtonDidTouch(_ sender: AnyObject) {
        selectGenderFunction.girl2Selection()
        self.dismiss(animated: true, completion: nil)
    }
    //When tthe user leaves the activity it will save the gender selected
    override func viewWillDisappear(_ animated: Bool) {
        if(userDefaults.value(forKey: "gender") != nil){
            genderL = userDefaults.value(forKey: "gender") as! String
             userDefaults.synchronize()
        }
    }
   
}
