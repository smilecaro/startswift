//
//  Page2ViewController.swift
//  learningSwift
//
//  Created by Caroline Rayezc on 24/04/2018.
//  Copyright © 2018 Caroline Rayezc. All rights reserved.
//

import UIKit

class Page2ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath as IndexPath)
        
        cell.textLabel?.text = self.itemsToLoad[indexPath.row]
        
        return cell
    }
    
    let color = UIColor.blue
    
    var itemsToLoad: [String] = ["One", "Two", "Three"]
    
    var myTableView: UITableView = UITableView()
    //var itemsToLoad: [String] = [self.table]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = color
        
//        let screenSize: CGRect = UIScreen.main.bounds
//
//        let screenWidth = view
//        let screenHeight = view
        
        myTableView.separatorColor = UIColor.orange
        myTableView.backgroundColor = color
        myTableView.translatesAutoresizingMaskIntoConstraints = false
        // myTableView.frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight)
        myTableView.dataSource = self
        myTableView.delegate = self
        
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "myCell")
        
        self.view.addSubview(myTableView)
        
        tableContraint()
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return itemsToLoad.count
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
        print("User selected table row \(indexPath.row) and item \(itemsToLoad[indexPath.row])")
        
    }
    
    func tableContraint(){
        
        var ecart = -100
        
        for tour in 0...1000 {
                
            //placement sur X et Y
            myTableView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: CGFloat(ecart)).isActive = true
            myTableView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
            //taille
            myTableView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.25).isActive = true //constraint(equalTo: self.view.widthAnchor).isActive = true
            myTableView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
            ecart = ecart + 30
            var tour = tour + 1
        }
    }
    
}
