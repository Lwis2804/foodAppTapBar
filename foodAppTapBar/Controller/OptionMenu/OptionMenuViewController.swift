//
//  OptionMenuViewController.swift
//  foodAppTapBar
//
//  Created by LUIS GONZALEZ on 06/07/23.
//

import UIKit

class OptionMenuViewController: UIViewController {
    
    
    
    //MARK: - OUTLETS
    
    @IBOutlet weak var generlaBackground: UIView!
    @IBOutlet weak var backfrundSearch: NSLayoutConstraint!
    @IBOutlet weak var searchBar: UITextField!
    @IBOutlet weak var recentUserLbl: UILabel!
    @IBOutlet weak var fisrtCollectionView: UICollectionView!
    @IBOutlet weak var top3Bundle: UILabel!
    @IBOutlet weak var firstTableView: UITableView!
    @IBOutlet weak var peolpeNearbyLbl: UILabel!
    @IBOutlet weak var secondCollectionView: UICollectionView!
    @IBOutlet weak var btnSearchCat: UIButton!{
        didSet{
            self.btnSearchCat.layer.cornerRadius = 10
        }
    }
    
    //MARK: - VARIABLES
    
    let arrFirstElements: [String] = ["first","second","third","fourth"]
    let arrSecondElements: [String] = ["first","second","third"]
    let arrTable: [String] = ["Turkish tea time bundle","Delicious samosa bundle","Taiyaki lovers bundle","Baklava bundle"]
    let arrTableImg: [String] = ["turkish-tea-glass-2","Samosa-de-Pollo","1585184618041","baklava 13"]
    let arrBundleTableImg: [String] = ["seeds","turkish-pide-21588-1","taiyaki","1585184618041"]
    let arrBundleTitle: [String] = ["Seeds","Simit lovers","Taiyaki","Simit lovers"]
    let hardCategories: CategoriesHard = CategoriesHard()
    var arrCategories: [Categories] = []
    var SarrCategories: [SndCategories] = []
    var sdStrImage : String = ""
    var sdStringImageTitle : String = ""
    
    


    //MARK: - LIFE - CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Usuario"
    //    setUpCollectonview()
     //   setUpTable()
    //   setUpSecondCollectionView()
    //    arrCategories = hardCategories.returnDataOnCategoriesToFirstCV()
    //    SarrCategories = hardCategories.returnDataOnCategoriesToSecndCV()

    }


    
    //MARK: - FUNCTIONS
    
    
    func setUpCollectonview(){
        self.fisrtCollectionView.delegate = self
        self.fisrtCollectionView.dataSource = self
        self.fisrtCollectionView.tag = 989
        self.fisrtCollectionView.register(optionMenuCollectionViewCell.nib, forCellWithReuseIdentifier: optionMenuCollectionViewCell.identifier)
    }
    
    func setUpSecondCollectionView(){
        self.secondCollectionView.delegate = self
        self.secondCollectionView.dataSource = self
        self.secondCollectionView.tag = 284
        self.secondCollectionView.register(sndOptionMenCollectionViewCell.nib, forCellWithReuseIdentifier: optionMenuCollectionViewCell.identifier)
    }
    
    func setUpTable(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.tag = 321
        self.tableView.register(optionMenuTableViewCell.nib, forCellReuseIdentifier: optionMenuTableViewCell.identifier)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    


}



  //MARK: - EXTENSIONS

extension OptionMenuViewController: UICollectionViewDelegate {
    
}

//MARK: - UICOLLECTIONVIEW DATASOURCE


extension OptionMenuViewController: UICollectionViewDataSource {
    
    

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      //  return arrCategories.count
    return collectionView.tag == 989 ? arrCategories.count : SarrCategories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView.tag == 989 {
            let cCell = collectionView.dequeueReusableCell(withReuseIdentifier: optionMenuCollectionViewCell.identifier, for: indexPath) as? optionMenuCollectionViewCell ?? optionMenuCollectionViewCell()
            cCell.setUpCollectionCell(categoria: arrCategories[indexPath.row] )
            return cCell
            
        } else {
                let cCell = collectionView.dequeueReusableCell(withReuseIdentifier: sndOptionMenCollectionViewCell.identifier,
                 for: indexPath) as? sndOptionMenCollectionViewCell ?? sndOptionMenCollectionViewCell()
            cCell.setUpSecondCollectionView(categoria: SarrCategories[indexPath.row] )
                return cCell
            }
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    //   return collectionView.tag == 989 ? self.performSegue(withIdentifier: "bundleView", sender: self) : self.performSegue(withIdentifier: "searchView", sender: self)
        
       if collectionView.tag == 989{
            
            sdStrImage = arrBundleTableImg[indexPath.row]
            sdStringImageTitle = arrBundleTitle[indexPath.row]
            
            self.performSegue(withIdentifier: "bundleView", sender: self)
        }else if collectionView.tag == 284{
            self.performSegue(withIdentifier: "searchView", sender: self)
        }
         
    }

    }
    

//MARK: - UICOLLECTIONVIEW FLOWLAYOUT


extension OptionMenuViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 152, height: 208)
    }
    
}
    
//MARK: - UITABLEVIEW DELEGATE

extension OptionMenuViewController: UITableViewDataSource & UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        sdStrImage = arrTableImg[indexPath.row]
        sdStringImageTitle = arrTable[indexPath.row]
            
        self.performSegue(withIdentifier: "searchDetail", sender: self)
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrTable.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = tableView.dequeueReusableCell(withIdentifier: firstTableView.identifier, for: indexPath) as? firstTableView ?? firstTableView
        
        tableCell.lblTitleTableCell.text = arrTable[indexPath.row]
        tableCell.backgroundImage.image = UIImage(named: arrTableImg[indexPath.row])
        tableCell.accessoryType = .disclosureIndicator
        return tableCell
    }
}
