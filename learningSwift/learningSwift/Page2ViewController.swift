//
//  Page2ViewController.swift
//  learningSwift
//
//  Created by Caroline Rayezc on 24/04/2018.
//  Copyright © 2018 Caroline Rayezc. All rights reserved.
//

import UIKit

class Page2ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let color = UIColor.blue
    
    var itemsToLoad: [String] = ["Green", "Yellow", "Magenta", "Cyan", "White", "Blue", "Black", "Brown", "Gray", "Red"]
    var itemsToColor: [UIColor] = [UIColor.green, UIColor.yellow, UIColor.magenta, UIColor.cyan, UIColor.white, UIColor.blue, UIColor.black, UIColor.brown, UIColor.gray, UIColor.red]
    
    var myTableView: UITableView = UITableView()
    //var itemsToLoad: [String] = [self.table]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = color


        
//        let screenSize: CGRect = UIScreen.main.bounds
//
//        let screenWidth = view
//        let screenHeight = view
        
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
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
            self.view.backgroundColor = itemsToColor[indexPath.row]
    
        
        print("User selected table row \(indexPath.row) and item \(itemsToLoad[indexPath.row])")
        
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
    
}
