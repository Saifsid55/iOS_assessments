//
//  DataPageVC.swift
//  ProtocolDelegation
//
//  Created by Mohd Saif on 02/11/21.
//

import UIKit
protocol DataPageDelegate {
    func saveData(profile: Profile)
}
class DataPageVC: UIViewController {
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var ageTF: UITextField!
    @IBOutlet weak var pNameTF: UITextField!
    @IBOutlet weak var dataLbl: UILabel!
    var delegate: DataPageDelegate?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //observer for facebook notification
        NotificationCenter.default.addObserver(self, selector: #selector(fillDataF(notification:)), name: .facebook, object: nil)
        //observer for twitter notification
        NotificationCenter.default.addObserver(self, selector: #selector(fillDataT(notification:)), name: .twitter, object: nil)
        
    }
    
    
    //selector function for facebook
    @objc func fillDataF(notification: Notification){
        dataLbl.text = "Enter Facebook Data"
    }
    //selector function for twitter
    @objc func fillDataT(notification: Notification){
        dataLbl.text = "Enter Twitter Data"
    }
    
    //Button action for selecting type of data notification
    @IBAction func selectData(_ sender: UIButton) {
        let vc2 = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(identifier: "DisplayPageVC") as! DisplayPageVC
        navigationController?.pushViewController(vc2, animated: true)
    }
    
    @IBAction func doneSavingData(_ sender: UIButton) {
        let data = getData()
        delegate?.saveData(profile: data)
        navigationController?.popViewController(animated: true)
    }
    
    func getData() -> Profile{
        
        let profile = Profile(name: String(nameTF.text ?? ""), age: String(ageTF.text ?? ""), pName: String(pNameTF.text ?? ""))
        
        return profile
    }

}
