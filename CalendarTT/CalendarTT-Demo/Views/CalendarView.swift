//
//  CalendarView.swift
//  CalendarTT-Demo
//
//  Created by projas on 12/28/19.
//  Copyright © 2019 Pedro Rojas. All rights reserved.
//

import SwiftUI

struct CalendarView: View {
  
  init() {
    UITableView.appearance().separatorStyle = .none
  }
  
  var body: some View {
    List {
      ForEach(Month.all()) { month in
        
        VStack(alignment: .leading) {
          Text("\(month.name)")
          MonthCell()
        }
      }
    }
  }
}

struct CalendarView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      CalendarView().previewDevice("iPhone SE")
      CalendarView().previewDevice("iPhone 11 Pro Max")
    }
  }
}

struct Month: Identifiable {
  let id = UUID()
  let name: String
  
  
  static func all() -> [Month] {
    return [
      Month(name: "September"),
      Month(name: "September"),
      Month(name: "September"),
      Month(name: "September"),
      Month(name: "September"),
      Month(name: "September")
    ]
  }
}
