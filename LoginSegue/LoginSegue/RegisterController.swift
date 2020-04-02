//
//  RegisterController.swift
//  LoginSegue
//
//  Created by Nam Le on 4/2/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import UIKit

class RegisterController: UIViewController {
    let Register = UIButton()
    let stack = UIStackView()
    let LoginBT: UIButton = {
       let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.addTarget(self, action: #selector(login), for: .touchUpInside)
        return button
    }()
    let accExist: UILabel = {
        let label = UILabel()
        label.text = "Bạn đã có tk?"
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        view.addSubview(Register)
        view.addSubview(stack)
        view.addSubview(accExist)
        view.addSubview(LoginBT)
        Register.addTarget(self, action: #selector(register), for: .touchUpInside)
        Register.setTitle("Register", for: .normal)
        Register.backgroundColor = .brown
        Register.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        Register.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        Register.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4).isActive = true
        Register.heightAnchor.constraint(equalToConstant: 50).isActive = true
        Register.translatesAutoresizingMaskIntoConstraints = false
        
        stack.addArrangedSubview(accExist)
        stack.addArrangedSubview(LoginBT)
        stack.axis = .horizontal
        stack.spacing = 0
        stack.topAnchor.constraint(equalTo: Register.bottomAnchor, constant: 10).isActive = true
        stack.widthAnchor.constraint(equalToConstant: 300).isActive = true
        stack.heightAnchor.constraint(equalTo: Register.heightAnchor, multiplier: 1/1).isActive = true
        stack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stack.translatesAutoresizingMaskIntoConstraints = false
    }

    @objc func login(){
        let Login = ViewController()
        Login.modalPresentationStyle = .fullScreen
        present(Login, animated: true, completion: nil)
    }
    @objc func register(){
        let register = ProfileController()
        register.modalPresentationStyle = .fullScreen
        present(register, animated: true, completion: nil)
        
    }
}
