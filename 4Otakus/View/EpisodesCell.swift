//
//  EpisodesCell.swift
//  4Otakus
//
//  Created by Simo Elbssir on 9/17/21.
//

import UIKit

class EpisodesCell: UITableViewCell {

    @IBOutlet weak var episodeNumber: UILabel!
    
    @IBOutlet weak var watched: UIButton!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
