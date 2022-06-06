//
//  LoginViewController.swift
//  FunZone
//
//  Created by admin on 5/26/22.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var startImage: UIImageView!
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var remSwitch: UISwitch!
    let switchState = UserDefaults.standard
    let userNamePass = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        if(switchState.bool(forKey: "switchState")){
            remSwitch.setOn(true, animated: false)
            let req : [String:Any] = [kSecClass as String:kSecClassGenericPassword,kSecAttrAccount as String:userNamePass.value(forKey: "userKeyChain") as! String,kSecReturnAttributes as String:true,kSecReturnData as String:true]
            var resp:CFTypeRef?
            
            if SecItemCopyMatching(req as CFDictionary,&resp) == noErr{
                let data = resp as? [String:Any]
                let userID = data![kSecAttrAccount as String] as? String
                let idPass = (data![kSecValueData as String] as? Data)!
                let accPass = String(data:idPass,encoding:.utf8)
                userTextField.text = userID
                passTextField.text = accPass
            }else{
                print("Got Error Trying to call RememberMe saved data")
            }
            //userTextField.text = kSecAttrAccount as String
            //passTextField.text = kSecValueData as String
            
        }else{
            remSwitch.setOn(false,animated:false)
        }
        let randNum = Int.random(in: 1...2)
        print("Start up Image:\(randNum)")
        if randNum == 1{
            startImage.image = UIImage(named: "Retro_Now_trophy")
        }else{
            startImage.image = UIImage(named:"Future_Retro_trophy")
        }
    }
    
    @IBAction func loginClick(_ sender: Any) {
        let uID = userTextField.text!
        let pass = passTextField.text!
        let userCheck = DBHelper.dbHelper.existingUser(userValue: uID)
        if(uID == userCheck.username && pass == userCheck.password){
            let storyBoard = UIStoryboard(name:"Main",bundle:nil)
            let welcomeScreen = storyBoard.instantiateViewController(withIdentifier:"welcome")
            present(welcomeScreen, animated:true,completion:nil)
            
        }
        else{
            print("Invalid username or password, please try again.")
        }
    }
    @IBAction func valueChanged(_ sender: Any) {
        if(remSwitch.isOn == true){
            userNamePass.set(userTextField.text as? String, forKey: "userKeyChain")
            switchState.set(true, forKey: "switchState")
            let attribute : [String:Any] = [kSecClass as String:kSecClassGenericPassword,kSecAttrAccount as String: userTextField.text!, kSecValueData as String: passTextField.text!.data(using: .utf8)]
            if SecItemAdd(attribute as CFDictionary,nil) == noErr{
                print("RememberMe data saved successfuly")
            }else{
                print("Error saving RememberMe data")
            }
        } else {
            switchState.set(false,forKey: "switchState")
            let req:[String:Any] = [kSecClass as String:kSecClassGenericPassword, kSecAttrAccount as String:userTextField.text!]
            if SecItemDelete(req as CFDictionary) == noErr{
                print("RememberMe Data Deleted")
            }else{
                print("Error Deleting RememberMe Data")
            }
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

