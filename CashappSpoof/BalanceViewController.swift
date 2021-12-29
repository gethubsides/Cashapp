//
//  BalanceViewController.swift
//  CashappSpoof
//
//  Created by Ethan Keiser on 12/14/21.
//

import UIKit

class BalanceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.balanceLabel.text = String.toCurrency(DataManger.shared.totalFunds)
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var balanceLabel: UILabel!
    @IBAction func sendButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: false)
    }
    @IBAction func historyButton(_ sender: Any) {
        if let vc =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ActivityViewController") as? ActivityViewController {
            
            navigationController?.pushViewController(vc, animated: false)
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
