//  /*
//
//  Project: UINavigationController
//  File: FirstScreen.swift
//  Created by: Elaidzha Shchukin
//  Date: 27.02.2024
//
//  */

import UIKit

class FirstScreen: UIViewController {
    
    let nextButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray4
        setupButton()
    }
    
    func setupButton() {
        view.addSubview(nextButton)
        
        if #available(iOS 15.0, *) {
            nextButton.configuration = .filled()
        } else {
            // Fallback on earlier versions
        }
        nextButton.configuration?.baseBackgroundColor = .systemPurple
        nextButton.configuration?.title = "Next"
        
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -35),
            nextButton.widthAnchor.constraint(equalToConstant: 300),
            nextButton.heightAnchor.constraint(equalToConstant: 55)
        
        ])
    }
}







