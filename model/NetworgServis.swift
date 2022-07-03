//
//  NetworgServis.swift
//  IT VAN 2
//
//  Created by Visarg on 03.07.2022.
//

import Foundation

class NetworgServis{
    func request (urlString: String, completion: @escaping (tipDanyh?, Error?) -> Void) {
        guard let url = URL(string: urlString) else {return} // если ссылка подходить создали url
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            DispatchQueue.main.async {
                if let error = error {
                    print(error)
                    completion (nil, error)
                    return
                } // если будет ощибка то ее разпечать
            }
            guard let  data = data else {return} // если есть дата то ее распечать
//            let josonString = String(data: data, encoding: .utf8)
//            print (josonString)
            do {
                let compani = try JSONDecoder().decode(tipDanyh.self, from: data)
               completion (compani, nil)
               // print(tipDanyh.init(companies: ))
}catch let jsonError {
    print ("Ощибка",jsonError)
    completion (nil, jsonError)
}
            
        }.resume() // что запустиь наш запрос
    }
}
