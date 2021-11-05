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
        if idade.text != nil && idade.text != "" {
            let idadeCalculada = Int(idade.text!)! * 7
            resultado.text = "A idade do cachorro é de " + String(idadeCalculada) + " anos humanos!"
            resultado.textColor = UIColor.black
        }else{
            resultado.text = "A idade do cachorro é obrigatório!"
            resultado.textColor = UIColor.red
        }
        
        idade.text = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
