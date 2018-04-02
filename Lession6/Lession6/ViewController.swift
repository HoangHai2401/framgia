//
//  ViewController.swift
//  Lession6
//
//  Created by mai.thi.giang on 4/2/18.
//  Copyright © 2018 mai.thi.giang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblGitHub: UITableView!
    var arrGithub: [Github] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.getData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func getData() {
        
        let link = URL(string: "https://api.github.com/users/google/repos")
        let task = URLSession.shared.dataTask(with: link!) { (data, response, error) in
            if error != nil{
                print("error")
            } else {
                if let mydata = data{
                    do {
                        print(mydata)
                        let jsonArray = try JSONSerialization.jsonObject(with: mydata, options: JSONSerialization.ReadingOptions.mutableContainers) as! Array<Any>
                        for json in jsonArray{
                            if let item = json as? [String: AnyObject] {
                                let a = Github(JSON: item)!
                                self.arrGithub.append(a)                            }
                        }
                        
                    }catch{
                        
                    }
                }
            }
            
            OperationQueue.main.addOperation {
                self.tblGitHub.reloadData()
            }
        }
        task.resume()
        
    }
}

extension ViewController : UITableViewDelegate {
    
}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrGithub.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "githubcell", for: indexPath) as! GithubTableViewCell
        cell.setContentForCell(github: arrGithub[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
