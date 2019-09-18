//
//  ViewController.swift
//  FoodTracker
//
//  Created by 岡本怜也 on 2019/09/02.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{
    //MARK: Properties
    
    @IBOutlet weak var nameTextFIeld: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Handle the text field's user input through delegate callbacks.
        nameTextFIeld.delegate = self
    }

    //MARK:UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        //Hide the Keoboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    //MARK:Actions
    @IBAction func SetDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
}

