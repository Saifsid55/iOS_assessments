//
//  ViewController.swift
//  MVCpro
//
//  Created by Mohd Saif on 26/10/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableview: UITableView, numberOfRowsInSection section: Int) -> Int{
        PlayersData.shared.dataArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
        cell.nameLbl.text = PlayersData.shared.dataArray[indexPath.row].name
        cell.sportsLbl.text = PlayersData.shared.dataArray[indexPath.row].sport
        cell.emailLbl.text = PlayersData.shared.dataArray[indexPath.row].email

        return cell
    }


}
