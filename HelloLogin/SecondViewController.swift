//
//  SecondViewController.swift
//  HelloLogin
//
//  Created by Shree Marella on 2020-03-04.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    //@IBOutlet weak var lblLogin: UILabel!
    
    @IBOutlet weak var lblLogin: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let ud = UserDefaults.standard
        let user = ud.string(forKey: "user")
        
        if let us = user
        {
            lblLogin.text = "Welcome , \(us)"
        }

        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
