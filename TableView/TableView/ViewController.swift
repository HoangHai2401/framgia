//
//  ViewController.swift
//  TableView
//
//  Created by mai.thi.giang on 3/30/18.
//  Copyright © 2018 mai.thi.giang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var refreshControl: UIRefreshControl!
    var page: Int = 1
    var arrMovie : [Movie] = []
    var isLoading : Bool = false
    var isLoadMore : Bool = false
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        refreshControl = UIRefreshControl()
        refreshControl.attributedTitle = NSAttributedString(string: "")
        refreshControl.addTarget(self, action: #selector(refresh), for: UIControlEvents.valueChanged)
        tableView.addSubview(refreshControl)
        
        self.getListMovie()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func refresh(sender:AnyObject) {
        // Code to refresh table view
        print("aaaaaaaaaaa")
    }
    
    func getListMovie() {
        page = 1
        APIServer.shareInstance.getListMovie(page: page, susscess: { (json) in
            
            if let jsonArray = json["results"].array{
                self.arrMovie.removeAll()
                for movie in jsonArray {
                    let a = Movie.init(_data: movie)
                    self.arrMovie.append(a)
                }
            }
            if self.arrMovie.count < 20 {
                self.isLoadMore = false
            } else {
                self.isLoadMore = true
            }
            self.tableView.reloadData()
            self.page = self.page + 1
        })
        { (error) in
            
        }
    }
    
    func loadMoreData() {
        if isLoading {
            return
        }
        APIServer.shareInstance.getListMovie(page: page, susscess: { (json) in
            let count = self.arrMovie.count
            var arr : [Movie] = []
            
            if let jsonArray = json["results"].array{
                for movie in jsonArray {
                    let a = Movie.init(_data: movie)
                    arr.append(a)
                }
            }
            self.arrMovie.append(contentsOf: arr)
            self.page = self.page + 1
            if count < self.arrMovie.count {
                self.isLoadMore = true
            } else {
                self.isLoadMore = false
            }
            self.tableView.reloadData()
            self.isLoading = false
        }) { (error) in
            
        }
    }
}

extension ViewController : UITableViewDelegate {
    
}

extension ViewController : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrMovie.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellComment", for: indexPath) as! MovieTableCell
        cell.setContentForCell(movie: arrMovie[indexPath.row])
        if (indexPath.row == self.arrMovie.count - 1) && (isLoadMore == true){
            if !isLoading {
                self.loadMoreData()
                isLoading = true
            }
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}
