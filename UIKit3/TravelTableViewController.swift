//
//  TravelTableViewController.swift
//  UIKit3
//
//  Created by 송재훈 on 7/14/25.
//

import UIKit

class TravelTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(TravelTableViewCell.self)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(TravelTableViewCell.self, for: indexPath)
        guard let cell else { return UITableViewCell() }
        
        let text = "ㄱ\nㄴ\nㄷ\nㄹ\nㅁ\nㅂ\nㅅ\nㅇ\nㅈ\nㅊ\nㅋ\nㅌ\nㅍ\nㅎ"
        cell.travelLabel.text = text
        
        return cell
    }
}
