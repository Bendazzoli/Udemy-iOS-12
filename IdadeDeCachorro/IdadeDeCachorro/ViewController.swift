//
//  ViewController.swift
//  IdadeDeCachorro
//
//  Created by Paulo Henrique Bendazzoli on 25/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var resultado: UILabel!
    @IBOutlet weak var idade: UITextField!
    
    @IBAction func calcularIdade(_ sender: Any) {
        let idadeCalculada = Int(idade.text!)! * 7
        resultado.text = "A idade do cachorro é de " + String(idadeCalculada) + " anos humanos!"
        
        idade.text = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
