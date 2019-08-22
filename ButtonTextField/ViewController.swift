//
//  ViewController.swift
//  ButtonTextField
//
//  Created by COE-01 on 22/08/19.
//  Copyright © 2019 COE-01. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Outlets
    
    @IBOutlet weak var txtEmailAdress: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    @IBOutlet weak var lblMessage: UILabel!
    @IBOutlet weak var lblPrintLoginCredentials: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSignUpTouchUpInside(_ sender: Any) {
        let emailid = txtEmailAdress.text
        let password = txtPassword.text
        let confirm = txtConfirmPassword.text
        
        if password != confirm {
            lblMessage.text = "Confirmation password does no match!"
            lblPrintLoginCredentials.text = ""
        }
        else{
            lblMessage.text = "Login succesful!"
            lblPrintLoginCredentials.text = "Email:\(emailid!) Password:\(password!)"
        }
        
        
        
    }
    @IBAction func btnPasswordVisibilityValueChange(_ sender: Any) {
        txtPassword.isSecureTextEntry = !(txtPassword.isSecureTextEntry)
        txtConfirmPassword.isSecureTextEntry = !(txtConfirmPassword.isSecureTextEntry)
    }
    
    
    
}

