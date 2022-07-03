//
//  CompaniTableViewController.swift
//  IT VAN 2
//
//  Created by Visarg on 03.07.2022.
//

import UIKit

class CompaniTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "компания"
        
        let networgServis = NetworgServis()
        let urlString = "https://run.mocky.io/v3/1a1c6aa1-3629-4d1b-833f-55edece6bd3e" // создали сылку
            networgServis.request(urlString: urlString) { tipDanyh, error in
            tipDanyh?.companies.map({ compani in
                print(compani.name)
            })
    }
        
        
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
