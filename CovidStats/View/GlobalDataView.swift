//
//  GlobalDataView.swift
//  CovidStats
//
//  Created by Chirag Chaplot on 29/5/2023.
//

import SwiftUI

struct GlobalDataView: View {
  var globalData: TotalDataModel
  var body: some View {
    VStack {
      HStack {
        GlobalDataCardView(number: globalData.active.roundedWithAbbreviations,
                           name: "Active",
                           color: .purple)
        GlobalDataCardView(number: globalData.deaths.roundedWithAbbreviations,
                           name: "Deaths",
                           color: .red)
      }
      HStack {
        GlobalDataCardView(number: globalData.recovered.roundedWithAbbreviations,
                           name: "Recovered",
                           color: .green)
        GlobalDataCardView(number: globalData.cases.roundedWithAbbreviations,
                           name: "Cases",
                           color: .blue)
      }
    }.frame(height: 170)
      .padding(10)
  }
}

struct GlobalDataView_Previews: PreviewProvider {
  static var previews: some View {
    GlobalDataView(globalData: TotalDataModel(updated: 12,
                                              cases: 12,
                                              deaths: 12,
                                              recovered: 12,
                                              active: 12,
                                              affectedCountries: 12))
  }
}
