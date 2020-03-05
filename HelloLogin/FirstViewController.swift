//
//  ViewController.swift
//  HelloLogin
//
//  Created by Shree Marella on 2020-02-28.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var lblWelcome: UILabel!
    
    @IBOutlet weak var switchRemember: UISwitch!
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var lblRememberMe: UILabel!
    
    //@IBOutlet weak var switchRemeber: UISwitch!
    
    
//    override func viewDidAppear(_ animated: Bool) {
//        print("View DidAppear")
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        print("view WillAppear")
//    }
//
//    override func viewDidDisappear(_ animated: Bool) {
//        print("view DidDisappear")
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        print("View WillDisappear")
//    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        lblWelcome.text = " Trip4U Login"
        print(lblWelcome.text!)
        let ud = UserDefaults.standard
        if let tempEmail = ud.string(forKey: "email")
        {
            txtEmail.text = tempEmail
        }
        if let temppassword = ud.string(forKey: "password")
        {
            txtPassword.text = temppassword
        }
    
    }
    
    @IBAction func btnClickMeTap(_ sender: UIButton)
    {
        lblWelcome.text = "Login Successfull"
        if switchRemember.isOn
        {
            UserDefaults.standard.set(txtEmail.text, forKey: "email")
            UserDefaults.standard.set(txtPassword.text, forKey: "password")
        }
        else
        {
            UserDefaults.standard.removeObject(forKey: "email")
            UserDefaults.standard.removeObject(forKey: "password")
            
        }
    }
    
    
}

