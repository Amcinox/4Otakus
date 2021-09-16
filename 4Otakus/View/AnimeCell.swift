//
//  AnimeCell.swift
//  4Otakus
//
//  Created by Simo Elbssir on 9/16/21.
//

import UIKit

class AnimeCell: UITableViewCell {

    
   
    @IBOutlet weak var animePoster: UIImageView!
    
    @IBOutlet weak var animeTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        
        let margins = UIEdgeInsets(top: 0, left: 0, bottom: 10, right: 0)
        contentView.frame = contentView.frame.inset(by: margins)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
