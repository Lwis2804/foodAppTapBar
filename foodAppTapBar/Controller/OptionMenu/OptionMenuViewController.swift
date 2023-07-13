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
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var peolpeNearbyLbl: UILabel!
    @IBOutlet weak var secondCollectionView: UICollectionView!
    @IBOutlet weak var btnSearchCat: UIButton!{
        didSet{
            self.btnSearchCat.layer.cornerRadius = 10
        }
    }
    
    //MARK: - VARIABLES
    
    
    


    //MARK: - LIFE - CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
