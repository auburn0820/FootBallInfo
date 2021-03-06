//
//  Constants.swift
//  FootballInfo
//
//  Created by νΌμμ on 2021/10/04.
//

import Foundation

struct URLConstants {
    static let networkProtocol = "https://"
    
    struct ESPN {
        static let base = "api.espn.com/"
        static let football = networkProtocol + base + "v1/sports/basketball/nba/calendar?lang=es"
    }
}
