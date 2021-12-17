//
//  ActivityViewController.swift
//  CashappSpoof
//
//  Created by Ethan Keiser on 12/14/21.
//

import UIKit
struct viewmodel {
    
}

class ActivityViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var userName : String?
    var amount : String?
    @IBOutlet weak var tableView: UITableView!
    var list = [Payment]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        list = DataManger.shared.payment
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell =  tableView.dequeueReusableCell(withIdentifier: "ActivityCell") as? ActivityCell {
            let payment = list[indexPath.row]
            cell.topLabel.text = payment.userName
            cell.amountLabel.text = payment.amount
            if indexPath.row == 0 {
                cell.bottomLabel.text = "Pending"
            }
            cell.bottomLabel.text = "Successful"
            return cell
        }
        fatalError()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func sendButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: false)
    }
}
