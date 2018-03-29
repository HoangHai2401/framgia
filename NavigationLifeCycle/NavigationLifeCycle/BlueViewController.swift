//
//  BlueViewController.swift
//  NavigationLifeCycle
//
//  Created by mai.thi.giang on 3/29/18.
//  Copyright © 2018 mai.thi.giang. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {
    
    @IBOutlet weak var tfName: UITextField!
    var name : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view 2: viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("view 2: viewWillAppear")
        tfName.text = name
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("view 2: viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("view 2: viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("view 2: viewDidDisappear")
    }
    
    @IBAction func nextToRedVC(_ sender: Any) {
        let sb = UIStoryboard.init(name: "Main", bundle: nil)
        let redVC = sb.instantiateViewController(withIdentifier: "redID") as! RedViewController
        self.navigationController?.pushViewController(redVC, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
