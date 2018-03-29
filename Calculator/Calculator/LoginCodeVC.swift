//
//  LoginCodeVC.swift
//  Calculator
//
//  Created by mai.thi.giang on 3/29/18.
//  Copyright © 2018 mai.thi.giang. All rights reserved.
//

import UIKit

class LoginCodeVC: UIViewController {
    var viewContent: UIView!
    var imageBackground: UIImageView!
    var viewLogin: UIView!
    var tfEmail: UITextField!
    var tfPass: UITextField!
    var btnLogin: UIButton!
    var btnRegister: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initUI()
    }
    
    func initUI() {
        viewContent = UIView.init(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT))
        self.view.addSubview(viewContent)
        
        imageBackground = UIImageView.init(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT))
        let image = UIImage.init(named: "backgroun2")
        imageBackground.image = image
        viewContent.addSubview(imageBackground)
        
        viewLogin = UIView()
        viewLogin.backgroundColor = UIColor(white: 0, alpha: 0.6)
        viewContent.addSubview(viewLogin)
        viewLogin.layer.cornerRadius = 10
        let topViewLogin = NSLayoutConstraint(item: viewLogin, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 40)
        let leftViewLogin = NSLayoutConstraint(item: viewLogin, attribute: .left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1, constant: 20)
        let rightViewLogin = NSLayoutConstraint(item: viewLogin, attribute: .right, relatedBy: .equal, toItem: self.view, attribute: .right, multiplier: 1, constant: -20)
        self.view.addConstraints([topViewLogin, leftViewLogin, rightViewLogin])
        viewLogin.autoresizesSubviews = false
        viewLogin.translatesAutoresizingMaskIntoConstraints = false
        
        tfEmail = UITextField()
        viewLogin.addSubview(tfEmail)
        let topEmail = NSLayoutConstraint(item: tfEmail, attribute: .top, relatedBy: .equal, toItem: viewLogin, attribute: .top, multiplier: 1, constant: 20)
        let leftEmail = NSLayoutConstraint(item: tfEmail, attribute: .left, relatedBy: .equal, toItem: viewLogin, attribute: .left, multiplier: 1, constant: 20)
        let rightEmail = NSLayoutConstraint(item: tfEmail, attribute: .right, relatedBy: .equal, toItem: viewLogin, attribute: .right, multiplier: 1, constant: -20)
        let heightEmail = NSLayoutConstraint(item: tfEmail, attribute: .height, relatedBy: .equal, toItem: viewLogin, attribute: .height, multiplier: 0, constant: 40)
        viewLogin.addConstraints([topEmail, leftEmail, rightEmail, heightEmail])
        tfEmail.autoresizesSubviews = false
        tfEmail.translatesAutoresizingMaskIntoConstraints = false
        tfEmail.leftViewMode = UITextFieldViewMode.always
        let leftViewEmail = UIView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
        let imgEmail = UIImageView.init(frame: CGRect(x: 5, y: 0, width: 20, height: 20))
        imgEmail.image = UIImage.init(named: "email")
        leftViewEmail.addSubview(imgEmail)
        tfEmail.leftView = leftViewEmail
        tfEmail.placeholder = "Email"
        tfEmail.backgroundColor = UIColor.white
        tfEmail.borderStyle = .roundedRect
        
        tfPass = UITextField()
        viewLogin.addSubview(tfPass)
        let topPass = NSLayoutConstraint(item: tfPass, attribute: .top, relatedBy: .equal, toItem: tfEmail, attribute: .bottom, multiplier: 1, constant: 20)
        let leftPass = NSLayoutConstraint(item: tfPass, attribute: .left, relatedBy: .equal, toItem: tfEmail, attribute: .left, multiplier: 1, constant: 0)
        let rightPass = NSLayoutConstraint(item: tfPass, attribute: .right, relatedBy: .equal, toItem: tfEmail, attribute: .right, multiplier: 1, constant: 0)
        let heightPass = NSLayoutConstraint(item: tfPass, attribute: .height, relatedBy: .equal, toItem: tfEmail, attribute: .height, multiplier: 1, constant: 0)
        viewLogin.addConstraints([topPass, leftPass, rightPass, heightPass])
        tfPass.autoresizesSubviews = false
        tfPass.translatesAutoresizingMaskIntoConstraints = false
        tfPass.leftViewMode = UITextFieldViewMode.always
        let leftViewPass = UIView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
        let imgPass = UIImageView.init(frame: CGRect(x: 5, y: 0, width: 20, height: 20))
        imgPass.image = UIImage.init(named: "email")
        leftViewPass.addSubview(imgPass)
        tfPass.leftView = leftViewPass
        tfPass.placeholder = "Password"
        tfPass.backgroundColor = UIColor.white
        tfPass.borderStyle = .roundedRect
        
        btnLogin = UIButton()
        viewLogin.addSubview(btnLogin)
        let topBtnLogin = NSLayoutConstraint(item: btnLogin, attribute: .top, relatedBy: .equal, toItem: tfPass, attribute: .bottom, multiplier: 1, constant: 20)
        let leftBtnLogin = NSLayoutConstraint(item: btnLogin, attribute: .left, relatedBy: .equal, toItem: tfEmail, attribute: .left, multiplier: 1, constant: 0)
        let widthBtnLogin = NSLayoutConstraint(item: btnLogin, attribute: .width, relatedBy: .equal, toItem: tfEmail, attribute: .width, multiplier: 0.45, constant: 0)
        let heightBtnLogin = NSLayoutConstraint(item: btnLogin, attribute: .height, relatedBy: .equal, toItem: tfEmail, attribute: .height, multiplier: 1, constant: 0)
        let bottomBtnLogin = NSLayoutConstraint(item: btnLogin, attribute: .bottom, relatedBy: .equal, toItem: viewLogin, attribute: .bottom, multiplier: 1, constant: -20)
        viewLogin.addConstraints([topBtnLogin, leftBtnLogin, widthBtnLogin, heightBtnLogin, bottomBtnLogin])
        btnLogin.autoresizesSubviews = false
        btnLogin.translatesAutoresizingMaskIntoConstraints = false
        btnLogin.layer.cornerRadius = 10
        btnLogin.layer.borderColor = UIColor.white.cgColor
        btnLogin.layer.borderWidth = 1
        btnLogin.setTitle("Login", for: .normal)
        btnLogin.setTitleColor(UIColor.white, for: .normal)
        
        btnRegister = UIButton()
        viewLogin.addSubview(btnRegister)
        let topBtnRegister = NSLayoutConstraint(item: btnRegister, attribute: .top, relatedBy: .equal, toItem: tfPass, attribute: .bottom, multiplier: 1, constant: 20)
        let rightBtnRegister = NSLayoutConstraint(item: btnRegister, attribute: .right, relatedBy: .equal, toItem: tfEmail, attribute: .right, multiplier: 1, constant: 0)
        let widthBtnRegister = NSLayoutConstraint(item: btnRegister, attribute: .width, relatedBy: .equal, toItem: tfEmail, attribute: .width, multiplier: 0.45, constant: 0)
        let heightBtnRegister = NSLayoutConstraint(item: btnRegister, attribute: .height, relatedBy: .equal, toItem: tfEmail, attribute: .height, multiplier: 1, constant: 0)
        viewLogin.addConstraints([topBtnRegister, rightBtnRegister, widthBtnRegister, heightBtnRegister])
        btnRegister.autoresizesSubviews = false
        btnRegister.translatesAutoresizingMaskIntoConstraints = false
        btnRegister.layer.cornerRadius = 10
        btnRegister.layer.borderColor = UIColor.white.cgColor
        btnRegister.layer.borderWidth = 1
        btnRegister.setTitle("Register", for: .normal)
        btnRegister.setTitleColor(UIColor.white, for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
