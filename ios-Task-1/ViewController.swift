//
//  ViewController.swift
//  ios-Task-1
//
//  Created by Sarthak Dandotiya on 16/05/19.
//  Copyright © 2019 Sarthak Dandotiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {
    
    @IBOutlet weak var login: UIView!
    @IBOutlet weak var signup: UIView!
    @IBOutlet weak var segctrl: UISegmentedControl!
    @IBOutlet weak var heading: UILabel!
    @IBOutlet weak var btn_login: UIButton!
    @IBOutlet weak var btn_signup: UIButton!
    @IBOutlet weak var loader: UIActivityIndicatorView!
    @IBOutlet weak var tglr: UISwitch!
    @IBOutlet weak var Username_Login: UITextField!
    @IBOutlet weak var Password_Login: UITextField!
    @IBOutlet weak var Username_Signup: UITextField!
    @IBOutlet weak var Email_Signup: UITextField!
    @IBOutlet weak var Create_Passwrod_Signup: UITextField!
    @IBOutlet weak var Confirm_Password_Signup: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.backgroundColor = UIColor.white.cgColor
        heading.text = "Login"
        btn_login.layer.cornerRadius = 4
        btn_signup.layer.cornerRadius = 4
        signup.layer.cornerRadius = 4
        login.layer.cornerRadius = 4
        Username_Login.delegate = self
        Password_Login.delegate = self
        Username_Signup.delegate = self
        Email_Signup.delegate = self
        Create_Passwrod_Signup.delegate = self
        Confirm_Password_Signup.delegate = self
        
        // Do any additional setup after loading the view.
    }
func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    Username_Login.resignFirstResponder()
    Password_Login.resignFirstResponder()
    Username_Signup.resignFirstResponder()
    Email_Signup.resignFirstResponder()
    Create_Passwrod_Signup.resignFirstResponder()
    Confirm_Password_Signup.resignFirstResponder()
       return true
    }
    @IBAction func segaction(_ sender: UISegmentedControl) {
    
        if( login.isHidden == true && signup.isHidden == false ){
            login.isHidden = false
            signup.isHidden = true
            heading.text = "Login"
        }
        else if ( login.isHidden == false && signup.isHidden == true ){
            login.isHidden = true
            signup.isHidden = false
            heading.text = "Signup"
        }
        
//        login.isHidden = false
    }
    
    @IBAction func startload(_ sender: Any) {
        loader.startAnimating()
    }
    @IBAction func stopload(_ sender: Any) {
        loader.stopAnimating()
    }
    @IBAction func bg_color(_ sender: Any) {
        if(tglr.isOn == true){
            view.layer.backgroundColor = UIColor.darkGray.cgColor
        }
        else {
            view.layer.backgroundColor = UIColor.white.cgColor
        }
    }
    @IBAction func change_opacity(_ sender: UISlider) {
        login.backgroundColor = UIColor(white: 0, alpha: CGFloat(sender.value))
        signup.backgroundColor = UIColor(white: 0, alpha: CGFloat(sender.value))
    }
}

