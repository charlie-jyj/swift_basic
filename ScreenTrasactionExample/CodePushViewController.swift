//
//  CodePushViewController.swift
//  ScreenTrasactionExample
//
//  Created by UAPMobile on 2022/01/05.
//

import UIKit

class CodePushViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            // optional binding
            self.nameLabel.text = name
            self.nameLabel.sizeToFit() // label 의 내용이 잘리지 않게
        }
    }
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
