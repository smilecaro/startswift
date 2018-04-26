//
//  Page2ViewController.swift
//  learningSwift
//
//  Created by Caroline Rayezc on 24/04/2018.
//  Copyright © 2018 Caroline Rayezc. All rights reserved.
//

import UIKit

class Page2ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var viewController: MainViewController?
    
    var color = UIColor.blue
    
    var itemsToLoad: [String] = ["Green", "Yellow", "Magenta", "Cyan", "White", "Blue", "Black", "Brown", "Gray", "Red"]
    var itemsToColor: [UIColor] = [UIColor.green, UIColor.yellow, UIColor.magenta, UIColor.cyan, UIColor.white, UIColor.blue, UIColor.black, UIColor.brown, UIColor.gray, UIColor.red]
    
    var myTableView: UITableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = color

        
//        let screenSize: CGRect = UIScreen.main.bounds
//
//        let screenWidth = view
//        let screenHeight = view
        
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        
        myTableView.translatesAutoresizingMaskIntoConstraints = false
        // myTableView.frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight)
        myTableView.dataSource = self
        myTableView.delegate = self
        
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "myCell")
        
        self.view.addSubview(myTableView)
        self.view.addSubview(saveButton)
        
        tableContraint()
        saveButtonContraint()
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return itemsToLoad.count
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
            self.color = itemsToColor[indexPath.row]
            self.view.backgroundColor = self.color
    
        
        print("User selected table row \(indexPath.row) and item \(itemsToLoad[indexPath.row]) \(color)")
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        print(indexPath.row)
        
        cell.textLabel?.text = self.itemsToLoad[indexPath.row]
        cell.textLabel?.textColor = self.itemsToColor[indexPath.row]
        cell.backgroundColor = self.itemsToColor[indexPath.row]
        cell.textLabel?.textAlignment = NSTextAlignment.center
        
        return cell
        
    }
    
    func tableContraint(){
        
        //placement sur X et Y
        myTableView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: CGFloat(50)).isActive = true
        myTableView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        //taille
        myTableView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.75).isActive = true
        myTableView.heightAnchor.constraint(equalToConstant: 450).isActive = true
        
    }
    
    lazy var saveButton: UIButton = {
        
        var saveButton = UIButton()
        
        //        button2.translatesAutoresizingMaskIntoConstraints = true
        //
        //        let xPosition:CGFloat = 300
        //        let yPosition:CGFloat = 373
        //        let buttonWidth:CGFloat = 200
        //        let buttonHeight:CGFloat = 60
        //
        //        button2.frame = CGRect(x: xPosition, y: yPosition, width: buttonWidth, height: buttonHeight)
        //
        
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        saveButton.setTitleColor(.black, for: .normal)
        saveButton.backgroundColor = UIColor.lightGray
        saveButton.setTitle("Save", for: UIControlState.normal)
        
        saveButton.addTarget(self, action: #selector(saveButtonAction), for: .touchUpInside)
        
        
        return saveButton
        
    }()
    
    
    @objc func saveButtonAction(_ sender:UIButton!)
    {
        print("saveButton tapped")
        print("\(color)")
        
        self.navigationController?.popViewController(animated: true)
        self.viewController = self.navigationController?.viewControllers.last as! MainViewController
        
        viewController?.onUserAction(data: self.color)
        
        print("hello")
    
    }
    
    func saveButtonContraint(){
        
        //placement sur X et Y
        saveButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -400).isActive = true
        saveButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 250).isActive = true
        
        //taille bouton
        saveButton.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.15).isActive = true //constraint(equalTo: self.view.widthAnchor).isActive = true
        saveButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
    }
    

}
