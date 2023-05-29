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

  func fetchAllCountryData(completion: @escaping (Result<TotalDataModel, Error>) -> Void) {

    let urlString = baseURL + "all?yesterday=null"
    guard let url = URL(string: urlString) else {
      completion(.failure(COVIDError.incorrectURL))
      return
    }
    var request = URLRequest(url: url,
                             cachePolicy: .useProtocolCachePolicy,
                             timeoutInterval: 10.0)
    request.httpMethod = "GET"

    let task = URLSession.shared.dataTask(with: request) { data, response, error in
      if error != nil {
        completion(.failure(COVIDError.noDataReceived))
      } else {
        if let data = data,
           let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any] {
          print("Chirag:- ", json)
        }

      }
    }

    task.resume()
  }
}
