//
//  CustomTableViewCell.swift
//  UIKit3
//
//  Created by 송재훈 on 7/14/25.
//

import UIKit

typealias CustomTableViewCell = UITableViewCell & HasNibName & HasIdentifier

extension UITableView {
    func register(_ customCell: CustomTableViewCell.Type, bundle: Bundle? = nil) {
        self.register(
            UINib(nibName: customCell.nibName, bundle: bundle),
            forCellReuseIdentifier: customCell.identifier
        )
    }
}
