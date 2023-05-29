//
//  CountryDataModel.swift
//  CovidStats
//
//  Created by Chirag Chaplot on 29/5/2023.
//

import Foundation

// MARK: - CountryData
struct CountryDataModel: Codable {
    let updated: Int?
    let country: String
    let countryInfo: CountryInfo?
    let cases, todayCases, deaths, todayDeaths: Int?
    let recovered, active, critical, casesPerOneMillion: Int?
    let deathsPerOneMillion, tests, testsPerOneMillion: Int?
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
