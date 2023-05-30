//
//  CountryDataModel.swift
//  CovidStats
//
//  Created by Chirag Chaplot on 29/5/2023.
//

import Foundation

// MARK: - CountryData
struct CountryDataModel: Codable {
    let updated: Double?
    let country: String
    let countryInfo: CountryInfo?
    let cases, todayCases, deaths, todayDeaths: Int?
    let recovered, active, critical, casesPerOneMillion: Int?
    let deathsPerOneMillion, tests, testsPerOneMillion: Int?

  static let dummyData: CountryDataModel  = CountryDataModel(updated: 1587140875524,
                                                             country: "India",
                                                             countryInfo: nil,
                                                             cases: 0,
                                                             todayCases: 0,
                                                             deaths: 0,
                                                             todayDeaths: 0,
                                                             recovered: 0,
                                                             active: 0,
                                                             critical: 0,
                                                             casesPerOneMillion: 0,
                                                             deathsPerOneMillion: 0,
                                                             tests: 0,
                                                             testsPerOneMillion: 0)
}

// MARK: - CountryInfo
struct CountryInfo: Codable {
    let id: Int?
    let iso2, iso3: String?
    let lat, long: Double?
    let flag: String?

    enum CodingKeys: String, CodingKey {
        case id
        case iso2, iso3, lat, long, flag
    }
}
