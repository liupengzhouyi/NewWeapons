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
    //属性：是否喜欢
    var favorite = false {
        willSet {
            if newValue {
                favBtn.setImage(#imageLiteral(resourceName: "fav"), for: .normal)
            } else {
                favBtn.setImage(#imageLiteral(resourceName: "unfav"), for: .normal)
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
