//
//  ViewController.swift
//  LoginSegue
//
//  Created by Nam Le on 4/2/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let backgroundView = UIImageView(image: UIImage(named: "img"))
    let logo = UIImageView(image: UIImage(named: "totoro"))
    let userTF = UITextField()
    let passTF = UITextField()
    let LoginBT = UIButton()
    let stack = UIStackView()
    let registerBT: UIButton = {
       let button = UIButton()
        button.setTitle("Register", for: .normal)
        button.addTarget(self, action: #selector(register), for: .touchUpInside)
        return button
    }()
    let noAccYet: UILabel = {
        let label = UILabel()
        label.text = "Chưa có tài khoản?"
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBG()
        setupLogo()
        setupUserTF()
        setupPassTF()
        setupLoginBT()
        setupStack()
    }

    func setupBG(){
        view.addSubview(backgroundView)
        backgroundView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
    }
    func setupLogo(){
        view.addSubview(logo)
        logo.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        logo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logo.widthAnchor.constraint(equalToConstant: 100).isActive = true
        logo.heightAnchor.constraint(equalToConstant: 100).isActive = true
        logo.translatesAutoresizingMaskIntoConstraints = false
    }
    func setupUserTF(){
        view.addSubview(userTF)
        userTF.attributedPlaceholder = NSAttributedString(string: "User", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        userTF.topAnchor.constraint(equalTo: logo.bottomAnchor, constant: 60).isActive = true
        userTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60).isActive = true
        userTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60).isActive = true
        userTF.translatesAutoresizingMaskIntoConstraints = false
    }
    func setupPassTF(){
        view.addSubview(passTF)
        passTF.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        passTF.topAnchor.constraint(equalTo: userTF.bottomAnchor, constant: 40).isActive = true
        passTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60).isActive = true
        passTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60).isActive = true
        passTF.translatesAutoresizingMaskIntoConstraints = false
    }
    func setupLoginBT(){
        view.addSubview(LoginBT)
        LoginBT.setTitle("Login", for: .normal)
        LoginBT.backgroundColor = UIColor.brown
        LoginBT.addTarget(self, action: #selector(login), for: .touchUpInside)
        LoginBT.topAnchor.constraint(equalTo: passTF.bottomAnchor, constant: 50).isActive = true
        LoginBT.widthAnchor.constraint(equalTo: passTF.widthAnchor, multiplier: 1/1).isActive = true
        LoginBT.heightAnchor.constraint(equalTo: passTF.heightAnchor, multiplier: 1/1).isActive = true
        LoginBT.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        LoginBT.translatesAutoresizingMaskIntoConstraints = false
    }
    func setupStack(){
        view.addSubview(stack)
        stack.addArrangedSubview(noAccYet)
        stack.addArrangedSubview(registerBT)
//        stack.distribution = .fillEqually
        stack.axis = .horizontal
        stack.spacing = 0
        stack.topAnchor.constraint(equalTo: LoginBT.bottomAnchor, constant: 10).isActive = true
        stack.heightAnchor.constraint(equalTo: LoginBT.heightAnchor, multiplier: 1/1).isActive = true
        stack.widthAnchor.constraint(equalTo: LoginBT.widthAnchor, multiplier: 1/1).isActive = true
        stack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stack.translatesAutoresizingMaskIntoConstraints = false
    }
    @objc func login(){
        let Profile = ProfileController()
        Profile.modalPresentationStyle = .fullScreen
        present(Profile, animated: true, completion: nil)
        
    }
    @objc func register(){
        let Register = RegisterController()
        Register.modalPresentationStyle = .fullScreen
        present(Register, animated: true, completion: nil)
        
    }
}

