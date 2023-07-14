//
//  sndOptionMenCollectionViewCell.swift
//  foodAppTapBar
//
//  Created by LUIS GONZALEZ on 14/07/23.
//

import UIKit

class sndOptionMenCollectionViewCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    
    
    public func setUpSecondCollectionView (categoria: SndCategories){
        self.titleCell.text = categoria.title ?? ""
        self.subTitleCell.text = categoria.subTitle ?? ""
        self.starsLabel.text = categoria.stars ?? ""
        self.labelTimeCell.text = categoria.time ?? ""
        self.imgPpl.image = UIImage(named: categoria.images[0] )
    }

}
