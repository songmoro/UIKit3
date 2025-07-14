//
//  ViewController.swift
//  UIKit3
//
//  Created by 송재훈 on 7/11/25.
//

import UIKit
import Toast

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.makeToast("\(#file): viewDidAppear")
    }
}
