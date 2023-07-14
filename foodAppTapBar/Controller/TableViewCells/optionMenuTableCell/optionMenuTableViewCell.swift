//
//  optionMenuTableViewCell.swift
//  foodAppTapBar
//
//  Created by LUIS GONZALEZ on 11/07/23.
//

import UIKit

class optionMnTableViewCell: UITableViewCell {
    
    
    //MARK: - OUTLETS

 
    @IBOutlet weak var backgroundImage: UIImageView!
    
    @IBOutlet weak var lblTitleTableCell: UIImageView!
    
    
  
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
