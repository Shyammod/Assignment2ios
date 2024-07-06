//
//  ClassViewController.swift
//  iosAssign2
//
//  Created by user228349 on 6/29/24.
//

import UIKit


struct Laptop {
    let name: String
    let price: String
    let additionalInfo: String
}

class LaptopsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    var laptops: [Laptop] = [
        Laptop(name: "Apple", price: "$2299", additionalInfo: "16GB RAM"),
        Laptop(name: "Dell", price: "$1299", additionalInfo: "16GB RAM"),
        Laptop(name: "HP", price: "$299", additionalInfo: "8GB RAM"),
        Laptop(name: "HP", price: "$299", additionalInfo: "8GB RAM"),
        Laptop(name: "IBM Tablet", price: "$999", additionalInfo: "10\" Display")
    ]
    
    let studentNumber = "8994435"
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Laptops"
        
        self.navigationItem.hidesBackButton = true
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(closeTapped))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
        
//        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        
    }
    
    @objc func closeTapped() {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func addTapped() {
        let newLaptop = Laptop(name: "New Laptop", price: "$699", additionalInfo: "8GB RAM")
        laptops.append(newLaptop)
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return laptops.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! AssignTableViewCell
        let laptop = laptops[indexPath.row]
        cell.textLabel?.text = "\(laptop.name) - \(laptop.price) - \(laptop.additionalInfo)"
        return cell
    }

}



/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */


