//
//  ContentView.swift
//  CalendarTT-Demo
//
//  Created by projas on 12/23/19.
//  Copyright © 2019 Pedro Rojas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  init() {
    UITableView.appearance().separatorStyle = .none
  }
  
  var body: some View {
    CalendarView()
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
