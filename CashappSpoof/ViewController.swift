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
    
    private var isStatusBarHidden = true {
        didSet {
            setNeedsStatusBarAppearanceUpdate()
        }
    }

    override var prefersStatusBarHidden: Bool {
        return isStatusBarHidden
    }
    @IBAction func pay_button(_ sender: Any) {
    }
    
}

