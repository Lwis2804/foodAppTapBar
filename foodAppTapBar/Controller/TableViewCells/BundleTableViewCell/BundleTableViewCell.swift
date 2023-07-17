//
//  BundleTableViewCell.swift
//  foodAppTapBar
//
//  Created by LUIS GONZALEZ on 17/07/23.
//

import UIKit

class BundleTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var backgroundImg: UIView!
    @IBOutlet weak var tableImg: UIImageView!{didSet{self.tableImg.layer.cornerRadius = 10
        self.tableImg.layer.borderWidth = 1
    }
}
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var tagImg: UIImageView!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var starImg: UIImageView!
    @IBOutlet weak var lblStarsNumbre: UILabel!
    @IBOutlet weak var clockImg: UIImageView!
    @IBOutlet weak var lblTime: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    public func setUpTableBundleView (categoria: tableBundleCategories){
        self.lblTitle.text = categoria.title ?? ""
        self.tableImg.image = UIImage(named: categoria.image ?? "")
        self.lblDescription.text = categoria.description ?? ""
        self.lblTime.text = categoria.time ?? ""
        self.lblPrice.text = categoria.price ?? ""
        self.lblStarsNumbre.text = categoria.stars ?? ""
    }
    
    
    
    
    
}
