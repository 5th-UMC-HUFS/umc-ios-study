//
//  ViewController.swift
//  Chapter01_AutoLayout_mission
//
//  Created by 이전희 on 2023/09/25.
//

import UIKit

extension UIColor {
    static let bmColor: UIColor = UIColor(red: 119,
                                          green: 188,
                                          blue: 186,
                                          alpha: 1)
}

class ViewController: UIViewController {

    @IBOutlet weak var bmMenuBar: UIView!
    @IBOutlet weak var bmSearchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       configure()
    }
    
    func configure(){
        bmMenuBar.layer.cornerRadius = 16
        bmMenuBar.layer.maskedCorners = CACornerMask(arrayLiteral: .layerMinXMaxYCorner, .layerMaxXMaxYCorner)
        bmMenuBar.layer.shadowOpacity = 0.2
        bmMenuBar.layer.shadowRadius = 0.05
        bmMenuBar.layer.shadowOffset = CGSize(width: 0, height: 1)
        bmMenuBar.layer.shadowPath = nil
        
        
        bmSearchBar.backgroundColor = .white
        bmSearchBar.placeholder = "찾는 맛집 이름이 뭐예요?"

    }


}

