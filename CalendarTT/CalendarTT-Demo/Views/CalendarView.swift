//
//  CalendarView.swift
//  CalendarTT-Demo
//
//  Created by projas on 12/28/19.
//  Copyright © 2019 Pedro Rojas. All rights reserved.
//

import SwiftUI

//enum ScrollMode {
//  case horizontal
//  case vertical
//}

struct CalendarView: View {
  
  var scrollMode: Axis.Set
  
  init(scrollMode: Axis.Set = .vertical) {
    self.scrollMode = scrollMode
    UITableView.appearance().separatorStyle = .none
  }
  
  var body: some View {
    let cellWidth = (UIScreen.main.bounds.width < UIScreen.main.bounds.height) ? UIScreen.main.bounds.width / 7 : UIScreen.main.bounds.height / 7
    
    let cellHeight = (UIScreen.main.bounds.width < UIScreen.main.bounds.height) ? UIScreen.main.bounds.width / 7 : UIScreen.main.bounds.height / 7
    
    return ScrollView(self.scrollMode) {
      
      //let stack = (self.scrollMode == .horizontal) ? HStack() : VStack()
      
      if self.scrollMode == .horizontal {
        
        HStack {
          ForEach(Month.all()) { month in
            VStack(alignment: .leading) {
              Text("\(month.name)")
              MonthCell(width: cellWidth)
            }.padding()
          }
        }
      } else {
        VStack {
          ForEach(Month.all()) { month in
            VStack(alignment: .leading) {
              Text("\(month.name)")
              MonthCell(height: cellHeight)
            }.padding()
          }
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
