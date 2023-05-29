//
//  APIService.swift
//  CovidStats
//
//  Created by Chirag Chaplot on 29/5/2023.
//

import Foundation

final class APIService {

  static let sharedInstance = APIService()
  private let baseURL: String  = "https://corona.lmao.ninja/v2/"

  func fetchGlobalData(completion: @escaping (Result<TotalDataModel, Error>) -> Void) {

    let urlString = baseURL + "all?yesterday=null"
    guard let url = URL(string: urlString) else {
      completion(.failure(COVIDError.incorrectURL))
      return
    }
    var request = URLRequest(url: url,
                             cachePolicy: .reloadRevalidatingCacheData,
                             timeoutInterval: Double.infinity)
    request.httpMethod = "GET"

    let task = URLSession.shared.dataTask(with: request) { data, response, error in
      if error != nil {
        completion(.failure(COVIDError.noDataReceived))
      } else {
        guard let data = data else {
          completion(.failure(COVIDError.noDataReceived))
          return
        }

        do {
          let totalDataObject = try JSONDecoder().decode(TotalDataModel.self, from: data)
          completion(.success(totalDataObject))
        } catch let error {
          completion(.failure(error))
        }
      }
    }

    task.resume()
  }


  func fetchAllCountryData(completion: @escaping (Result<[CountryDataModel], Error>) -> Void) {

    let urlString = baseURL + "countries?yesterday=null&sort=null"
    guard let url = URL(string: urlString) else {
      completion(.failure(COVIDError.incorrectURL))
      return
    }
    var request = URLRequest(url: url,
                             cachePolicy: .reloadRevalidatingCacheData,
                             timeoutInterval: Double.infinity)
    request.httpMethod = "GET"

    let task = URLSession.shared.dataTask(with: request) { data, response, error in
      if error != nil {
        completion(.failure(COVIDError.noDataReceived))
      } else {
        guard let data = data else {
          completion(.failure(COVIDError.noDataReceived))
          return
        }

        do {
          let countryData = try JSONDecoder().decode([CountryDataModel].self, from: data)
          completion(.success(countryData))
        } catch let error {
          completion(.failure(error))
        }
      }
    }

    task.resume()
  }
}
