//
//  ViewController.swift
//  AlcoolOuGasolina
//
//  Created by Paulo Henrique Bendazzoli on 05/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var precoAlcool: UITextField!
    @IBOutlet weak var precoGasolina: UITextField!
    
    @IBOutlet weak var resultado: UILabel!
    
    @IBAction func limpar(_ sender: Any) {
        resultado.text = nil
        precoGasolina.text = nil
        precoAlcool.text = nil
    }
    
    @IBAction func calcularPreco(_ sender: Any) {
        resultado.text = self.validaMelhorCombustivel(precoAlcool: precoAlcool.text!, precoGasolina: precoGasolina.text!)
    }
    
    func validaMelhorCombustivel(precoAlcool: String, precoGasolina: String) -> String {
        return self.validarCampos(precoAlcool: precoAlcool, precoGasolina: precoGasolina)
    }
    
    func validarCampos(precoAlcool: String, precoGasolina: String) -> String {
        
        var mensagemErro = ""
        var valorAlcool = 0.00
        var valorGasolina = 0.00
        
        if let converteuAlcool = Double(precoAlcool){
            valorAlcool = converteuAlcool
            if let converteuGasolina = Double(precoGasolina){
                valorGasolina = converteuGasolina
                if valorAlcool.isZero {
                    mensagemErro = "Digite o preço do álcool para calcular."
                } else if valorGasolina.isZero {
                    mensagemErro = "Digite o preço da gasolina para calcular."
                }
            }else{
                mensagemErro = "Número digitado para a gasolina é inválido."
            }
        }else{
            mensagemErro = "Número digitado para o álcool é inválido."
        }
        
        if mensagemErro.isEmpty {
            resultado.textColor = UIColor.white
            return self.calculaMelhorCombustivel(alcool: valorAlcool, gasolina: valorGasolina)
        }else{
            resultado.textColor = UIColor.red
            return mensagemErro
        }
    }
    
    func calculaMelhorCombustivel(alcool: Double, gasolina: Double) -> String {
        
        if (alcool / gasolina) >= 0.7 {
            return "Melhor utilizar gasolina!"
        }else{
            return "Melhor utilizar álcool!"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

