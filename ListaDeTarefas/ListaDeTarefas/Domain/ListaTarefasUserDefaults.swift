//
//  ListaTarefasUserDefaults.swift
//  ListaDeTarefas
//
//  Created by Paulo Henrique Bendazzoli on 30/01/22.
//

import UIKit

class ListaTarefasUserDefaults {
    
    let listaTarefasKey = "listaTarefas"
    var listaTarefas: [String] = []
    
    func salvar(tarefa: String){
        
        listaTarefas = listarTodasTarefas()
        
        listaTarefas.append(tarefa)
        UserDefaults.standard.set(listaTarefas, forKey: listaTarefasKey)
    }
    
    func listarTodasTarefas() -> Array<String> {
        let listaTarefas = UserDefaults.standard.object(forKey: listaTarefasKey)
        if listaTarefas != nil {
            return listaTarefas as! Array<String>
        }
        else {
            return []
        }
    }
}
