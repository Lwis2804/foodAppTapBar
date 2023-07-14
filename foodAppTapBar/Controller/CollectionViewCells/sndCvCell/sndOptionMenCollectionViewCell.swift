//
//  sndOptionMenCollectionViewCell.swift
//  foodAppTapBar
//
//  Created by LUIS GONZALEZ on 14/07/23.
//

import UIKit

class sndOptionMenCollectionViewCell: UICollectionViewCell {
    
    //MARK: - OUTLETS
    
    @IBOutlet weak var imgPpl: UIImageView!
    @IBOutlet weak var titleCell: UILabel!
    @IBOutlet weak var subTitleCell: UILabel!
    @IBOutlet weak var imgStar: UIImageView!
    @IBOutlet weak var starsLabel: UILabel!
    @IBOutlet weak var imgClock: UIImageView!
    @IBOutlet weak var labelTimeCell: UILabel!
    
    
    
   //MARK: - LIFE - CYCLE
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
