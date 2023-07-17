//
//  SearchCellTableViewCell.swift
//  foodAppTapBar
//
//  Created by LUIS GONZALEZ on 17/07/23.
//

import UIKit

class SearchCellTableViewCell: UITableViewCell {

    @IBOutlet weak var scTitle: UILabel!
    @IBOutlet weak var scClockImg: UIImageView!
    @IBOutlet weak var scLowBar: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
