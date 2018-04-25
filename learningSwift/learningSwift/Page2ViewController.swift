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
    
    var itemsToLoad: [String] = ["Green", "Yellow", "Magenta", "Cyan", "White", "Black", "Brown", "Gray", "Red"]
    
    var myTableView: UITableView = UITableView()
    //var itemsToLoad: [String] = [self.table]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = color
        
//        let screenSize: CGRect = UIScreen.main.bounds
//
//        let screenWidth = view
//        let screenHeight = view
        
        myTableView.separatorColor = UIColor.black
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
            
            var click = indexPath.row
            
                //green
            if click == 0 {
                self.view.backgroundColor = UIColor.green
            }
                //yellow
            else if click == 1 {
                self.view.backgroundColor = UIColor.yellow
            }
                //magenta
            else if click == 2 {
                self.view.backgroundColor = UIColor.magenta
            }
                //cyan
            else if click == 3 {
                self.view.backgroundColor = UIColor.cyan
            }
                //white
            else if click == 4 {
                self.view.backgroundColor = UIColor.white
            }
                //black
            else if click == 5 {
                self.view.backgroundColor = UIColor.black
            }
                //brown
            else if click == 6 {
                self.view.backgroundColor = UIColor.brown
            }
                //gray
            else if click == 7 {
                self.view.backgroundColor = UIColor.gray
            }
                //red
            else if click == 8 {
                self.view.backgroundColor = UIColor.red
            }
            
        
        
        print("User selected table row \(indexPath.row) and item \(itemsToLoad[indexPath.row])")
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        print(indexPath.row)
        
        cell.textLabel?.text = self.itemsToLoad[indexPath.row]
        
        return cell
        
    }
    
    func tableContraint(){
        
        //placement sur X et Y
        myTableView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: CGFloat(100)).isActive = true
        myTableView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        //taille
        myTableView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.25).isActive = true
        myTableView.heightAnchor.constraint(equalToConstant: 600).isActive = true
        
    }
    
}
