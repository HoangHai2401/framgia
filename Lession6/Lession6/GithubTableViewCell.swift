//
//  GithubTableViewCell.swift
//  Lession6
//
//  Created by mai.thi.giang on 4/2/18.
//  Copyright © 2018 mai.thi.giang. All rights reserved.
//

import UIKit

class GithubTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgAvatar: UIImageView!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setContentForCell(github: Github) {
        self.lblTitle.text = github.full_name
        self.lblDescription.text = github.des
    }
}
