//
//  APIEnvironment.swift
//  CovidStats
//
//  Created by Chirag Chaplot on 30/5/2023.
//

import Foundation

enum APIEnvironment {
    case development
    case staging
    case production

    func baseURL () -> String {
        return domain()
    }

    func domain() -> String {
        switch self {
        case .development:
            return "https://corona.lmao.ninja/v2/"
        case .staging:
            return "https://corona.lmao.ninja/v2/"
        case .production:
            return "https://corona.lmao.ninja/v2/"
        }
    }
}
