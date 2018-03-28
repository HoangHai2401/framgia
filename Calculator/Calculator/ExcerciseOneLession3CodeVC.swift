//
//  ExcerciseOneLession3CodeVC.swift
//  Calculator
//
//  Created by mai.thi.giang on 3/28/18.
//  Copyright © 2018 mai.thi.giang. All rights reserved.
//

import UIKit

class ExcerciseOneLession3CodeVC: UIViewController {
    var viewRed:UIView!
    var viewBlue:UIView!
    var viewOrange:UIView!
    var viewGreen: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.initUI()
    }
    
    func initUI() {
        self.view.backgroundColor = UIColor.white
        
        /* CODE = FRAME */
        viewRed = UIView.init(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT/2))
        viewRed.backgroundColor = UIColor.red
        self.view.addSubview(viewRed)

        viewBlue = UIView.init(frame: CGRect(x: 0, y: SCREEN_HEIGHT/2, width: SCREEN_WIDTH/2, height: SCREEN_HEIGHT/2))
        viewBlue.backgroundColor = UIColor.blue
        self.view.addSubview(viewBlue)
        
        viewOrange = UIView.init(frame: CGRect(x: SCREEN_WIDTH/2, y: SCREEN_HEIGHT/2, width: SCREEN_WIDTH/2, height: SCREEN_HEIGHT/4))
        viewOrange.backgroundColor = UIColor.orange
        self.view.addSubview(viewOrange)
        
        viewGreen = UIView.init(frame: CGRect(x: SCREEN_WIDTH/2, y: 3 * SCREEN_HEIGHT/4, width: SCREEN_WIDTH/4, height: SCREEN_HEIGHT/4))
        viewGreen.backgroundColor = UIColor.green
        self.view.addSubview(viewGreen)
        
        
        /* CODE = NSLayoutContraint */
/*        viewRed = UIView()
        viewRed.backgroundColor = UIColor.red
        self.view.addSubview(viewRed)
        let topRed = NSLayoutConstraint(item: viewRed, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 0)
        let leftRed = NSLayoutConstraint(item: viewRed, attribute: .left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1, constant: 0)
        let widthRed = NSLayoutConstraint(item: viewRed, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 1, constant: 0)
        let heightRed = NSLayoutConstraint(item: viewRed, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 1/2, constant: 0)
        self.view.addConstraints([topRed, leftRed, widthRed, heightRed])
        viewRed.autoresizesSubviews = false
        viewRed.translatesAutoresizingMaskIntoConstraints = false
        
        viewBlue = UIView()
        viewBlue.backgroundColor = UIColor.blue
        self.view.addSubview(viewBlue)
        let bottomBlue = NSLayoutConstraint(item: viewBlue, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1, constant: 0)
        let leftBlue = NSLayoutConstraint(item: viewBlue, attribute: .left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1, constant: 0)
        let widthBlue = NSLayoutConstraint(item: viewBlue, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 1/2, constant: 0)
        let heightBlue = NSLayoutConstraint(item: viewBlue, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 1/2, constant: 0)
        self.view.addConstraints([bottomBlue, leftBlue, widthBlue, heightBlue])
        viewBlue.autoresizesSubviews = false
        viewBlue.translatesAutoresizingMaskIntoConstraints = false
        
        viewOrange = UIView()
        viewOrange.backgroundColor = UIColor.orange
        self.view.addSubview(viewOrange)
        let topOrange = NSLayoutConstraint(item: viewOrange, attribute: .top, relatedBy: .equal, toItem: viewBlue, attribute: .top, multiplier: 1, constant: 0)
        let rightOrange = NSLayoutConstraint(item: viewOrange, attribute: .right, relatedBy: .equal, toItem: self.view, attribute: .right, multiplier: 1, constant: 0)
        let widthOrange = NSLayoutConstraint(item: viewOrange, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 1/2, constant: 0)
        let heightOrange = NSLayoutConstraint(item: viewOrange, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 1/4, constant: 0)
        self.view.addConstraints([topOrange, rightOrange, widthOrange, heightOrange])
        viewOrange.autoresizesSubviews = false
        viewOrange.translatesAutoresizingMaskIntoConstraints = false
        
        viewGreen = UIView()
        viewGreen.backgroundColor = UIColor.green
        self.view.addSubview(viewGreen)
        let bottomGreen = NSLayoutConstraint(item: viewGreen, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1, constant: 0)
        let leftGreen = NSLayoutConstraint(item: viewGreen, attribute: .left, relatedBy: .equal, toItem: viewOrange, attribute: .left, multiplier: 1, constant: 0)
        let widthGreen = NSLayoutConstraint(item: viewGreen, attribute: .width, relatedBy: .equal, toItem: viewOrange, attribute: .width, multiplier: 1/2, constant: 0)
        let heightGreen = NSLayoutConstraint(item: viewGreen, attribute: .height, relatedBy: .equal, toItem: viewOrange, attribute: .height, multiplier: 1, constant: 0)
        self.view.addConstraints([bottomGreen, leftGreen, widthGreen, heightGreen])
        viewGreen.autoresizesSubviews = false
        viewGreen.translatesAutoresizingMaskIntoConstraints = false   */
        
        
        /* CODE = NSLayoutAnchor */
/*        viewRed = UIView()
        viewRed.backgroundColor = UIColor.red
        self.view.addSubview(viewRed)
        viewRed.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        viewRed.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive = true
        viewRed.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        viewRed.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1/2).isActive = true
        viewRed.translatesAutoresizingMaskIntoConstraints = false
        
        viewBlue = UIView()
        viewBlue.backgroundColor = UIColor.blue
        self.view.addSubview(viewBlue)
        viewBlue.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        viewBlue.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive = true
        viewBlue.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1/2).isActive = true
        viewBlue.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1/2).isActive = true
        viewBlue.translatesAutoresizingMaskIntoConstraints = false
        
        viewOrange = UIView()
        viewOrange.backgroundColor = UIColor.orange
        self.view.addSubview(viewOrange)
        viewOrange.topAnchor.constraint(equalTo: self.viewBlue.topAnchor, constant: 0).isActive = true
        viewOrange.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0).isActive = true
        viewOrange.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1/2).isActive = true
        viewOrange.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1/4).isActive = true
        viewOrange.translatesAutoresizingMaskIntoConstraints = false
        
        viewGreen = UIView()
        viewGreen.backgroundColor = UIColor.green
        self.view.addSubview(viewGreen)
        viewGreen.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        viewGreen.leftAnchor.constraint(equalTo: self.viewOrange.leftAnchor, constant: 0).isActive = true
        viewGreen.widthAnchor.constraint(equalTo: self.viewOrange.widthAnchor, multiplier: 1/2).isActive = true
        viewGreen.heightAnchor.constraint(equalTo: self.viewOrange.heightAnchor, multiplier: 1).isActive = true
        viewGreen.translatesAutoresizingMaskIntoConstraints = false         */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
