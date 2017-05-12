//
//  ViewController.swift
//  closureprac
//
//  Created by Devansh Sharma on 12/05/17.
//  Copyright © 2017 Devansh Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var container:UIView = {
    
        var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 5
        return view
    
    }()
    
    var button:UIButton = {
       
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Log In", for: .normal)
        view.backgroundColor = UIColor(red: 80/255, green: 105/255, blue: 161/255, alpha: 1.0)
        view.layer.cornerRadius = 5
        return view
    }()
    
    var email:UITextField = {
    
    var view = UITextField()
    view.placeholder = "enter email or username"
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
    }()
    
    
    var pass:UITextField = {
        
        var view = UITextField()
        view.placeholder = "enter password"
        view.translatesAutoresizingMaskIntoConstraints = false

        return view

        
    }()

    var separator:UIView = {
    
    var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGray
    return view
    
    }()
    var logo:UIImageView = {
    
        
        let view = UIImageView()
        view.image = UIImage(named: "fb")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()
    
    var signin:UIButton = {
    
    var view = UIButton()
        view.setTitle("Sign Up for Facebook", for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()
    
    var help:UIButton = {
        
        var view = UIButton()
        view.setTitle("Need Help?", for: .normal)
        view.backgroundColor = .clear
         view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()


    override func viewDidLoad() {
       
        view.backgroundColor = UIColor(red: 59/255, green: 89/255, blue: 153/255, alpha: 1.0)
        super.viewDidLoad()
   
        setupViews()
        
    }
    
    
    
    func doSomeAction(){
        //self.navigationController?.pushViewController(SecondViewController(), animated: true)
        let vc = UINavigationController(rootViewController: SecondViewController())
        self.present(vc, animated: true, completion: nil)
    }

    
   

}
extension ViewController {
    
    
    
    //yaha par views setup honge
    
    
    func setupViews(){
        view.addSubview(logo)
        view.addSubview(container)
        view.addSubview(button)
        view.addSubview(signin)
        view.addSubview(help)
        

        logo.heightAnchor.constraint(equalToConstant: 80).isActive = true
        logo.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 80).isActive = true
        logo.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -80).isActive = true
        logo.bottomAnchor.constraint(equalTo: container.topAnchor, constant: -20).isActive = true
        
        
        container.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        container.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        container.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        container.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        button.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        button.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.topAnchor.constraint(equalTo: container.bottomAnchor, constant: 20).isActive = true
        button.addTarget(self, action: #selector(doSomeAction), for: .touchUpInside)
        
        signin.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 90).isActive = true
        signin.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -90).isActive = true
        signin.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -70).isActive = true
        
        help.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 90).isActive = true
        help.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -90).isActive = true
        help.topAnchor.constraint(equalTo: signin.bottomAnchor, constant: 10).isActive = true

        
        container.addSubview(email)
        container.addSubview(separator)
        container.addSubview(pass)
        
        email.leftAnchor.constraint(equalTo: container.leftAnchor,constant:10).isActive = true
        email.rightAnchor.constraint(equalTo: container.rightAnchor).isActive = true
        email.topAnchor.constraint(equalTo: container.topAnchor).isActive = true
        email.heightAnchor.constraint(equalTo: container.heightAnchor, multiplier: 1/2).isActive = true
        
        separator.leftAnchor.constraint(equalTo: container.leftAnchor).isActive = true
        separator.rightAnchor.constraint(equalTo: container.rightAnchor).isActive = true
        separator.topAnchor.constraint(equalTo: email.bottomAnchor).isActive = true
        separator.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
        pass.leftAnchor.constraint(equalTo: container.leftAnchor,constant:10).isActive = true
        pass.rightAnchor.constraint(equalTo: container.rightAnchor).isActive = true
        pass.topAnchor.constraint(equalTo: separator.bottomAnchor).isActive = true
        pass.heightAnchor.constraint(equalTo: container.heightAnchor, multiplier: 1/2).isActive = true
    }

    
}
