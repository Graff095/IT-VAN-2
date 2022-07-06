//
//  ViewController.swift
//  IT VAN 2
//
//  Created by Visarg on 02.07.2022.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var NameSot: UILabel!
    @IBOutlet weak var phoneSot: UILabel!
    @IBOutlet weak var skills: UILabel!
   
    var rabotnik:employee? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.title = "Сотрудник"
        guard let  name = rabotnik?.name else {return}
        guard let  phone = rabotnik?.phone_number else {return}
        guard let skillss = rabotnik?.skills else {return}
        
        NameSot.text = "Имя:   \(name)"
        phoneSot.text = "Телефон:   \(phone)"
        skills.text = "Скилл:   \(skillss)"
    }
    
}

