//
//  AdicionarTarefaViewController.swift
//  ListaDeTarefas
//
//  Created by Paulo Henrique Bendazzoli on 30/01/22.
//

import UIKit

class AdicionarTarefaViewController: UIViewController {
    
    @IBOutlet weak var tarefaField: UITextField!
    
    @IBAction func adicionarTarefaButton(_ sender: Any) {
        if let tarefaDigitada = tarefaField.text {
            let tarefa = ListaTarefasUserDefaults()
            tarefa.salvar(tarefa: tarefaDigitada)
            tarefaField.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}
