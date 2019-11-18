//
//  TableViewpracticeControllere.swift
//  TablePractice
//
//  Created by apple on 2019/10/24.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class TableViewpracticeControllere: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    private var friend = [Friend]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 80
        tableView.register(UINib(nibName: "rowCustomTableTableViewCell", bundle: Bundle.main) , forCellReuseIdentifier: "FridedIdentifier")
        tableView.dataSource = self
        self.friend = Friend.allFriends()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friend.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FridedIdentifier", for: indexPath) as! rowCustomTableTableViewCell
        let data = friend[indexPath.row]
        cell.nameLabel.text = data.name
        cell.countryLabel.text = data.countryName
        cell.aboutLabel.text = data.bio
        return cell
    }


}

