//
//  ContentView.swift
//  CalendarTT-Demo
//
//  Created by projas on 12/23/19.
//  Copyright © 2019 Pedro Rojas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  @State private var isVertical = true
  
  init() {
    UITableView.appearance().separatorStyle = .none
  }
  
  var body: some View {
    
    VStack {
      Button("Press me") {
        self.isVertical.toggle()
      }
      
      CalendarView(scrollMode: self.isVertical ? .vertical : .horizontal, dayWidth: 300, dayHeight: 300)
        .frame(width: 400, height: 400)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      ContentView().previewDevice("iPhone SE")
      ContentView().previewDevice("iPhone 11 Pro Max")
    }
  }
}
