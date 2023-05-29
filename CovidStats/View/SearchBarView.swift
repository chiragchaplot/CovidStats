//
//  SearchBarView.swift
//  CovidStats
//
//  Created by Chirag Chaplot on 29/5/2023.
//

import SwiftUI

struct SearchBarView: View {
  @Binding var searchText: String
    var body: some View {
      HStack {
        TextField("Country...", text: $searchText)
          .foregroundColor(.white)
          .padding()
      }.frame(height: 50)
        .background(.regularMaterial)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
      SearchBarView(searchText: .constant(""))
    }
}
