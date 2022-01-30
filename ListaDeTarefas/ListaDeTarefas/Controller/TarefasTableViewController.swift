//
//  TarefasTableViewController.swift
//  ListaDeTarefas
//
//  Created by Paulo Henrique Bendazzoli on 30/01/22.
//

import UIKit

class TarefasTableViewController: UITableViewController {
    
    let tarefaUserDefaults = ListaTarefasUserDefaults()
    var listaTarefas: [String] = []
    
    func reloadListaTarefas() {
        listaTarefas = tarefaUserDefaults.listarTodasTarefas()
        tableView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        reloadListaTarefas()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listaTarefas.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let listaTarefasCell = tableView.dequeueReusableCell(withIdentifier: "listaTarefasReuseTableViewCell", for: indexPath)
        listaTarefasCell.textLabel?.text = listaTarefas[indexPath.row]
        return listaTarefasCell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            tarefaUserDefaults.remover(tarefa: indexPath.row)
        }
        reloadListaTarefas()
    }
    //tableView.deselectRow(at: indexPath, animated: true)
}
