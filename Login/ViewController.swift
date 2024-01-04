//
//  ViewController.swift
//  Login
//
//  Created by 4d on 1/4/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var usernameTextField: UITextField!

    @IBOutlet weak var forgotUsernameButton: UIButton!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    @IBAction func signIn(_ sender: UIButton) {
        performSegue(withIdentifier: "manualSeg", sender: sender)
    }
    


    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        if sender == forgotPasswordButton{
            segue.destination.navigationItem.title = "Forgot Password"
        }
        else if sender == forgotUsernameButton{
            segue.destination.navigationItem.title = "Forgot Username"
        }
        else{
            segue.destination.navigationItem.title = "Welcome \(usernameTextField.text ?? "user")"
        }
        
    }
    
    
    
    
}
