//
//  TableViewController.swift
//  tableDetailPractice
//
//  Created by apple on 2019/10/25.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class TableViewController: UIViewController,UITableViewDataSource {
    
    var passName : String?
    var passCountry : String?
    var passbio : String?

    @IBOutlet weak var tableView: UITableView!
    private var sections = [Section]() {
            didSet {
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            tableView.dataSource = self
            tableView.delegate = self
            tableView.rowHeight = UITableView.automaticDimension
            tableView.estimatedRowHeight = 80
            tableView.register(UINib(nibName: "FriendTableCell", bundle: Bundle.main) , forCellReuseIdentifier: "friendCell")
            
            tableView.register(UINib(nibName: "HeaderView", bundle: Bundle.main), forHeaderFooterViewReuseIdentifier: "headerView")
            
            
//            tableView.register(UINib(nibName: "HeaderController",bundle: nil), forHeaderFooterViewReuseIdentifier: "HeaderController")
            // mimicking long running task in a background queue
            DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + 1) {
                self.sections = Section.alphabaticallySectionedFriends()
            }
        }
    
    
    @IBAction func closeScreenBT(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
        func numberOfSections(in tableView: UITableView) -> Int {
            return sections.count
        }

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return sections[section].friends.count
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "friendCell", for: indexPath) as! FriendTableCell
            let friend = sections[indexPath.section].friends[indexPath.row]
            cell.nameLabel.text = friend.name
           cell.countryLabel.text = friend.countryName
            cell.aboutLabel.text = friend.bio
           return cell
        }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }

//        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//            let title = sections[section].name
//
//            return title
//        }
    

        func sectionIndexTitles(for tableView: UITableView) -> [String]? {
            let indexTitles = sections.map { $0.name }
            return indexTitles
        }
    
    
        
}
extension TableViewController: UITableViewDelegate {

func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//    let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.width , height: 100))
//    view.layer.backgroundColor=UIColor.green.cgColor
//    let title = UILabel(frame: CGRect(x: 0, y: 0, width: tableView.bounds.width, height: 20))
//    title.text=self.sections[section].name
//    title.textAlignment = .center
//    view.addSubview(title)
    
//    let view = tableView.dequeueReusableHeaderFooterView(withIdentifier: "HeaderController") as! HeaderController
//    view.sectionTitleLabel.text = self.sections[section].name
//    view.backgroundColor = .cyan
    
    let view = tableView.dequeueReusableHeaderFooterView(withIdentifier: "headerView") as! HeaderView
    view.titelLabel.text = sections[section].name
    let background = UIView(frame: view.bounds)
    background.backgroundColor = .cyan
    view.backgroundView = background
    return view
    }

func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let friend = sections[indexPath.section].friends[indexPath.row]
   // print("Tapped \(friend.name)")
    passName = friend.name
    passCountry = friend.countryName
    passbio = friend.bio
    
    performSegue(withIdentifier: "detailSegue", sender: self)
    
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? FriendDetailViewController{
            destination.name = passName
            destination.country = passCountry
            destination.bio = passbio
        }
    }
    
    /* func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete"){
            (_,_,actionPerform) in
            self.sections[indexPath.row].friends.remove(at: indexPath.row)
            actionPerform(true)
        }
        deleteAction.image = UIImage(systemName: "trash")
            
        let swipActionConfiguration = UISwipeActionsConfiguration(actions: [deleteAction])
        return swipActionConfiguration
    }  */
        
    
    
    
    

func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (_, _, actionPerformed) in
        self.sections[indexPath.section].friends.remove(at: indexPath.row)
        actionPerformed(true)
    }
    deleteAction.image = UIImage(systemName: "trash")
    let swipeActionConfiguration = UISwipeActionsConfiguration(actions: [deleteAction])
    swipeActionConfiguration.performsFirstActionWithFullSwipe = false
    return swipeActionConfiguration
} 
    
    /* func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete",handler: {(_,_,action) in
        self.sections[indexPath.section].friends.remove(at: indexPath.row)
        })
        let swipeActionConfiguration = UISwipeActionsConfiguration(actions: [deleteAction])
        return swipeActionConfiguration
    } */
    

}


 
