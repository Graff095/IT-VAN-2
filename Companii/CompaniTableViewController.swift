//
//  CompaniTableViewController.swift
//  IT VAN 2
//
//  Created by Visarg on 03.07.2022.
//

import UIKit

class CompaniTableViewController: UITableViewController {
    var tipDanyh:tipDanyh? = nil
    let networgServis = NetworgServis()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "компания"
        
        
        let urlString = "https://run.mocky.io/v3/1a1c6aa1-3629-4d1b-833f-55edece6bd3e" // создали сылку
//            networgServis.request(urlString: urlString) { tipDanyh, error in
//            tipDanyh?.companies.map({ compani in
//                print(compani.name)
//            })
//    }
//
    
        networgServis.request(urlString: urlString) { (rezult)  in
            switch rezult{
            case .success(let tipDanyh):
//                tipDanyh.companies.map { company in
//                    print(company.name)
//
//
//                }
                self.tipDanyh = tipDanyh
                self.tableView.reloadData()
            case .failure(let error):
                print (error)
            }
        }
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tipDanyh?.companies.count ?? 0
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let company = tipDanyh?.companies[indexPath.row]
//        guard let urlImage = company?.logo else {fatalError("нет логотипа ощибка ")}
//    let  url = URL(string: urlImage)
//        guard let data = try? Data(contentsOf: url!)  else {return}
//     cell.imageView?.image = UIImage(data: data)
//
        cell.textLabel?.text = company?.name
        
        //print("данные", company?.employees)
  
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SwovSpisok" {
            if let indexPath =  tableView.indexPathForSelectedRow {
                let detailsVC = segue.destination as! Spisi_okSotrudTableViewController
                let company = tipDanyh?.companies[indexPath.row]
                detailsVC.sotrudniki = company

            }
        }
    }
}
