//
//  ViewController.swift
//  CashappSpoof
//
//  Created by Ethan Keiser on 12/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func numberPad_Touch(_ sender: Any) {
        if let button = sender as? UIButton {
            var text = self.numberLabel.text ?? ""
            if text.count == 2 && text.last! == "0" && button.tag != 0 {
                text.removeLast()
            } else if text.count == 2 && text.last! == "0" && button.tag == 0 {
                return
            }
                text.append("\(button.tag)")
            self.numberLabel.text = text
        }
    }
    
    @IBAction func backspace(_ sender: Any) {
        
        if let text = self.numberLabel.text, text.count > 2 {
            var text = text
            text.removeLast()
            self.numberLabel.text = text
        } else {
            self.numberLabel.text = "$0"
        }
    }
    


    @IBAction func balance(_ sender: Any) {
        if let vc =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BalanceViewController") as? BalanceViewController {
            
            navigationController?.pushViewController(vc, animated:false)
        }
    }

    @IBAction func pay_button(_ sender: Any) {
        if let vc =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SendViewController") as? SendViewController {
            vc.modalPresentationStyle = .fullScreen
            
           let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            nav.isNavigationBarHidden = true
            
            var money = self.numberLabel.text!
            money.removeFirst()
            vc.amountString = Int(money)!
            navigationController?.present(nav, animated: true, completion: nil)
            
        }
    }
    
    @IBAction func historyButton(_ sender: Any) {
        if let vc =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ActivityViewController") as? ActivityViewController {
            
            navigationController?.pushViewController(vc, animated: false)
        }
    }
}

