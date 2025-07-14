//
//  CustomTableViewCell.swift
//  UIKit3
//
//  Created by 송재훈 on 7/14/25.
//

import UIKit

typealias CustomTableViewCell = UITableViewCell & HasNibName & HasIdentifier

protocol HasNibName {
    static var nibName: String { get }
}

protocol HasIdentifier {
    static var identifier: String { get }
}

extension UITableView {
    func register(_ customCell: CustomTableViewCell.Type, bundle: Bundle? = nil) {
        self.register(
            UINib(nibName: customCell.nibName, bundle: bundle),
            forCellReuseIdentifier: customCell.identifier
        )
    }
    
    func dequeueReusableCell<T: CustomTableViewCell>(_ customCell: T.Type, for indexPath: IndexPath) -> T? {
        self.dequeueReusableCell(
            withIdentifier: customCell.identifier,
            for: indexPath
        ) as? T
    }
}
