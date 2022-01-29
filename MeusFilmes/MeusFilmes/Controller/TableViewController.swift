//
//  ViewController.swift
//  MeusFilmes
//
//  Created by Paulo Henrique Bendazzoli on 29/01/22.
//

import UIKit

class TableViewController: UITableViewController {

    let filmesViewCell = "filmesViewCell"
    
    var filmes: [Filme] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filmes.append(Filme(titulo: "007 Spectre", descricao: "Sinopse do filme 007 Spectre", imagem: UIImage(named: "filme1")!))
        filmes.append(Filme(titulo: "Star Wars", descricao: "Sinopse do filme Star Wars", imagem: UIImage(named: "filme2")!))
        filmes.append(Filme(titulo: "Impacto Mortal", descricao: "Sinopse do filme Impacto Mortal", imagem: UIImage(named: "filme3")!))
        filmes.append(Filme(titulo: "Deadpool", descricao: "Sinopse do filme Deadpool", imagem: UIImage(named: "filme4")!))
        filmes.append(Filme(titulo: "O Regresso", descricao: "Sinopse do filme O Regresso", imagem: UIImage(named: "filme5")!))
        filmes.append(Filme(titulo: "A Herdeira", descricao: "Sinopse do filme A Herdeira", imagem: UIImage(named: "filme6")!))
        filmes.append(Filme(titulo: "Caçadores de Emoção", descricao: "Sinopse do filme Caçadores de Emoção", imagem: UIImage(named: "filme7")!))
        filmes.append(Filme(titulo: "Regresso do Mal", descricao: "Sinopse do filme Regresso do Mal", imagem: UIImage(named: "filme8")!))
        filmes.append(Filme(titulo: "Tarzan", descricao: "Sinopse do filme Tarzan", imagem: UIImage(named: "filme9")!))
        filmes.append(Filme(titulo: "Hardcore", descricao: "Sinopse do filme Hardcore", imagem: UIImage(named: "filme10")!))
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let filmeTableView = tableView.dequeueReusableCell(withIdentifier: filmesViewCell, for: indexPath) as! FilmeCustomTableViewCell
        
        //TableViewCell Customizada
        filmeTableView.titulo.text = filmes[indexPath.row].titulo
        filmeTableView.descricao.text = filmes[indexPath.row].decricao
        filmeTableView.imageView?.image = filmes[indexPath.row].imagem
        
        //Arredondando a imagem via código
        filmeTableView.imageView?.layer.cornerRadius = 45
        filmeTableView.imageView?.clipsToBounds = true
        
        return filmeTableView
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
