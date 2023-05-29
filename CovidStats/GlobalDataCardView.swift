//
//  GlobalDataCardView.swift
//  CovidStats
//
//  Created by Chirag Chaplot on 29/5/2023.
//

import SwiftUI

struct GlobalDataCardView: View {

  var number: String = "--"
  var name: String = "Error"
  var color: Color = .primary

  var body: some View {
    GeometryReader {
      geometry in
      VStack(spacing: 10) {
        Text(self.name)
          .font(.body)
          .foregroundColor(self.color)
        Text(self.number)
          .font(.subheadline)
          .foregroundColor(self.color)
      }
      .frame(width: geometry.size.width,
             height: 80,
             alignment: .center)
      .background(Color("cardBackground"))
      .cornerRadius(8.0)
    }
  }
}

struct GlobalDataCardView_Previews: PreviewProvider {
  static var previews: some View {
    GlobalDataCardView()
  }
}
