//
//  optionMenuCollectionViewCell.swift
//  foodAppTapBar
//
//  Created by LUIS GONZALEZ on 11/07/23.
//

import UIKit

class optionMenuCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageFirst: UIImageView!
    @IBOutlet weak var imageSecond: UIImageView!
    @IBOutlet weak var imageThird: UIImageView!
    @IBOutlet weak var imageFourth: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblStars: UILabel!
    @IBOutlet weak var lblTime: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func setUpCollectionCell(categoria: Categories) {
        self.lblTitle.text = categoria.title ?? ""
        self.lblStars.text = categoria.stars ?? ""
        self.lblTime.text = categoria.time ?? ""
        self.imageFirst.image = UIImage(named: categoria.images[0] ?? "")
        self.imageSecond.image = UIImage(named: categoria.images[1] ?? "")
        self.imageThird.image = UIImage(named: categoria.images[2] ?? "")
        self.imageFourth.image = UIImage(named: categoria.images[3] ?? "")
    }

}
