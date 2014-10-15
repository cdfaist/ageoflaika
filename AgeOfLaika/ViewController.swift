//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Craig Faist on 10/14/14.
//  Copyright (c) 2014 Contexture Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageHumanYears: UITextField!
    @IBOutlet weak var ageDogYears: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsPressed(sender: UIButton) {
        let yearsFromHumanYearsTextField = ageHumanYears.text.toInt()!

//        let yearsFromHumanYearsTextField = Double((ageHumanYears.text as NSString).doubleValue)
        ageDogYears.hidden = false
        
        ageDogYears.text = "\(yearsFromHumanYearsTextField * 7)"
 
        ageHumanYears.resignFirstResponder()

    }

}

