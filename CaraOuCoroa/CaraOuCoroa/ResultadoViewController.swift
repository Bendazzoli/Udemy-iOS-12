//
//  ResultadoViewController.swift
//  CaraOuCoroa
//
//  Created by Paulo Henrique Bendazzoli on 08/11/21.
//

import UIKit

class ResultadoViewController: UIViewController {
    
    var resultado: Int = 0

    @IBOutlet weak var moedaImagem: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if resultado == 0 {//cara
            moedaImagem.image = #imageLiteral(resourceName: "moeda_cara")
        }else{//coroa
            moedaImagem.image = #imageLiteral(resourceName: "moeda_coroa")
        }
    }
}
