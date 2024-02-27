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
        view.backgroundColor = .systemBackground
        setupButton()
        title = "First Screen"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.tintColor = .white
    }
    
    func setupButton() {
        view.addSubview(nextButton)
        
        nextButton.backgroundColor = .purple
        nextButton.setTitle("Next", for: .normal)
        nextButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        nextButton.layer.cornerRadius = 20
        
        nextButton.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
        
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -35),
            nextButton.widthAnchor.constraint(equalToConstant: 350),
            nextButton.heightAnchor.constraint(equalToConstant: 55)
            
        ])
    }
    
    @objc func goToNextScreen() {
        let nextScreen = SecondScreen()
        nextScreen.title = "Second Screen"
        navigationController?.pushViewController(nextScreen, animated: true)
    }
}







