//
//  ArmorPieceDetailedViewController.swift
//  ArmorOfGod
//
//  Created by Alejandro Lopez on 11/21/16.
//  Copyright © 2016 LDSBC. All rights reserved.
//

import UIKit
class ArmorPieceDetailedViewController: UIViewController {
    @IBOutlet var armorImageUIView: UIImageView!
    @IBOutlet var armorPieceDescribtionLabel: UILabel!
    @IBOutlet var armorPieceTitleLabel: UILabel!
    var armorTitle = ""
    var armorDescription = ""
    var armorImageName = ""

    @IBAction func backButtonDidTouch(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        armorPieceDescribtionLabel.text = armorDescription
        armorPieceTitleLabel.text = armorTitle
        armorImageUIView.image = UIImage(named: armorImageName)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
