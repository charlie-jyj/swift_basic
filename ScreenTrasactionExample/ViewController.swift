//
//  ViewController.swift
//  ScreenTrasactionExample
//
//  Created by UAPMobile on 2022/01/05.
//

import UIKit

// delegate protocol을 채택한다 : SendDataDelegate => 메서드를 정의한다.
class ViewController: UIViewController, SendDataDelegate {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewController view 가 로드 되었다.")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController view 가 나타날 것이다.")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewController view 가 나타났다.")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViewController view 가 사라질 것이다.")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewController view 가 사라졌다.")
    }
    
    @IBAction func tapCodePresentButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePresentViewController") as? CodePresentViewController else { return }
        viewController.modalPresentationStyle = .fullScreen
        viewController.name = "yujin"
        viewController.delegate = self
        self.present(viewController, animated: true, completion: nil)
    }

    @IBAction func tapCodePushButton(_ sender: UIButton) {
        // 1. 스토리 보드에 있는 viewController 를 인스턴스화 한다. identifier 는 스토리보드에서 정의한다.
        // 2. 각 타입에 맞는 클래스로 다운캐스팅한다. => 각 클래스의 멤버에 접근할 수 있게 된다.
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "codePushViewController") as? CodePushViewController  else { return }
        viewController.name = "yujin"
        self.navigationController?.pushViewController(viewController, animated: true)
    
    }
    
    // segueway를 통해 데이터를 전달할 경우, segueway 호출 직전 자동 호출
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SeguePushViewController {
            viewController.name = "yujin"
        }
    }
    
    func sendData(name: String) {
        self.nameLabel.text = name
        self.nameLabel.sizeToFit()
    }
    
}

