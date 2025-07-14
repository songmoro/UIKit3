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
        
        tableView.register(
            UINib(nibName: "TravelTableViewCell", bundle: nil),
            forCellReuseIdentifier: "TravelTableViewCell"
        )
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TravelTableViewCell", for: indexPath) as? TravelTableViewCell
        guard let cell else { return UITableViewCell() }
        
        return cell
    }
}
