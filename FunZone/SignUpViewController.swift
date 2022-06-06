//
//  SignUpViewController.swift
//  FunZone
//
//  Created by admin on 5/26/22.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var remSwitch: UISwitch!
    @IBOutlet weak var passTextField: UITextField!
    let switchState = UserDefaults.standard
    let userNamePass = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func valueChanged(_ sender: Any) {
        if(remSwitch.isOn == true){
            switchState.set(true, forKey: "switchState")
            userNamePass.set(userTextField.text as? String, forKey: "userKeyChain")
            let attribute : [String:Any] = [kSecClass as String:kSecClassGenericPassword,kSecAttrAccount as String: userTextField.text!, kSecValueData as String: passTextField.text!.data(using: .utf8)]
            if SecItemAdd(attribute as CFDictionary,nil) == noErr{
                print("RememberMe data saved successfuly")
            }else{
                print("Error saving RememberMe data")
            }
        } else {
            switchState.set(false, forKey: "switchState")
            let req:[String:Any] = [kSecClass as String:kSecClassGenericPassword, kSecAttrAccount as String:userTextField.text!]
            if SecItemDelete(req as CFDictionary) == noErr{
                print("RememberMe Data Deleted")
            }else{
                print("Error Deleting RememberMe Data")
            }
        }
    }
    
    @IBAction func signUpClick(_ sender: Any) {
        DBHelper.dbHelper.addData(userValue: userTextField.text!, passValue: passTextField.text!)
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

