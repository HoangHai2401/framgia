//
//  MovieTableCell.swift
//  TableView
//
//  Created by mai.thi.giang on 3/30/18.
//  Copyright © 2018 mai.thi.giang. All rights reserved.
//

import UIKit

class MovieTableCell: UITableViewCell {
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var imgAvatar: UIImageView!
    @IBOutlet weak var lblContent: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setContentForCell(movie: Movie) {
        lblTitle.text = movie.original_title
        lblContent.text = movie.overview
    }
}
