//
//  ResultViewController.swift
//  CashappSpoof
//
//  Created by Ethan Keiser on 12/12/21.
//

import UIKit
class LoadingViewController: UIViewController {

    @IBOutlet weak var activityView: UIActivityIndicatorView!
    var userName = ""
    var amount = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(timeup), userInfo: nil, repeats: false)
        DataManger.shared.payment.insert(Payment(userName: userName, amount: amount), at: 0)
        DataManger.shared.totalFunds -= amount
        // Do any additional setup after loading the view.
    }
    @objc func timeup() {
        self.activityView.isHidden = true
        if !success {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ResultViewController") as? ResultViewController
            navigationController?.pushViewController(vc!, animated: true)
        } else {
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SuccessViewController") as? SuccessViewController
            vc?.userName = userName
            vc?.amount = String.toCurrency(amount)
            navigationController?.pushViewController(vc!, animated: true)
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
