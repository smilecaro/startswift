//
//  ViewController.swift
//  learningSwift
//
//  Created by Caroline Rayezc on 24/04/2018.
//  Copyright © 2018 Caroline Rayezc. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    
    
    var color = UIColor.lightGray
    
    func onUserAction(data: UIColor){
        color = data
        self.view.backgroundColor = color
        print ("data = \(data)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.view.backgroundColor = color
        
        self.view.addSubview(button)
        self.view.addSubview(button2)
        
        buttonContraint()
        button2Contraint()
        onUserAction(data: color)
      
    }
    

    lazy var button: UIButton = {
        
        var button = UIButton()
        
//        button.translatesAutoresizingMaskIntoConstraints = true
//
//        let xPosition:CGFloat = 300
//        let yPosition:CGFloat = 253
//        let buttonWidth:CGFloat = 200
//        let buttonHeight:CGFloat = 60
//
//        button.frame = CGRect(x: xPosition, y: yPosition, width: buttonWidth, height: buttonHeight)
//
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.backgroundColor = UIColor.red
        button.setTitle("1st Page", for: UIControlState.normal)
        button.tintColor = UIColor.white
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        return button
        
    }()
    
    lazy var button2: UIButton = {
        
        var button2 = UIButton()
        
//        button2.translatesAutoresizingMaskIntoConstraints = true
//
//        let xPosition:CGFloat = 300
//        let yPosition:CGFloat = 373
//        let buttonWidth:CGFloat = 200
//        let buttonHeight:CGFloat = 60
//
//        button2.frame = CGRect(x: xPosition, y: yPosition, width: buttonWidth, height: buttonHeight)
//
        
        button2.translatesAutoresizingMaskIntoConstraints = false
        
        button2.backgroundColor = UIColor.blue
        button2.setTitle("2nd Page", for: UIControlState.normal)
        button2.tintColor = UIColor.white
        button2.addTarget(self, action: #selector(buttonAction2), for: .touchUpInside)
        
        
        return button2
        
    }()
    
    
    @objc func buttonAction(_ sender:UIButton!)
    {
        print("Button1 tapped")
        
        self.navigationController?.pushViewController(Page1ViewController(), animated: true)
        
        //let otherView = Page1ViewController()
        //self.present(otherView, animated: true, completion: nil)
    }
    
    @objc func buttonAction2(_ sender:UIButton!)
    {
        print("Button2 tapped")
        
        self.navigationController?.pushViewController(Page2ViewController(), animated: true)
    }
    
    func buttonContraint(){
        
        //placement sur X et Y
        button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -50).isActive = true
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        //taille bouton
        button.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.25).isActive = true //constraint(equalTo: self.view.widthAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }
    
    func button2Contraint(){
        
        //placement sur X et Y
        button2.topAnchor.constraint(equalTo: self.button.bottomAnchor, constant: 25).isActive = true
        button2.centerXAnchor.constraint(equalTo: self.button.centerXAnchor).isActive = true
        
        //taille bouton
        button2.widthAnchor.constraint(equalTo: self.button.widthAnchor).isActive = true //constraint(equalTo: self.view.widthAnchor).isActive = true
        button2.heightAnchor.constraint(equalTo: self.button.heightAnchor).isActive = true
        
    }
    
    
}

