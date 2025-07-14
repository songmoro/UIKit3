//
//  TravelTableViewCell.swift
//  UIKit3
//
//  Created by 송재훈 on 7/14/25.
//

import UIKit

class TravelTableViewCell: UITableViewCell, HasNibName, HasIdentifier {
    static let nibName: String = "TravelTableViewCell"
    static let identifier: String = "TravelTableViewCell"
    
    @IBOutlet var travelLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
