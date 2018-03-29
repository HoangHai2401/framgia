//
//  ViewController.swift
//  NavigationLifeCycle
//
//  Created by mai.thi.giang on 3/29/18.
//  Copyright © 2018 mai.thi.giang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("view 1: viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("view 1: viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("view 1: viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("view 1: viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("view 1: viewDidDisappear")
    }
    
    @IBAction func nextToBlueVC(_ sender: Any) {
        let sb = UIStoryboard.init(name: "Main", bundle: nil)
        let blueVC = sb.instantiateViewController(withIdentifier: "blueID") as! BlueViewController
        blueVC.name = tfName.text
        self.navigationController?.pushViewController(blueVC, animated: true)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

