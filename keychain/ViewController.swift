//
//  ViewController.swift
//  keychain
//
//  Created by İSMAİL AÇIKYÜREK on 17.05.2022.
//

import UIKit
import KeychainSwift


class ViewController: UIViewController {
    
    @IBOutlet weak var txtpassword: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func loginBtnClick(_ sender: Any) {
        let keycahin = KeychainSwift()
        let password = txtpassword.text
        if password == keycahin.get("password") {
            performSegue(withIdentifier: "login", sender: nil)
        } else {
            print("yanlıss")
        }
    }
    
    @IBAction func addBtnClick(_ sender: Any) {
        
    }
}

