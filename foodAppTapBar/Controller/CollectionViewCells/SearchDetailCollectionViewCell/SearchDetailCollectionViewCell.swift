//
//  SearchDetailCollectionViewCell.swift
//  foodAppTapBar
//
//  Created by LUIS GONZALEZ on 17/07/23.
//

import UIKit

class SearchDetailCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var imagesBackView: UIView!
    @IBOutlet weak var img1: UIImageView!{
        didSet{self.img1.layer.cornerRadius = 5}
    }
    @IBOutlet weak var img2: UIImageView!{
        didSet{self.img1.layer.cornerRadius = 5}
    }
    @IBOutlet weak var img3: UIImageView!{
        didSet{self.img1.layer.cornerRadius = 5}
    }
    @IBOutlet weak var img4: UIImageView!{
        didSet{self.img1.layer.cornerRadius = 5}
    }
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var imgStar: UIImageView!
    @IBOutlet weak var lblStars: UILabel!
    @IBOutlet weak var imgTime: UIImageView!
    @IBOutlet weak var lblTime: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    public func setUpSearchDetailCollectionView (categoria: searchDetailCat){
        self.lblTitle.text = categoria.title ?? ""
        self.lblDescription.text = categoria.description ?? ""
        self.lblPrice.text = categoria.price ?? ""
        self.lblStars.text = categoria.stars ?? ""
        self.lblTime.text = categoria.time ?? ""
        self.img1.image = UIImage(named: categoria.images[0] ?? "")
        self.img2.image = UIImage(named: categoria.images[1] ?? "")
        self.img3.image = UIImage(named: categoria.images[2] ?? "")
        self.img4.image = UIImage(named: categoria.images[3] ?? "")
    }

}
