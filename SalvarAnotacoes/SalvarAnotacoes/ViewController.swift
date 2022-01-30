//
//  ViewController.swift
//  SalvarAnotacoes
//
//  Created by Paulo Henrique Bendazzoli on 30/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    let anotacoesKey = "anotacoes"
    
    @IBOutlet weak var anotacoesTextView: UITextView!
    
    @IBAction func anotacoesSalvar(_ sender: Any) {
        UserDefaults.standard.set(anotacoesTextView.text, forKey:  anotacoesKey)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        anotacoesTextView.text = UserDefaults.standard.object(forKey: anotacoesKey) as? String
    }
}

