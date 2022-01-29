//
//  DetalhesFilmesViewController.swift
//  MeusFilmes
//
//  Created by Paulo Henrique Bendazzoli on 29/01/22.
//

import UIKit

class DetalhesFilmesViewController: UIViewController {
    
    @IBOutlet weak var imagemFilmeDetalhe: UIImageView!
    @IBOutlet weak var tituloFilmeDetalhe: UILabel!
    @IBOutlet weak var descricaoFilmeDetalhe: UILabel!
    
    var filme: Filme!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagemFilmeDetalhe.image = filme.imagem
        tituloFilmeDetalhe.text = filme.titulo
        descricaoFilmeDetalhe.text = filme.decricao
    }
}
