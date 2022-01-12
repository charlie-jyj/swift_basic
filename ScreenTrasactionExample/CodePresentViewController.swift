//
//  CodePresentViewController.swift
//  ScreenTrasactionExample
//
//  Created by UAPMobile on 2022/01/05.
//

import UIKit

// delegate protocol
protocol SendDataDelegate: AnyObject {
    func sendData(name: String)
}

class CodePresentViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    weak var delegate: SendDataDelegate?  //delegate 변수 사용할 때에는 강한 순환 참조로 인한 메모리 누수 피하기 위해 weak 선언
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.delegate?.sendData(name: "yujin")
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
