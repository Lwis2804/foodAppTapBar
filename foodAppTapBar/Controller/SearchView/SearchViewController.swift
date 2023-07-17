//
//  SearchViewController.swift
//  foodAppTapBar
//
//  Created by LUIS GONZALEZ on 06/07/23.
//

import UIKit

class SearchViewController: UIViewController {
    
    //MARK: - OUTLETS
    
    
    @IBOutlet weak var svTitleLbl: UILabel!
    @IBOutlet weak var svTable: UITableView!
    
    //MARK: - VARIABLES
    
   
    var arrFirst: [String] = ["Afternoon tea","Potato chips","Milk jelly"]
    var arrSecond: [String] = ["Fruit jelly","Simit lovers","Japanese street food","Turkish tea time bundle","Delicious samosa bundle"]
    
    
    
    //MARK: - LIFE - CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpTable()

    }

    
    
    //MARK: - FUNCTIONS
    
    func setUpTable(){
       self.svTable.delegate = self
       self.svTable.dataSource = self
        self.svTable.register(SearchCellTableViewCell.nib, forCellReuseIdentifier: SearchCellTableViewCell.identifier)
   }
    
    


}


//MARK: - EXTENSIONS


extension SearchViewController: UITableViewDataSource & UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return (section == 0) ? "Recent searches" : "Suggested"
   //     if section == 0 {
   //         return "Recent searches"
   //     }else{
   //         return "Suggested"
   //     }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (section == 0) ? arrFirst.count : arrSecond.count
 //       if section == 0 {
     //       return arrFirst.count
    //    }else{
   //         return arrSecond.count
   ///     }
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cellSearhView = tableView.dequeueReusableCell(withIdentifier: SearchCellTableViewCell.identifier, for: indexPath) as?
            SearchCellTableViewCell ?? SearchCellTableViewCell()
            cellSearhView.scTitle.text = arrFirst[indexPath.row]
            return cellSearhView
        }else{
            let cellSearhView = tableView.dequeueReusableCell(withIdentifier: SearchCellTableViewCell.identifier, for: indexPath) as?
            SearchCellTableViewCell ?? SearchCellTableViewCell()
            cellSearhView.scTitle.text = arrSecond[indexPath.row]
            return cellSearhView
        }
  }
    
}
