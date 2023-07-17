//
//  SearchResultViewController.swift
//  foodAppTapBar
//
//  Created by LUIS GONZALEZ on 06/07/23.
//

import UIKit

class SearchResultViewController: UIViewController {
    
    //MARK: - OUTLETS
    
    
    @IBOutlet weak var searchResultLbl: UILabel!
    @IBOutlet weak var imgSearchResult: UIImageView!
    @IBOutlet weak var imgTitlLbl: UILabel!
    @IBOutlet weak var backgroundPrice: UIView!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var imgStar: UIImageView!
    @IBOutlet weak var starLbl: UILabel!
    @IBOutlet weak var imgClock: UIImageView!
    @IBOutlet weak var timeLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var findItInBundleLbl: UILabel!
    @IBOutlet weak var collectionViewSearch: UICollectionView!
    @IBOutlet weak var backgroundBtn: UIView!
    @IBOutlet weak var btnAddShopping: UIButton!
    @IBOutlet weak var imgAddShopping: UIImageView!
    @IBOutlet weak var btnSaveWish: UIButton!
    @IBOutlet weak var imgSaveWish: UIImageView!
    
    
    
    
    
    //MARK: - VARIABLES
    
    var arrSearchDetailCategories: [searchDetailCat] = []
    let hardCategories: CategoriesHard = CategoriesHard()
    var strImg : String?
    var strImageTitle : String?
    


    //MARK: - LIFE - CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let img = strImg,let title = strImageTitle{
            imgSearchResult.image = UIImage(named: img,in: .main, with: .none)
            imgTitlLbl.text = title
        }
        setUpSRCollectionView()
        arrSearchDetailCategories = hardCategories.returnDataOnSearchDetailCV()

    }
    
    //MARK: - FUNCTIONS

    func setUpSRCollectionView(){
        self.collectionViewSearch.delegate = self
        self.collectionViewSearch.dataSource = self
        self.collectionViewSearch.tag = 999
        self.collectionViewSearch.register(SearchDetailCollectionViewCell.nib, forCellWithReuseIdentifier: SearchDetailCollectionViewCell.identifier)
    }

    

}



   //MARK: - EXTENSIONS
extension SearchResultViewController: UICollectionViewDelegate{
    
}


extension SearchResultViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrSearchDetailCategories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cCell = collectionView.dequeueReusableCell(withReuseIdentifier: SearchDetailCollectionViewCell.identifier, for: indexPath) as? SearchDetailCollectionViewCell ?? SearchDetailCollectionViewCell()
        cCell.setUpSearchDetailCollectionView(categoria: arrSearchDetailCategories[indexPath.row])
        return cCell
   }
}


extension SearchResultViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 385, height: 152)
    }
    
}

