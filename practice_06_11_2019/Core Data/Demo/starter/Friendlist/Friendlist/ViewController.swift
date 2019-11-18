//
//  ViewController.swift
//  Friendlist
//
//  Created by Mufakkharul Islam Nayem on 7/29/19.
//  Copyright © 2019 Mufakkharul Islam Nayem. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!

    var persons = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Friend's List"
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "ReusableCell")
        print(FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        let managedContext = appDelegate.persistentContainer.viewContext
        let entityName = Person.entity().name!
        let fetchRequest = NSFetchRequest<Person>(entityName: entityName)
        do {
            persons = try managedContext.fetch(fetchRequest)
        } catch {
            print("Could not fetch data for person. \(error)")
        }
    }

    @IBAction func addNewButtonDidTap(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "New Name", message: "Add a new name", preferredStyle: .alert)

        let saveAction = UIAlertAction(title: "Save", style: .default) { [unowned self] action in
            guard let textField = alert.textFields?.first, let nameToSave = textField.text else { return }
            self.save(name: nameToSave)
            self.tableView.reloadData()
        }

        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)

        alert.addTextField()

        alert.addAction(saveAction)
        alert.addAction(cancelAction)

        present(alert, animated: true)
    }

    private func save(name: String) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        let managedContext = appDelegate.persistentContainer.viewContext
        let entity = Person.entity()
        let person = Person(entity: entity, insertInto: managedContext)
        person.name = name
        appDelegate.saveContext()
        persons.append(person)
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath)
        let person = persons[indexPath.row]
        cell.textLabel?.text = person.name
        return cell
    }


}
