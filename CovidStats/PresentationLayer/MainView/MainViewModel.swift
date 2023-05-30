//
//  MainViewModel.swift
//  CovidStats
//
//  Created by Chirag Chaplot on 29/5/2023.
//

import Foundation

final class MainViewModel: ObservableObject {

  @Published var globalData: TotalDataModel = TotalDataModel(updated: 0, cases: 0, deaths: 0, recovered: 0, active: 0, affectedCountries: 0)
  @Published var allCountries: [CountryDataModel] = []
  @Published var countrySearchText = String.empty
  @Published var isSearchVisible = false
//  @Published var alertItem: AlertItem?
  init() {
    fetchGlobalData()
    fetchAllCountriesData()
  }

  func fetchGlobalData() {
    APIService.sharedInstance.fetchGlobalData { result in
      DispatchQueue.main.async {
        switch result {
        case .success(let globalData):
          self.globalData = globalData
        case .failure(let error):
          print("Error: \(error)")
        }
      }
    }
  }

  func fetchAllCountriesData() {
    APIService.sharedInstance.fetchAllCountryData { result in
      DispatchQueue.main.async {
        switch result {
        case .success(let allCountries):
          self.allCountries = allCountries.sorted(by: { $0.country < $1.country })
        case .failure(let error):
          print("Error: \(error)")
        }
      }
    }
  }
}
