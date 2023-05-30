//
//  APIPath.swift
//  CovidStats
//
//  Created by Chirag Chaplot on 30/5/2023.
//

import Foundation

#if DEBUG
let environment = APIEnvironment.development
#else
let environment = APIEnvironment.development
#endif

let baseURL = environment.baseURL()

struct APIPath {
  var fetchGlobalData: String { return "\(baseURL)all?yesterday=null" }
  var fetchAllCountryData: String { return "\(baseURL)countries?yesterday=null&sort=null" }
}
