//
//  TotalDataModel.swift
//  CovidStats
//
//  Created by Chirag Chaplot on 29/5/2023.
//

import Foundation

struct TotalDataModel: Codable {
  let updated, cases, deaths, recovered, active, affectedCountries: Double
}
