//
//  LoginAutolayoutVC.swift
//  Calculator
//
//  Created by mai.thi.giang on 3/29/18.
//  Copyright © 2018 mai.thi.giang. All rights reserved.
//

import UIKit

class LoginAutolayoutVC: UIViewController {

    @IBOutlet weak var viewLogin: UIView!
    @IBOutlet weak var btnRegister: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewLogin.layer.cornerRadius = 10
        viewLogin.backgroundColor = UIColor(white: 0, alpha: 0.6)
        
        tfEmail.leftViewMode = UITextFieldViewMode.always
        let leftViewEmail = UIView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
        let imgEmail = UIImageView.init(frame: CGRect(x: 5, y: 0, width: 20, height: 20))
        imgEmail.image = UIImage.init(named: "email")
        leftViewEmail.addSubview(imgEmail)
        tfEmail.leftView = leftViewEmail
        
        tfPassword.leftViewMode = UITextFieldViewMode.always
        let leftViewPass = UIView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
        let imgPass = UIImageView.init(frame: CGRect(x: 5, y: 0, width: 20, height: 20))
        imgPass.image = UIImage.init(named: "email")
        leftViewPass.addSubview(imgPass)
        tfPassword.leftView = leftViewPass
        
        btnLogin.layer.cornerRadius = 10
        btnLogin.layer.borderColor = UIColor.white.cgColor
        btnLogin.layer.borderWidth = 1
        
        btnRegister.layer.cornerRadius = 10
        btnRegister.layer.borderColor = UIColor.white.cgColor
        btnRegister.layer.borderWidth = 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
