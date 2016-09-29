//
//  ViewController.swift
//  UIControls
//
//  Created by Stannis Baratheon on 29/09/16.
//  Copyright © 2016 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var nameField: UITextField!

    @IBOutlet weak var phoneField: UITextField!
    
    @IBOutlet weak var sliderLabel: UILabel!
    
    @IBOutlet weak var switchField: UILabel!
    
    @IBOutlet weak var stepperLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func textFieldDoneEditing(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
 
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches , with:event)
    }

    @IBAction func sliderUpdate(_ sender: UISlider) {
        
//        var mySlider = sender as! UISlider
        
        sliderLabel.text = "Slider value is \(Int(sender.value)):"
        
        
    }
    
    @IBAction func switchUpdate(_ sender: UISwitch) {
        
        if sender.isOn {
        switchField.text = "Switch is ON"
        } else {
        switchField.text = "Switch is OFF"
        }
        
    }
    
    @IBAction func updateStepper(_ sender: UIStepper) {
        
        stepperLabel.text = "Stepper value is \(Int(sender.value))"
        
        
    }

    @IBAction func updatedSegment(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
        
            view.backgroundColor = UIColor.gray
            
        } else {
        
            view.backgroundColor = UIColor.black
        }
        
    }
    
    @IBAction func showAlert(_ sender: UIButton) {
        
        let myAlert = UIAlertController(title:"My Alert", message: "Some Message goes here!", preferredStyle: UIAlertControllerStyle.alert)
        
        let ok = UIAlertAction(title: "OK", style:.default, handler: {
            (alert: UIAlertAction) in print("OK button was pressed")
        
        })
        
        myAlert.addAction(ok)
        
     
        
        present(myAlert, animated: true, completion: nil)
        
    }
    
    @IBAction func promptForNamePassword(_ sender: UIButton) {
        
        let myPrompt = UIAlertController(title: "Login", message: "Please enter your name and password", preferredStyle: UIAlertControllerStyle.alert)
        
        let ok2 = UIAlertAction(title: "OK", style:.default) {
            (alert) in
                print("OK button was pressed")
                let name = myPrompt.textFields![0]
                let password = myPrompt.textFields![1]
                print("The user's name is \(name.text) and their password is \(password.text)")
            
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) {
        
            (alert) in
                print("Cancel button was pressed")
            
        }
        
        myPrompt.addAction(ok2)
        myPrompt.addAction(cancel)
        
        myPrompt.addTextField {
            (textField: UITextField) in
                textField.placeholder = "Username"
        }
        
        myPrompt.addTextField {
            (textField) in
                textField.placeholder = "Password"
                textField.isSecureTextEntry = true
        }
        
        present(myPrompt,animated: true,completion: nil)
        
    }
    
    @IBAction func showActionSheet(_ sender: UIButton) {
        
        let mySheet = UIAlertController(title: "Action sheet", message: "Please make a selection", preferredStyle: UIAlertControllerStyle.actionSheet)
        
        let option1 = UIAlertAction(title: "Option 1", style: .destructive) {
            (alert)
                in print("Option 1 was tapped")
        
        }
        
        let option2 = UIAlertAction(title: "Option 2", style: .destructive) {
            (alert)
                in print("Option 2 was tapped")
            
        }
        
        let option3 = UIAlertAction(title: "Option 3", style: .destructive) {
            (alert)
                in print("Option 3 was tapped")
            
        }
        
        mySheet.addAction(option1)
        mySheet.addAction(option2)
        mySheet.addAction(option3)
        
        
        
        present(mySheet, animated: true, completion: nil)
        
    }
    
}

