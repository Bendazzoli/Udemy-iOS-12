//
//  ViewController.swift
//  BitcoinPrice
//
//  Created by Paulo Henrique Bendazzoli on 14/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btcPrice: UILabel!
    
    @IBAction func refreshPrice(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration)
        
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
                            print(Float(amount)!)
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
