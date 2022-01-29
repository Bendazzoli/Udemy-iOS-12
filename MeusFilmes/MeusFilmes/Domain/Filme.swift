//
//  Filme.swift
//  MeusFilmes
//
//  Created by Paulo Henrique Bendazzoli on 29/01/22.
//

import UIKit

class Filme {
    
    var titulo: String!
    var decricao: String!
    var imagem: UIImage!
    
    init(titulo: String, descricao: String ) {
        self.titulo = titulo
        self.decricao = descricao
    }
}
