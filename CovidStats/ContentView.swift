//
//  ContentView.swift
//  CovidStats
//
//  Created by Chirag Chaplot on 29/5/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
          APIService.sharedInstance.fetchAllCountryData { result in
            //DO Something
          }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
