//
//  CalendarCell.swift
//  CalendarTT-Demo
//
//  Created by projas on 12/27/19.
//  Copyright © 2019 Pedro Rojas. All rights reserved.
//

import SwiftUI

struct DayCell: View {
  
  let value: Int
  
  var body: some View {
    Text("\(value)")
      .font(.title)
  }
}

struct DayCell_Previews: PreviewProvider {
  static var previews: some View {
    DayCell(value: 31)
      .previewLayout(.fixed(width: 100, height: 100))
  }
}
