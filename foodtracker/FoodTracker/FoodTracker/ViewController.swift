//
//  ViewController.swift
//  FoodTracker
//
//  Created by 岡本怜也 on 2019/09/02.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Properties
    
    @IBOutlet weak var nameTextFIeld: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK:Actions
    @IBAction func SetDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
}

