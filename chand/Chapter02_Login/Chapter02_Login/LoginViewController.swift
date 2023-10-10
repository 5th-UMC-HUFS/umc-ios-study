//
//  LoginViewController.swift
//  Chapter04_Login
//
//  Created by Chandrala on 2023/10/06.
//

import UIKit

class LoginViewController: UIViewController {
    
    var email = String()
    var password = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func emailTextfieldEditingChanged(_ sender: UITextField) {
        let text = sender.text ?? ""
        self.email = text
    }
    
    @IBAction func passwordTextFieldEditingChanged(_ sender: UITextField) {
        let text = sender.text ?? ""
        self.password = text
    }
    
    @IBAction func loginButtonDidTap(_ sender: UIButton) {
    }
    
    @IBAction func registerButtonDidTap(_ sender: UIButton) {
        //스토리보드 생성
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        //뷰컨트롤러 생성
        let registerViewController = storyboard.instantiateViewController(withIdentifier: "RegisterVC")
        
        //화면전환 메소드를 이용해 화면 전환
//        self.present(registerViewController, animated: true, completion: nil)
        self.navigationController?.pushViewController(registerViewController, animated: true)
    }
}


