//
//  BundleCollectionViewCell.swift
//  foodAppTapBar
//
//  Created by LUIS GONZALEZ on 17/07/23.
//

import UIKit

class BundleCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var backgroundImg: UIView!{didSet{backgroundImg.layer.cornerRadius = 10
        backgroundImg.layer.borderWidth = 1}
    }

    @IBOutlet weak var collectionImg: UIImageView!{didSet{collectionImg.layer.cornerRadius = 10}
    }
    
    @IBOutlet weak var collectionLbl: UILabel!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
