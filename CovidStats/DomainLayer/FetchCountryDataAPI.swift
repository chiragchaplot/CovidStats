//
//  FetchCountryDataAPI.swift
//  CovidStats
//
//  Created by Chirag Chaplot on 30/5/2023.
//

import Foundation

struct FetchCountryDataAPI: APIHandler {

    func makeRequest(from param: [String: Any]) -> URLRequest? {
      let urlString =  APIPath().fetchAllCountryData
        if var url = URL(string: urlString) {
            if param.count > 0 {
                url = setQueryParams(parameters: param, url: url)
            }
            var urlRequest = URLRequest(url: url)
            setDefaultHeaders(request: &urlRequest)
            urlRequest.httpMethod = HTTPMethod.get.rawValue
            return urlRequest
        }
        return nil
    }

    func parseResponse(data: Data, response: HTTPURLResponse) throws -> [CountryDataModel] {
        return try defaultParseResponse(data: data,response: response)
    }
}
