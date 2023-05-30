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
