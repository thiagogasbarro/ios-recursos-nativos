//
//  MenuOpcoesAlunos.swift
//  Agenda
//
//  Created by Thiago Gasbarro Jesus on 31/12/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit

enum MenuActionSheetAlunos {
    case sms
    case ligacao
    case waze
    case mapa
    
}

class MenuOpcoesAlunos: NSObject {

    func configuraMenuDeOpcoesDoAluno(completion:@escaping(_ opcao:MenuActionSheetAlunos) -> Void) -> UIAlertController {
        let menu = UIAlertController(title: "atenção", message: "escolha uma das opções abaixo", preferredStyle: .actionSheet)
        
        let sms = UIAlertAction(title: "enviar sms", style: .default) { (acao) in
            completion(.sms)
        }
        menu.addAction(sms)
        
        let ligacao = UIAlertAction(title: "ligar", style: .default) { (acao) in
            completion(.ligacao)
        }
        menu.addAction(ligacao)
        
        let waze = UIAlertAction(title: "localizar no waze", style: .default) { (acao) in
            completion(.waze)
        }
        menu.addAction(waze)
        
        let mapa = UIAlertAction(title: "localizar no mapa", style: .default) { (acao) in
            completion(.mapa)
        }
        menu.addAction(mapa)
        
        let cancelar = UIAlertAction(title: "cancelar", style: .cancel, handler: nil)
        menu.addAction(cancelar)
        
        return menu
    }
    
}
