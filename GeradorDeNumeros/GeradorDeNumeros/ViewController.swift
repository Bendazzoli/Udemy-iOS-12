//
//  ViewController.swift
//  GeradorDeNumeros
//
//  Created by Paulo Henrique Bendazzoli on 01/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var valorGerado: UILabel!
    
    @IBAction func gerarNumero(_ sender: Any) {
        valorGerado.text = String(1 + arc4random_uniform(10))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

