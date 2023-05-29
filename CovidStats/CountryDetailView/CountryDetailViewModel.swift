//
//  CountryDetailViewModel.swift
//  CovidStats
//
//  Created by Chirag Chaplot on 29/5/2023.
//

import Foundation

final class CountryDetailViewModel: ObservableObject {
  @Published var countryData: CountryDataModel

  init(country: CountryDataModel) {
    self.countryData = country
  }

  func getName() -> String {
    return countryData.country
  }

  func getDate() -> String? {
    guard let updated = countryData.updated  else { return nil }
    let date = Date(timeIntervalSince1970: updated)
    let dateFormatter = DateFormatter()
    dateFormatter.timeZone = TimeZone(abbreviation: "AET")
    dateFormatter.locale = NSLocale.current
    dateFormatter.dateFormat = "dd-MMM-yyyy"
    return dateFormatter.string(from: date)
  }

  func getActive() -> String? {
    return countryData.active?.roundedWithAbbreviations
  }

  func getDeaths() -> String? {
    return countryData.deaths?.roundedWithAbbreviations
  }

  func getCases() -> String? {
    return countryData.deaths?.roundedWithAbbreviations
  }

  func getRecovered() -> String? {
    return countryData.recovered?.roundedWithAbbreviations
  }
}
