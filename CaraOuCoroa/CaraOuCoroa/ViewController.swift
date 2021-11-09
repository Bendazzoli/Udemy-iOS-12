//
//  ViewController.swift
//  CaraOuCoroa
//
//  Created by Paulo Henrique Bendazzoli on 08/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "jogarCaraCoroa" {
            let resultadoViewController = segue.destination as! ResultadoViewController
            
            resultadoViewController.resultado = Int(arc4random_uniform(2))
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

