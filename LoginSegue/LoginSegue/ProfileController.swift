//
//  ProfileController.swift
//  LoginSegue
//
//  Created by Nam Le on 4/2/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import UIKit

class ProfileController: UIViewController {
    let dissmissBT: UIButton = {
       let button = UIButton()
        button.setTitle("dissmiss", for: .normal)
        button.addTarget(self, action: #selector(dissMiss), for: .touchUpInside)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(dissmissBT)
        view.backgroundColor = .blue
        dissmissBT.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        dissmissBT.backgroundColor = .red
        dissmissBT.setTitleColor(.white, for: .normal)
    }

    @objc func dissMiss(){
        dismiss(animated: true, completion: nil)
    }

}
