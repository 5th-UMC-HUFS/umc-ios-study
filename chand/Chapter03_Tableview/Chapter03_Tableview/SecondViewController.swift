//
//  SecondViewController.swift
//  Chapter03_Tableview
//
//  Created by Chandrala on 2023/10/09.
//

import UIKit

class SecondViewController: UIViewController, ChangeLabelDelegate {
    func doChange() {
        previousViewController?.label.text = self.textField.text
    }
    
    
    //전의 뷰가 뭔지 알기 위해서
    var previousViewController : ViewController?
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func btnDissmiss(_ sender: Any) {
        doChange()
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        previousViewController?.delegate = self
    }
}
