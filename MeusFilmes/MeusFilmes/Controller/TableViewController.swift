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
        filmes.append(Filme(titulo: "Filme 1", descricao: "Descricao Filme 1"))
        filmes.append(Filme(titulo: "Filme 2", descricao: "Descricao Filme 2"))
        filmes.append(Filme(titulo: "Filme 3", descricao: "Descricao Filme 3"))
        filmes.append(Filme(titulo: "Filme 4", descricao: "Descricao Filme 4"))
        filmes.append(Filme(titulo: "Filme 5", descricao: "Descricao Filme 5"))
        filmes.append(Filme(titulo: "Filme 6", descricao: "Descricao Filme 6"))
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let filmeTableView = tableView.dequeueReusableCell(withIdentifier: filmesViewCell, for: indexPath)
        filmeTableView.textLabel?.text = filmes[indexPath.row].titulo
        return filmeTableView
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
