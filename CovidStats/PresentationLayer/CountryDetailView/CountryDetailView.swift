//
//  CountryDetailView.swift
//  CovidStats
//
//  Created by Chirag Chaplot on 29/5/2023.
//

import SwiftUI

struct CountryDetailView: View {

  @ObservedObject private var viewModel: CountryDetailViewModel

  init(viewModel: CountryDetailViewModel) {
    self.viewModel = viewModel
  }

  var body: some View {
    ZStack {
      LinearGradient(colors: [
        Color(red: 0.76, green: 0.15, blue: 0.26),
        Color(red: 0.01, green: 0.23, blue: 0.5)
      ],
                     startPoint: .topLeading,
                     endPoint: .bottomTrailing)
      .ignoresSafeArea()

      VStack {
        Spacer()
        
        Text(viewModel.getName())
          .foregroundColor(.white)
          .font(.largeTitle)

        Spacer()

        VStack(alignment: .leading,
               spacing: 15) {
          if let date = viewModel.getDate() {
            Text("Date: \(date)")
          }
          if let active = viewModel.getActive() {
            Text("Active: \(active)")
          }
          if let death = viewModel.getDeaths() {
            Text("Deaths: \(death)")
          }
          if let cases = viewModel.getCases() {
            Text("Cases: \(cases)")
          }
          if let recovered = viewModel.getRecovered() {
            Text("Recovered: \(recovered)")
          }
        }.font(.title2)
          .frame(maxWidth: .infinity)
          .padding(50)
          .background(.ultraThickMaterial)
          .clipShape(RoundedRectangle(cornerRadius: 20))
          .padding()

        Spacer()
      }

    }
  }
}

struct CountryDetailView_Previews: PreviewProvider {
  static var previews: some View {
    CountryDetailView(viewModel: CountryDetailViewModel(country: CountryDataModel.dummyData))
  }
}
