//
//  ViewController.swift
//  SorteioLotofacil
//
//  Created by Paulo Henrique Bendazzoli on 04/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    var countResultados = 0
    var numerosSorteados: [Int] = []
    var exiteNumeroSorteado = false
    var numeroSorteado = 0
    
    @IBOutlet weak var resultado: UILabel!
    
    @IBAction func limpar(_ sender: Any) {
        limparResultado()
    }
    
    @IBAction func sortearResultado(_ sender: Any) {
        limparResultado()
        
        //Sorteando o primeiro número
        numeroSorteado = Int(1 + arc4random_uniform(25))
        
        //Adicionando o primeiro número no array
        numerosSorteados.append(numeroSorteado)
        
        //Dizendo ao contador que já temos 1 número sorteado
        countResultados += 1
                
        while countResultados != 15 {
            sortearNumeros()
        }
        
        mostrarResultado()
    }
    
    func sortearNumeros() {
        numeroSorteado = Int(1 + arc4random_uniform(25))
        
        for valor in numerosSorteados {
            if valor == numeroSorteado {
                exiteNumeroSorteado = true
            }
        }
        
        if !exiteNumeroSorteado {
            numerosSorteados.append(numeroSorteado)
            countResultados += 1
        }
        exiteNumeroSorteado = false
    }
    
    func mostrarResultado(){
        numerosSorteados.sort()
        for numero in numerosSorteados {
            resultado.text = resultado.text! + String(numero) + "   "
        }
    }
    
    func limparResultado(){
        resultado.text = ""
        numerosSorteados = []
        exiteNumeroSorteado = false
        numeroSorteado = 0
        countResultados = 0
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

