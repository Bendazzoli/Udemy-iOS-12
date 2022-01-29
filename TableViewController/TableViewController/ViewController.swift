//
//  ViewController.swift
//  TableViewController
//
//  Created by Paulo Henrique Bendazzoli on 29/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func openAlert(_ sender: Any) {
        
        let alert = UIAlertController(title: "Contact Add", message: "Do you wanna add a new contact?", preferredStyle: .alert)
        
        let confirmButton = UIAlertAction(title: "Confirm", style: .default, handler: nil)
        let cancelButton = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
        alert.addAction(confirmButton)
        alert.addAction(cancelButton)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func modalAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Contact Add", message: "Do you wanna add a new contact?", preferredStyle: .actionSheet)
        
        let confirmButton = UIAlertAction(title: "Confirm", style: .default, handler: nil)
        let cancelButton = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
        alert.addAction(confirmButton)
        alert.addAction(cancelButton)
        
        present(alert, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
