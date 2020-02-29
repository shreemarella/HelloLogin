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
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        print("View DidAppear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("view WillAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("view Did Disappear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("View WillDisappear")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        lblWelcome.text = " Welcome to IOS Programming"
        
        print(lblWelcome.text!)
        
    }
    
    @IBAction func btnClickMeTap(_ sender: UIButton)
    {
        lblWelcome.text = "ohh Dont click me"
    }
    
}

