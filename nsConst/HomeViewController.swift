//
//  HomeViewController.swift
//  nsConst
//
//  Created by Muhammadjon Mamarasulov on 3/19/22.
//

import UIKit

class HomeViewController: UIViewController {

    let containerView:UIView = {
        let v = UIView()
        
        v.layer.cornerRadius = 20
        v.layer.shadowColor = UIColor.systemGray.cgColor
        v.layer.shadowOffset = .zero
        v.layer.shadowOpacity = 0.2
        v.backgroundColor = UIColor.systemGray6
        return v
    }()
    
    let lbl:UILabel = {
        let l = UILabel()
        l.text = "Email"
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    let tf: UITextField = {
        let t = UITextField()
        t.placeholder = "Email"
        t.layer.cornerRadius = 15
        t.layer.borderWidth = 0.3
        t.translatesAutoresizingMaskIntoConstraints = false
        
        return t
    }()
    
    let btn: UIButton = {
        let b = UIButton()
        b.backgroundColor = UIColor.systemPink
        b.setTitle("Login", for: .normal)
        b.setTitleColor(.white, for: .normal)
        b.layer.cornerRadius = 20
        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()
    
    // Stacks..
    
    let smallStack: UIStackView = {
        let s = UIStackView()
        s.axis = .vertical
        s.distribution = .fillEqually
        s.alignment = .fill
        s.spacing = 50
        s.translatesAutoresizingMaskIntoConstraints = false
        return s
    }()
    let largeStack: UIStackView = {
        let l = UIStackView()
        l.axis = .vertical
        l.distribution = .fill
        l.alignment = .fill
        l.spacing = 20
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        setUpConstraint()
    }
    
    func setUpConstraint(){
        
        // adding container to the View..
        
        self.view.addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        containerView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        containerView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        containerView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9).isActive = true
        
        
        // Stacks..
        
        self.containerView.addSubview(largeStack)
        largeStack.addArrangedSubview(lbl)
        largeStack.addArrangedSubview(smallStack)
        smallStack.addArrangedSubview(tf)
        smallStack.addArrangedSubview(btn)
        
        NSLayoutConstraint.activate([
            largeStack.topAnchor.constraint(equalTo: self.containerView.topAnchor, constant: 10),
            largeStack.leftAnchor.constraint(equalTo: self.containerView.leftAnchor, constant: 20),
            largeStack.rightAnchor.constraint(equalTo: self.containerView.rightAnchor, constant: -20),
            largeStack.bottomAnchor.constraint(equalTo: self.containerView.bottomAnchor, constant: -30),
            btn.heightAnchor.constraint(equalToConstant: 40)
        ])
        /*
        // adding label and other elements into ContainerView..
        
        self.containerView.addSubview(lbl)
        NSLayoutConstraint.activate([
            
            lbl.topAnchor.constraint(equalTo: self.containerView.topAnchor, constant: 30),
            lbl.leftAnchor.constraint(equalTo: self.containerView.leftAnchor, constant: 20),
            lbl.rightAnchor.constraint(equalTo: self.containerView.rightAnchor, constant: -20)
        ])
        
        self.containerView.addSubview(tf)
        NSLayoutConstraint.activate([
            tf.topAnchor.constraint(equalTo: self.lbl.bottomAnchor, constant: 30),
            tf.leftAnchor.constraint(equalTo: self.containerView.leftAnchor, constant: 20),
            tf.rightAnchor.constraint(equalTo: self.containerView.rightAnchor, constant: -20),
            tf.heightAnchor.constraint(equalToConstant: 30)

        ])
        
        self.containerView.addSubview(btn)
        NSLayoutConstraint.activate([
            btn.topAnchor.constraint(equalTo: self.tf.bottomAnchor, constant: 70),
            btn.leftAnchor.constraint(equalTo: self.containerView.leftAnchor, constant: 20),
            btn.rightAnchor.constraint(equalTo: self.containerView.rightAnchor, constant: -20),
            btn.heightAnchor.constraint(equalToConstant: 30)
        ])
        */
    }

}
