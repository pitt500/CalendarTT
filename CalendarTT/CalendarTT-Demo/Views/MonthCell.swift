//
//  MonthCell.swift
//  CalendarTT-Demo
//
//  Created by projas on 12/27/19.
//  Copyright © 2019 Pedro Rojas. All rights reserved.
//

import SwiftUI

struct MonthCell: View {
  
  init() {
    UITableView.appearance().separatorStyle = .none
  }
  
  var body: some View {
    
    let cellWidth = (UIScreen.main.bounds.width < UIScreen.main.bounds.height) ? UIScreen.main.bounds.width / 7 : UIScreen.main.bounds.height / 7
    
    return VStack{
      ForEach(1...5, id: \.self) { row in
        HStack {
          ForEach(21...27, id: \.self) { column in
            GeometryReader { geometry in
              return DayCell(value: column)
              .frame(width: geometry.size.width, height: geometry.size.height)
              .background(row % 2 == 0 ? Color.red : Color.yellow)
            }
            .frame(height: cellWidth)
            .background(Color.green)
            .padding([.vertical, .horizontal], -6)
            
          }
        }
      }
    }
    
  }
}

struct MonthCell_Previews: PreviewProvider {
  static var previews: some View {
    
    Group {
      MonthCell()
      .previewDevice("iPhone 11")
      MonthCell()
      .previewDevice("iPhone SE")
      MonthCell()
      .previewDevice("iPhone 8 Plus")
    }
  }
}
