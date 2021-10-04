//
//  Network.swift
//  FootballInfo
//
//  Created by 피수영 on 2021/10/04.
//

import Foundation

class NetworkHandler {
    static func getFootballInfomationData() throws {
        let defaultSession = URLSession(configuration: .default)
        
        guard let url = URL(string: URLConstants.ESPN.football) else {
            throw Errors.URLIsNill
        }
        let request = URLRequest(url: url)
        let dataTask = defaultSession.dataTask(with: request) { (data: Data?, response: URLResponse?, error: Error?) in
            if let error = error {
                print(error)
            }
            
        }
        
        dataTask.resume()
    }
}
