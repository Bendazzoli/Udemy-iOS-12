//
//  ViewController.swift
//  Signos
//
//  Created by Paulo Henrique Bendazzoli on 29/01/22.
//

import UIKit

class TableViewController: UITableViewController {
    
    let tableViewCellOfSignos = "tableViewCellOfSignos"
    
    let signos: [String] = [
        "Áries", "Touro", "Gêmeos",
        "Câncer", "Leão", "Virgem",
        "Libras", "Escorpião", "Sagitário",
        "Capricórnio", "Aquário", "Paixes"]
    
    let sigficiadoSignos: [String] = [
        "A pessoa do signo de áries é ...", "A pessoa do signo de touro é ...", "A pessoa do signo de gêmeos é ...",
        "A pessoa do signo de câncer é ...", "A pessoa do signo de leão é ...", "A pessoa do signo de virgem é ...",
        "A pessoa do signo de líbras é ...", "A pessoa do signo de escorpião é ...", "A pessoa do signo de sagitário é ...",
        "A pessoa do signo de capricórnio é ...", "A pessoa do signo de aquário é ...", "A pessoa do signo de peixes é ..."]
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let signosTableView = tableView.dequeueReusableCell(withIdentifier: tableViewCellOfSignos, for: indexPath)
        signosTableView.textLabel?.text = signos[indexPath.row]
        return signosTableView
    }
    
    // método que verifica a linha que foi clicado da lista
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //Realiza um efeito de fade out quando a linha é selecionada
        tableView.deselectRow(at: indexPath, animated: true)
        
        let signosAlertController = UIAlertController(title: signos[indexPath.row], message: sigficiadoSignos[indexPath.row], preferredStyle: .alert)
        
        let okSignoAlertButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        signosAlertController.addAction(okSignoAlertButton)
        
        present(signosAlertController, animated: true, completion: nil)
    }
}
