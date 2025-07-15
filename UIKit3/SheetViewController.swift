//
//  SheetViewController.swift
//  UIKit3
//
//  Created by 송재훈 on 7/15/25.
//

import UIKit

class SheetViewController: UIViewController {
    @IBAction func pushButtonTapped(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "SheetInnerViewController") as! SheetInnerViewController
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func presentButtonTapped(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "SheetInnerViewController") as! SheetInnerViewController
        
        present(vc, animated: true)
    }
}

class SheetInnerViewController: UIViewController {
    @IBAction func dismissButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
        navigationController?.popViewController(animated: true)
    }
}
