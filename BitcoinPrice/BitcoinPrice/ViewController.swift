//
//  ViewController.swift
//  BitcoinPrice
//
//  Created by Paulo Henrique Bendazzoli on 14/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btcPrice: UILabel!
    
    @IBOutlet weak var descriptionRefreshButton: UIButton!
    
    @IBAction func refreshPrice(_ sender: Any) {
        self.refreshBitcoinPrice()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.refreshBitcoinPrice()
        
    }
    
    func formatPrice(price: NSNumber) -> String {
        let nf = NumberFormatter()
        nf.numberStyle = .currency
        nf.locale = Locale(identifier: "pt_BR")
        
        if let finalPrice = nf.string(from: price) {
            return finalPrice
        }
        return "R$ 0,00"
    }
    
    func refreshBitcoinPrice() {
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration)
        
        self.descriptionRefreshButton.setTitle("Atualizando ...", for: .disabled)
        
        /*
         JSON FORMAT EXAMPLE
         {
            "data":{
                "base":"BTC",
                "currency":"BRL",
                "amount":"222304.309066"
            }
         }
         */
        guard let url = URL(string: "https://api.coinbase.com/v2/prices/spot?currency=BRL") else {
            fatalError()
        }
        
        let task = session.dataTask(with: url) { data, response, error in
            guard let httpResponse = response as? HTTPURLResponse,
                  (200..<300).contains(httpResponse.statusCode) else {
                return
            }
            
            guard let data = data else {
                return
            }
            
            do {
                if let result = try JSONSerialization.jsonObject(with: data, options: [])as? [String: Any]{
                    if let dataJson = result["data"] as? [String: String] {
                        if let amount = dataJson["amount"] {
                            let formattedPrice = self.formatPrice(price: NSNumber(value: Double(amount)!))
                            
                            DispatchQueue.main.async(execute: {
                                self.btcPrice.text = "\(formattedPrice)"
                                self.descriptionRefreshButton.setTitle("Atualizar", for: .normal)
                            })
                        }
                    }
                }
            } catch {
                fatalError()
            }
        }
        
        task.resume()
    }
}
