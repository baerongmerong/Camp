//
//  ProfileViewControlViewController.swift
//  storyboard instargram
//
//  Created by Bae on 2/2/24.
//

import UIKit

class ProfileViewControlViewController: UIViewController {
    
    private var name = "배"
    private var age = 26

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        

        let userNameLabel = UILabel()
        userNameLabel.text = "이름: \(name)"
        
        let userAgeLabel = UILabel()
        userAgeLabel.text = "나이: \(age)"
        
        userNameLabel.translatesAutoresizingMaskIntoConstraints = false
        userAgeLabel.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.addArrangedSubview(userNameLabel)
        stackView.addArrangedSubview(userAgeLabel)
        
        self.view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
