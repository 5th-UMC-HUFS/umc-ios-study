//
//  ViewController.swift
//  Chapter03_Tableview
//
//  Created by Chandrala on 2023/10/09.
//

import UIKit

protocol ChangeLabelDelegate{
    func doChange()
}

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    @IBAction func btnGoNextVC(_ sender: Any) {
        //도착지를 storyboard로 지정
        guard let nextVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        else {return
        }
        
        nextVC.previousViewController = self
        nextVC.modalPresentationStyle = .fullScreen
        //present 방식으로 다음 화면으로 전환
        present(nextVC, animated: true, completion: nil)
    }
    
    var delegate : ChangeLabelDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

