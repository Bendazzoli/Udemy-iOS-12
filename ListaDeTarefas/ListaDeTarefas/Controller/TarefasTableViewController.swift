//
//  TarefasTableViewController.swift
//  ListaDeTarefas
//
//  Created by Paulo Henrique Bendazzoli on 30/01/22.
//

import UIKit

class TarefasTableViewController: UITableViewController {
    
    let goToAdicionarTarefaViewContrller = "goToAdicionarTarefaViewContrller"
    
    var listaTarefas: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listaTarefas.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let listaTarefasReuseTableViewCell = "listaTarefasReuseTableViewCell"
        let listaTarefasCell = tableView.dequeueReusableCell(withIdentifier: listaTarefasReuseTableViewCell, for: indexPath)
        listaTarefasCell.textLabel?.text = listaTarefas[indexPath.row]
        return listaTarefasCell
    }
    
    
}

