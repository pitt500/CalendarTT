//
//  CalendarView.swift
//  CalendarTT-Demo
//
//  Created by projas on 12/28/19.
//  Copyright © 2019 Pedro Rojas. All rights reserved.
//

import SwiftUI

struct CalendarView: View {
  
  var scrollMode: Axis.Set
  var dayWidth: CGFloat
  var dayHeight: CGFloat
  
  init(scrollMode: Axis.Set = .vertical,
       dayWidth: CGFloat = UIScreen.main.bounds.width,
       dayHeight: CGFloat = UIScreen.main.bounds.height) {
    self.scrollMode = scrollMode
    self.dayWidth = dayWidth
    self.dayHeight = dayHeight
    UITableView.appearance().separatorStyle = .none
  }
  
  var body: some View {
    let cellWidth = (dayWidth < dayHeight) ? dayWidth / 7 : dayHeight / 7
    
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
              MonthCell(height: cellWidth)
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
