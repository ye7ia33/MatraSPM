//
//  OfferTableViewCell.swift
//  MatraApp
//
//  Created by Yahia El-Dow on 02/08/2023.
//

import UIKit

class OfferTableViewCell: UITableViewCell {

    @IBOutlet weak var offerImg: UIImageView!
        
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
