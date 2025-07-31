//
//  ViewController.swift
//  login page
//
//  Created by Student on 30/07/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var textNme: UITextField!
    
    @IBOutlet var forgotUsername: UIButton!
    @IBOutlet weak var forgotPass: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        if sender == forgotPass {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsername {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = textNme.text
        }
    }
    
        @IBAction func forgotPasswordButtonTapped(_ sender: UIButton) { performSegue(withIdentifier: "ForgotUsernameOrPassword", sender: sender)
        }
    
    @IBAction func forgotUsernameButtonTapped(_ sender: UIButton) { performSegue(withIdentifier: "ForgotUsernameOrPassword", sender: sender)
    }
}


