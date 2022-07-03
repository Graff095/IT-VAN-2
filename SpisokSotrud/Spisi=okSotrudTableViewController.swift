//
//  Spisi=okSotrudTableViewController.swift
//  IT VAN 2
//
//  Created by Visarg on 03.07.2022.
//

import UIKit

class Spisi_okSotrudTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //navigationItem.title = "Список сотрудников"
    }

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "2121"
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }

}
