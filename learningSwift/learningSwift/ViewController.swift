//
//  ViewController.swift
//  learningSwift
//
//  Created by Caroline Rayezc on 24/04/2018.
//  Copyright © 2018 Caroline Rayezc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let color = UIColor.lightGray
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = color
        
        self.view.addSubview(button)
        self.view.addSubview(button2)
    }

    lazy var button: UIButton = {
        
        var button = UIButton()
        
        let xPosition:CGFloat = 300
        let yPosition:CGFloat = 253
        let buttonWidth:CGFloat = 200
        let buttonHeight:CGFloat = 60
        
        button.frame = CGRect(x: xPosition, y: yPosition, width: buttonWidth, height: buttonHeight)
        
        button.backgroundColor = UIColor.red
        button.setTitle("1st Page", for: UIControlState.normal)
        button.tintColor = UIColor.white
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        return button
        
    }()
    
    lazy var button2: UIButton = {
        
        var button2 = UIButton()
        
        let xPosition:CGFloat = 300
        let yPosition:CGFloat = 373
        let buttonWidth:CGFloat = 200
        let buttonHeight:CGFloat = 60
        
        button2.frame = CGRect(x: xPosition, y: yPosition, width: buttonWidth, height: buttonHeight)
        
        button2.backgroundColor = UIColor.blue
        button2.setTitle("2nd Page", for: UIControlState.normal)
        button2.tintColor = UIColor.white
        button2.addTarget(self, action: #selector(buttonAction2), for: .touchUpInside)
        
        
        return button2
        
    }()
    
    @objc func buttonAction(_ sender:UIButton!)
    {
        print("Button1 tapped")
    }
    
    @objc func buttonAction2(_ sender:UIButton!)
    {
        print("Button2 tapped")
    }

}

