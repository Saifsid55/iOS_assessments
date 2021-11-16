//
//  LoginViewController.swift
//  DataPersistance
//
//  Created by Mohd Saif on 15/11/21.
//

import UIKit
/** To verify Useris Loggein or not and to save and remove login info Protocol */
protocol Loggable {
    var isUserLoggedIn: Bool { get }
    func saveUserInfo() -> Bool
    func removeUserInfo()
}


/** To ShowToast Protocol */
protocol ShowToastProtocol where Self: UIViewController {
    func showToastMsg(title: String, message: String)
}

extension ShowToastProtocol {
    func showToastMsg(title: String, message: String) {
        // create the alert
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.cancel, handler: nil))
        // show the alert
        self.present(alert, animated: true, completion: nil)
        
    }
}



class LoginViewController: UIViewController, ShowToastProtocol {

    @IBOutlet weak var phonenumTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginBtn(_ sender: Any) {
        
        let success = saveUserInfo()
        guard success else {
            // show toast fill all fields
            showToastMsg(title: "LoginFailed", message: "Fill All Fields Or Password should not greater then 8 characters")
            return
        }
        UserDefaults.standard.set(true, forKey: "isLogin")
        Utility.setRoot()
    }
    
    

}
extension LoginViewController: Loggable {
    
    var isUserLoggedIn: Bool {
        return UserDefaults.standard.bool(forKey: "username")
    }
    
    func saveUserInfo() -> Bool {
        
        if (phonenumTF.isFieldEmpty && passwordTF.isValidPassword ) {
            return false
        } else {
            let userPhone = self.phonenumTF.text
            UserDefaults.standard.setValue(userPhone, forKey: "userphone")
            return true
        }
    }
    
    func removeUserInfo() {
        UserDefaults.standard.removeObject(forKey: "userphone")
        UserDefaults.standard.synchronize()
    }
    
}
