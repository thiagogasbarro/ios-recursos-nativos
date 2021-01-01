//
//  CalculaMediaAPI.swift
//  Agenda
//
//  Created by Thiago Gasbarro Jesus on 01/01/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit

class CalculaMediaAPI: NSObject {
    
    func calculaMediaGeralDosAlunos() {
        guard let url = URL(string: "https://www.caleum.com.br/mobile") else { return }
        var listaDeAlunos: Array<Dictionary<String, Any>> = []
        var json:Dictionary<String, Any> = [:]
        let dicionarioDeAlunos = [
            "id": "1",
            "nome": "Andriu",
            "endereco": "Rua blablabla, Atibaia",
            "telefone": "9999-9090",
            "site": "www.alura.com.br",
            "nota": "8"
        ]
        
        listaDeAlunos.append(dicionarioDeAlunos as [String:Any])
        
        json = [
            "list": [
                ["aluno": listaDeAlunos]
                ]
        ]
        
        do{
                  var requisicao = URLRequest(url: url)
            let data = try JSONSerialization.data(withJSONObject: json, options: [])
            requisicao.httpBody = data
            requisicao.httpMethod = "POST"
            requisicao.addValue("application/json", forHTTPHeaderField: "Content-Type")
            
            let task = URLSession.shared.dataTask(with: requisicao) { (data, response, error) in
                if error == nil {
                    do {
                      let dicionario = try JSONSerialization.jsonObject(with: data!, options: [])
                    }catch {
                        print(error.localizedDescription)
                    }

                }
            }
            task.resume()
        }catch {
            print(error.localizedDescription)
        }
    }

}
