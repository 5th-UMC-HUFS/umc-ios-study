//
//  MainViewController.swift
//  noStoryboard-example
//
//  Created by 이전희 on 10/31/23.
//

import UIKit

class MainViewController: UIViewController {
    var label: UILabel = {
        let label = UILabel()
        label.text = "aaaaa"
        label.textAlignment = .center
        return label
    }()
    var label2: UILabel = {
        let label = UILabel()
        label.text = "bbbbb"
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        addSubviews()
        makeConstraints()
    }
    
    private func configure() {
        self.view.backgroundColor = .white
    }
    
    private func addSubviews() {
        self.view.addSubview(label)
        self.view.addSubview(label2)
    }
    
    private func makeConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label2.translatesAutoresizingMaskIntoConstraints = false
        
        let constraints: [NSLayoutConstraint] = [
            label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            // label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            label2.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            // label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label2.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            label2.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            label2.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }

}

