//
//  MovieTableViewCell.swift
//  TableViewDiffableDataSourceDemo
//
//  Created by SHIH-YING PAN on 2019/7/14.
//  Copyright © 2019 SHIH-YING PAN. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var coverImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
       
        
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
