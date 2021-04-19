//
//  ViewController.swift
//  Login
//
//  Created by Petit Bradley on 4/15/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Username: UITextField!
    
    @IBOutlet weak var forgotUsername: UIButton!
    
    
    @IBOutlet weak var forgotPassword: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //segue.destination.navigationItem.title = Username.text
        guard let sender = sender as? UIButton else { return }
                
                if sender == forgotPassword{
                    segue.destination.navigationItem.title = "Forgot Password"
                } else if sender == forgotUsername {
                    segue.destination.navigationItem.title = "Forgot Username"
                } else {
                    segue.destination.navigationItem.title = Username.text
                }
            
        
    }
    @IBAction func forgotPasswordButtonTapped(_ sender: Any) {
            performSegue(withIdentifier: "ForgottenUserNameOrPassword", sender: forgotPassword)
    }
    
    @IBAction func forgotPasswordButtonTappe2d(_ sender: Any) {
            performSegue(withIdentifier: "ForgottenUserNameOrPassword", sender: forgotUsername)
    }
    
    
}

