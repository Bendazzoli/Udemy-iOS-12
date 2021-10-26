//
//  ViewController.swift
//  IdadeDeCachorro
//
//  Created by Paulo Henrique Bendazzoli on 25/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var resultado: UILabel!
    @IBAction func calcularIdade(_ sender: Any) {
        resultado.text = "Texto alterado"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}
