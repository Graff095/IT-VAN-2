//
//  tipDanyhJcon.swift
//  IT VAN 2
//
//  Created by Visarg on 03.07.2022.
//

import Foundation

struct tipDanyh:Decodable {
    let companies:[company]
    
}
struct company:Decodable {
    let name: String
    let employees: [employee]
    let logo: String
}

struct employee:Decodable  {
    let name: String
    let phone_number: String
    let skills:[String]
}
