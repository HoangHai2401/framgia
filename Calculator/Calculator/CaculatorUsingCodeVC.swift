//
//  CaculatorUsingCodeVC.swift
//  Calculator
//
//  Created by mai.thi.giang on 3/28/18.
//  Copyright © 2018 mai.thi.giang. All rights reserved.
//

import UIKit

class CaculatorUsingCodeVC: UIViewController {
    //
    var viewContent : UIView!
    var stackViewContent : UIStackView!
    var viewOne : UIView = UIView()
    var viewTwo : UIView = UIView()
    var viewThree : UIView = UIView()
    var viewFour : UIView = UIView()
    var viewFine : UIView = UIView()
    var viewSix : UIView = UIView()
    
    //
    var lblResult : UILabel!
    
    //
    var stackViewTwo : UIStackView!
    var btnAC : UIButton = UIButton()
    var btnAddOrSub : UIButton = UIButton()
    var btnBalance : UIButton = UIButton()
    var btnDivide : UIButton = UIButton()
    
    //
    var stackViewThree : UIStackView!
    var btnSeven : UIButton = UIButton()
    var btnEight : UIButton = UIButton()
    var btnNine : UIButton = UIButton()
    var btnMultiplication : UIButton = UIButton()
    
    //
    var stackViewFour : UIStackView!
    var btnFour : UIButton = UIButton()
    var btnFive : UIButton = UIButton()
    var btnSix : UIButton = UIButton()
    var btnSubtraction : UIButton = UIButton()
    
    //
    var stackViewFine : UIStackView!
    var btnOne : UIButton = UIButton()
    var btnTwo : UIButton = UIButton()
    var btnThree : UIButton = UIButton()
    var btnSummation : UIButton = UIButton()
    
    //
    var stackViewSix : UIStackView!
    var btnZezo : UIButton = UIButton()

    //
    var viewSeven : UIView = UIView()
    var stackViewSeven : UIStackView!
    var btnDot : UIButton = UIButton()
    var btnResult : UIButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initUI()
    }
    
    func initUI() {
        viewContent = UIView.init(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT))
        viewContent.backgroundColor = UIColor(red: 150.0/255, green: 150.0/255, blue: 150.0/255, alpha: 1.0)
        self.view.addSubview(viewContent)
        
        stackViewContent = UIStackView.init(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT))
        stackViewContent.axis = .vertical
        stackViewContent.alignment = .fill
        stackViewContent.distribution = .fillEqually
        stackViewContent.spacing = 2
        
        stackViewContent.addArrangedSubview(viewOne)
        stackViewContent.addArrangedSubview(viewTwo)
        stackViewContent.addArrangedSubview(viewThree)
        stackViewContent.addArrangedSubview(viewFour)
        stackViewContent.addArrangedSubview(viewFine)
        stackViewContent.addArrangedSubview(viewSix)
        self.viewContent.addSubview(stackViewContent)
        
        // result
        lblResult = UILabel.init(frame: CGRect(x: 16, y: 0, width: SCREEN_WIDTH - 32, height: SCREEN_HEIGHT/6))
        lblResult.text = "0"
        lblResult.textAlignment = .right
        lblResult.font = UIFont(name: "Helvetica", size: 34)
        self.viewOne.addSubview(lblResult)
        
        // AC, +/-, %
        stackViewTwo = UIStackView.init(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT/6))
        stackViewTwo.axis = .horizontal
        stackViewTwo.alignment = .fill
        stackViewTwo.distribution = .fillEqually
        stackViewTwo.spacing = 1
        btnAC.backgroundColor = UIColor(red: 222.0/255, green: 222.0/255, blue: 222.0/255, alpha: 1.0)
        btnAC.setTitle("AC", for: .normal)
        btnAC.setTitleColor(UIColor.black, for: .normal)
        btnAC.titleLabel?.font = UIFont(name: "Helvetica", size: 20)
        btnAddOrSub.backgroundColor = UIColor(red: 222.0/255, green: 222.0/255, blue: 222.0/255, alpha: 1.0)
        btnAddOrSub.setTitle("+/-", for: .normal)
        btnAddOrSub.setTitleColor(UIColor.black, for: .normal)
        btnAddOrSub.titleLabel?.font = UIFont(name: "Helvetica", size: 20)
        btnBalance.backgroundColor = UIColor(red: 222.0/255, green: 222.0/255, blue: 222.0/255, alpha: 1.0)
        btnBalance.setTitle("%", for: .normal)
        btnBalance.setTitleColor(UIColor.black, for: .normal)
        btnBalance.titleLabel?.font = UIFont(name: "Helvetica", size: 20)
        btnDivide.backgroundColor = UIColor(red: 245.0/255, green: 145.0/255, blue: 64.0/255, alpha: 1.0)
        btnDivide.setImage(UIImage.init(named: "icons8-divide-24"), for: .normal)
        stackViewTwo.addArrangedSubview(btnAC)
        stackViewTwo.addArrangedSubview(btnAddOrSub)
        stackViewTwo.addArrangedSubview(btnBalance)
        stackViewTwo.addArrangedSubview(btnDivide)
        self.viewTwo.addSubview(stackViewTwo)
        
        // 7, 8, 9, x
        stackViewThree = UIStackView.init(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT/6))
        stackViewThree.axis = .horizontal
        stackViewThree.alignment = .fill
        stackViewThree.distribution = .fillEqually
        stackViewThree.spacing = 1
        btnSeven.backgroundColor = UIColor(red: 222.0/255, green: 222.0/255, blue: 222.0/255, alpha: 1.0)
        btnSeven.setTitle("7", for: .normal)
        btnSeven.setTitleColor(UIColor.black, for: .normal)
        btnSeven.titleLabel?.font = UIFont(name: "Helvetica", size: 20)
        btnEight.backgroundColor = UIColor(red: 222.0/255, green: 222.0/255, blue: 222.0/255, alpha: 1.0)
        btnEight.setTitle("8", for: .normal)
        btnEight.setTitleColor(UIColor.black, for: .normal)
        btnEight.titleLabel?.font = UIFont(name: "Helvetica", size: 20)
        btnNine.backgroundColor = UIColor(red: 222.0/255, green: 222.0/255, blue: 222.0/255, alpha: 1.0)
        btnNine.setTitle("9", for: .normal)
        btnNine.setTitleColor(UIColor.black, for: .normal)
        btnNine.titleLabel?.font = UIFont(name: "Helvetica", size: 20)
        btnMultiplication.backgroundColor = UIColor(red: 245.0/255, green: 145.0/255, blue: 64.0/255, alpha: 1.0)
        btnMultiplication.setTitle("x", for: .normal)
        btnMultiplication.setTitleColor(UIColor.white, for: .normal)
        btnMultiplication.titleLabel?.font = UIFont(name: "Helvetica", size: 24)
        stackViewThree.addArrangedSubview(btnSeven)
        stackViewThree.addArrangedSubview(btnEight)
        stackViewThree.addArrangedSubview(btnNine)
        stackViewThree.addArrangedSubview(btnMultiplication)
        self.viewThree.addSubview(stackViewThree)
        
        // 4, 5, 6, -
        stackViewFour = UIStackView.init(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT/6))
        stackViewFour.axis = .horizontal
        stackViewFour.alignment = .fill
        stackViewFour.distribution = .fillEqually
        stackViewFour.spacing = 1
        btnFour.backgroundColor = UIColor(red: 222.0/255, green: 222.0/255, blue: 222.0/255, alpha: 1.0)
        btnFour.setTitle("4", for: .normal)
        btnFour.setTitleColor(UIColor.black, for: .normal)
        btnFour.titleLabel?.font = UIFont(name: "Helvetica", size: 20)
        btnFive.backgroundColor = UIColor(red: 222.0/255, green: 222.0/255, blue: 222.0/255, alpha: 1.0)
        btnFive.setTitle("5", for: .normal)
        btnFive.setTitleColor(UIColor.black, for: .normal)
        btnFive.titleLabel?.font = UIFont(name: "Helvetica", size: 20)
        btnSix.backgroundColor = UIColor(red: 222.0/255, green: 222.0/255, blue: 222.0/255, alpha: 1.0)
        btnSix.setTitle("6", for: .normal)
        btnSix.setTitleColor(UIColor.black, for: .normal)
        btnSix.titleLabel?.font = UIFont(name: "Helvetica", size: 20)
        btnSubtraction.backgroundColor = UIColor(red: 245.0/255, green: 145.0/255, blue: 64.0/255, alpha: 1.0)
        btnSubtraction.setTitle("-", for: .normal)
        btnSubtraction.setTitleColor(UIColor.white, for: .normal)
        btnSubtraction.titleLabel?.font = UIFont(name: "Helvetica", size: 25)
        stackViewFour.addArrangedSubview(btnFour)
        stackViewFour.addArrangedSubview(btnFive)
        stackViewFour.addArrangedSubview(btnSix)
        stackViewFour.addArrangedSubview(btnSubtraction)
        self.viewFour.addSubview(stackViewFour)
        
        // 1, 2, 3, +
        stackViewFine = UIStackView.init(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT/6))
        stackViewFine.axis = .horizontal
        stackViewFine.alignment = .fill
        stackViewFine.distribution = .fillEqually
        stackViewFine.spacing = 1
        btnOne.backgroundColor = UIColor(red: 222.0/255, green: 222.0/255, blue: 222.0/255, alpha: 1.0)
        btnOne.setTitle("1", for: .normal)
        btnOne.setTitleColor(UIColor.black, for: .normal)
        btnOne.titleLabel?.font = UIFont(name: "Helvetica", size: 20)
        btnTwo.backgroundColor = UIColor(red: 222.0/255, green: 222.0/255, blue: 222.0/255, alpha: 1.0)
        btnTwo.setTitle("2", for: .normal)
        btnTwo.setTitleColor(UIColor.black, for: .normal)
        btnTwo.titleLabel?.font = UIFont(name: "Helvetica", size: 20)
        btnThree.backgroundColor = UIColor(red: 222.0/255, green: 222.0/255, blue: 222.0/255, alpha: 1.0)
        btnThree.setTitle("3", for: .normal)
        btnThree.setTitleColor(UIColor.black, for: .normal)
        btnThree.titleLabel?.font = UIFont(name: "Helvetica", size: 20)
        btnSummation.backgroundColor = UIColor(red: 245.0/255, green: 145.0/255, blue: 64.0/255, alpha: 1.0)
        btnSummation.setTitle("+", for: .normal)
        btnSummation.setTitleColor(UIColor.white, for: .normal)
        btnSummation.titleLabel?.font = UIFont(name: "Helvetica", size: 25)
        stackViewFine.addArrangedSubview(btnOne)
        stackViewFine.addArrangedSubview(btnTwo)
        stackViewFine.addArrangedSubview(btnThree)
        stackViewFine.addArrangedSubview(btnSummation)
        self.viewFine.addSubview(stackViewFine)
        
        // 0, ., =
        stackViewSix = UIStackView.init(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT/6))
        stackViewSix.axis = .horizontal
        stackViewSix.alignment = .fill
        stackViewSix.distribution = .fillEqually
        stackViewSix.spacing = 1
        btnZezo.backgroundColor = UIColor(red: 222.0/255, green: 222.0/255, blue: 222.0/255, alpha: 1.0)
        btnZezo.setTitle("0", for: .normal)
        btnZezo.setTitleColor(UIColor.black, for: .normal)
        btnZezo.titleLabel?.font = UIFont(name: "Helvetica", size: 20)
        stackViewSix.addArrangedSubview(btnZezo)
        stackViewSix.addArrangedSubview(viewSeven)
        self.viewSix.addSubview(stackViewSix)
        
        stackViewSeven = UIStackView.init(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH/2, height: SCREEN_HEIGHT/6))
        stackViewSeven.axis = .horizontal
        stackViewSeven.alignment = .fill
        stackViewSeven.distribution = .fillEqually
        stackViewSeven.spacing = 1
        btnDot.backgroundColor = UIColor(red: 222.0/255, green: 222.0/255, blue: 222.0/255, alpha: 1.0)
        btnDot.setTitle(".", for: .normal)
        btnDot.setTitleColor(UIColor.black, for: .normal)
        btnDot.titleLabel?.font = UIFont(name: "Helvetica", size: 25)
        btnResult.backgroundColor = UIColor(red: 245.0/255, green: 145.0/255, blue: 64.0/255, alpha: 1.0)
        btnResult.setTitle("=", for: .normal)
        btnResult.setTitleColor(UIColor.white, for: .normal)
        btnResult.titleLabel?.font = UIFont(name: "Helvetica", size: 2)
        stackViewSeven.addArrangedSubview(btnDot)
        stackViewSeven.addArrangedSubview(btnResult)
        self.viewSeven.addSubview(stackViewSeven)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
