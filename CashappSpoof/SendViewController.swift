//
//  SendViewController.swift
//  CashappSpoof
//
//  Created by Ethan Keiser on 12/10/21.
//

import UIKit

class SendViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var amountlabel: UILabel!
    var amountString : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        userTextField.delegate = self
        notesTextField.delegate = self
        userTextField.autocorrectionType = .no
        amountlabel.text = amountString ?? ""
        
        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.tag == 1 {
            textField.textColor = .green
        }
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func close(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func payButton(_ sender: Any) {
       let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoadingViewController") as? LoadingViewController
        vc!.amount = amountString!
        vc!.userName = userTextField.text!
        navigationController?.pushViewController(vc!, animated: true)
    }
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var notesTextField: UITextField!
    
    
    
    
    private var isStatusBarHidden = true {
        didSet {
            setNeedsStatusBarAppearanceUpdate()
        }
    }

    override var prefersStatusBarHidden: Bool {
        return isStatusBarHidden
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
