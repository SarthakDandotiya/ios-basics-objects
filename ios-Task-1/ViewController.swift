//
//  ViewController.swift
//  ios-Task-1
//
//  Created by Sarthak Dandotiya on 16/05/19.
//  Copyright © 2019 Sarthak Dandotiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var login: UIView!
    @IBOutlet weak var signup: UIView!
    @IBOutlet weak var segctrl: UISegmentedControl!
    @IBOutlet weak var heading: UILabel!
    @IBOutlet weak var btn_login: UIButton!
    @IBOutlet weak var btn_signup: UIButton!
    @IBOutlet weak var loader: UIActivityIndicatorView!
    @IBOutlet weak var tglr: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.backgroundColor = UIColor.white.cgColor
        heading.text = "Login"
        btn_login.layer.cornerRadius = 4
        btn_signup.layer.cornerRadius = 4
        signup.layer.cornerRadius = 4
        login.layer.cornerRadius = 4
        // Do any additional setup after loading the view.
    }

    @IBAction func segaction(_ sender: Any) {
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

