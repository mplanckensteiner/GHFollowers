//
//  GFItemInfoVC.swift
//  GHFollowers
//
//  Created by Miguel Planckensteiner on 25.07.20.
//  Copyright © 2020 Miguel Planckensteiner. All rights reserved.
//

import UIKit

protocol ItemInfoVCDelegate: class {
    func didTapGitHubProfile(for user: User)
    func didTapGetFollowers(for user: User)
}

class GFItemInfoVC: UIViewController {
    
    let stackview = UIStackView()
    let itemInfoViewOne = GFItemInfoView()
    let itemInfoViewTwo = GFItemInfoView()
    let actionButton = GFButton()
    
    var user: User!
    
    
    init(user: User) {
        super.init(nibName: nil, bundle: nil)
        self.user = user
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureBackgroundView()
        layoutUI()
        configureStackview()
        configureActionButton()
    }
    
    
    func configureBackgroundView() {
        view.layer.cornerRadius = 18
        view.backgroundColor = .secondarySystemBackground
    }
    
    
    private func configureStackview() {
        stackview.axis = .horizontal
        stackview.distribution = .equalSpacing
        
        stackview.addArrangedSubview(itemInfoViewOne)
        stackview.addArrangedSubview(itemInfoViewTwo)
    }
    
    
    private func configureActionButton() {
        actionButton.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
    }
    
    
    @objc func actionButtonTapped() {}
    
    
    private func layoutUI() {
        view.addSubviews(stackview, actionButton)
        
        stackview.translatesAutoresizingMaskIntoConstraints = false
        let padding: CGFloat = 20
        
        NSLayoutConstraint.activate([
            stackview.topAnchor.constraint(equalTo: view.topAnchor, constant: padding),
            stackview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            stackview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            stackview.heightAnchor.constraint(equalToConstant: 50),
            
            actionButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding),
            actionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            actionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            actionButton.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
}
