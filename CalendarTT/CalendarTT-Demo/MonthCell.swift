//
//  MonthCell.swift
//  CalendarTT-Demo
//
//  Created by projas on 12/27/19.
//  Copyright © 2019 Pedro Rojas. All rights reserved.
//

import SwiftUI

struct MonthCell: View {
  
  private var cellWidth: CGFloat = UIScreen.main.bounds.width / 7
  private var cellHeight: CGFloat = UIScreen.main.bounds.width / 7
  
  init() {
    UITableView.appearance().separatorStyle = .none
  }
  
  var body: some View {
    VStack{
      ForEach(1...5, id: \.self) { row in
        HStack {
          ForEach(21...27, id: \.self) { column in
            GeometryReader { geometry in
              DayCell(value: column)
                .frame(width: self.cellWidth, height: self.cellHeight)
                .background(row % 2 == 0 ? Color.red : Color.yellow)
            }
            .frame(height: self.cellHeight)
            .background(Color.green)
            .padding(.vertical, -6)
            
          }
        }
      }//.frame(height: cellHeight * 5)
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
