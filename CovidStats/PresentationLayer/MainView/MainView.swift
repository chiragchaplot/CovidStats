//
//  ContentView.swift
//  CovidStats
//
//  Created by Chirag Chaplot on 29/5/2023.
//

import SwiftUI

struct MainView: View {

  @StateObject private var viewModel = MainViewModel()
  
  var body: some View {
    NavigationView {
      ZStack(alignment: .top) {
        LinearGradient(colors: [
          Color(red: 0.76, green: 0.15, blue: 0.26),
          Color(red: 0.01, green: 0.23, blue: 0.5)
        ],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()

        VStack(alignment: .leading) {
          Text("World Total")
            .font(.title2.bold())
            .foregroundColor(.white)
            .padding(10)
          GlobalDataView(globalData: viewModel.globalData)

          if viewModel.isSearchVisible {
            SearchBarView(searchText: $viewModel.countrySearchText)
          }

          Text("All Countries")
            .font(.title2.bold())
            .foregroundColor(.white)
            .padding(10)
          List {
            Section {
              ForEach(viewModel.allCountries.filter {
                viewModel.countrySearchText.isEmpty ? true : $0.country.lowercased().contains(viewModel.countrySearchText.lowercased())
              },
                      id: \.countryInfo?.iso2) {
                country in
                NavigationLink(destination: CountryDetailView(viewModel: CountryDetailViewModel(country: country))) {
                  Text(country.country)
                }
              }
            }
          }.listStyle(.plain)
        }
      }.navigationTitle("Statistics")
        .toolbar {
          Button {
            viewModel.isSearchVisible.toggle()
            if !viewModel.isSearchVisible {
              viewModel.countrySearchText = .empty
            }
          } label: {
            Image(systemName: "magnifyingglass")
          }
        }.tint(.white)
    }.accentColor(.white)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    MainView()
  }
}
