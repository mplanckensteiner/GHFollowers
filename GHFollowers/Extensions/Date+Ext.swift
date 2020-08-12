//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Miguel Planckensteiner on 27.07.20.
//  Copyright © 2020 Miguel Planckensteiner. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
