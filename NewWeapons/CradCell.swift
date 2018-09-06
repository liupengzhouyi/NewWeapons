//
//  CradCell.swift
//  NewWeapons
//
//  Created by 刘鹏 on 2018/9/6.
//  Copyright © 2018年 刘鹏. All rights reserved.
//

import UIKit

class CradCell: UITableViewCell {

    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var favBtn: UIButton!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var backImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
