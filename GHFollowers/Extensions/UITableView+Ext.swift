//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Miguel Planckensteiner on 11.08.20.
//  Copyright © 2020 Miguel Planckensteiner. All rights reserved.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
