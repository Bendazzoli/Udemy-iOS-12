//
//  ViewController.swift
//  FrasesDoDia
//
//  Created by Paulo Henrique Bendazzoli on 03/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    var frases: [String] = []
    
    @IBOutlet weak var frase: UILabel!
    
    @IBAction func novaFrase(_ sender: Any) {
        //Frases "motivacionais" retiradas do Coach da Depressão   =)
        frases.append("Vai ser difícil, vai ser cansativo, vai levar tempo e não vai valer a pena.")
        frases.append("Não desanime com a derrota de hoje. Amanhã tem mais!")
        frases.append("Bom dia! Seu futuro só depende de você. Pode começar a chorar!")
        frases.append("Sugiro drogas, bebidas e orgia, porque a vida é curta!")
        frases.append("Daqui para frente é só para trás.")
        frases.append("Pare de tentar e começe a desistir.")
        frases.append("O recomeço é a oportunidade de um novo fracasso!")
        frases.append("É só uma fase ruim, logo vai piorar!")
        frases.append("Acreditar que você pode já é meio caminho errado!")
        frases.append("Errar ontem, aprender hoje e errar novamente amanhã!")
        
        frase.text = frases[ Int(arc4random_uniform(10))]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
