//
//  addPasswordVC.swift
//  keychain
//
//  Created by İSMAİL AÇIKYÜREK on 17.05.2022.
//

import UIKit
import KeychainSwift

class addPasswordVC: UIViewController {
    
    @IBOutlet weak var txtpassword: UITextField!
    @IBOutlet weak var txtAgainPasword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func BtnSaveClick(_ sender: Any) {
        let keycahin = KeychainSwift()
        let password = txtpassword.text
        let againPassword = txtAgainPasword.text
        
        
        if password == againPassword {
            keycahin.set(password!,forKey: "password")
            dismiss(animated: true, completion: nil)
        } else {
            print("paswords wrong!!!!")
        }
    }
    
}
