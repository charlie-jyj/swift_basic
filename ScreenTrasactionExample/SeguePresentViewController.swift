//
//  SeguePresentViewController.swift
//  ScreenTrasactionExample
//
//  Created by UAPMobile on 2022/01/05.
//

import UIKit

class SeguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func tabBackButton(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
}
