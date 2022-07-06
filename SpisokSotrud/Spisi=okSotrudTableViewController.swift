//
//  Spisi=okSotrudTableViewController.swift
//  IT VAN 2
//
//  Created by Visarg on 03.07.2022.
//

import UIKit

class Spisi_okSotrudTableViewController: UITableViewController {
  
    
    
    var sotrudniki:company? = nil
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Список сотрудников"
    }

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sotrudniki?.employees.count ?? 0
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let sotrudnik = sotrudniki?.employees[indexPath.row]
        
        cell.textLabel?.text = sotrudnik?.name
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SwovEmployee" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let employeeVC = segue.destination as! ViewController
                let sotrudnik = sotrudniki?.employees[indexPath.row]
                employeeVC.rabotnik = sotrudnik
                    
                
            }
        }
    }
}
