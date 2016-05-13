//
//  ViewController.swift
//  Hello World
//
//  Created by Fabian Vergara on 2016-04-28.
//  Copyright © 2016 fvergara. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var labelQuestion: UILabel!
    @IBOutlet var textField: UITextField!
    
    @IBAction func submitBtn(sender: AnyObject) {
        
        labelQuestion.text = textField.text
        
        print("Tap of press me/ submit button")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hello Fabian") //Print to console
        
        self.textField.delegate = self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    
    


}

