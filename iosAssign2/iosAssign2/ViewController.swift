//
//  ViewController.swift
//  iosAssign2
//
//  Created by user228349 on 6/29/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func laptops(_ sender: Any) {
        
    }
    @IBAction func Monitors(_ sender: Any) {
        showAlert()
    }
    func showAlert() {
        let alert = UIAlertController(title: "Alert", message:"No Monitor yet.check back later", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}



