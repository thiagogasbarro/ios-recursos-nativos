//
//  AutenticacaoLocal.swift
//  Agenda
//
//  Created by Thiago Gasbarro Jesus on 04/01/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit
import LocalAuthentication

class AutenticacaoLocal: NSObject {
    
    var error:NSError?
    
    func autorizaUsuario(completion:@escaping(_ autenticado:Bool) -> Void) {
        let contexto = LAContext()
        
        if contexto.canEvaluatePolicy(.deviceOwnerAuthentication, error: &error) {
            contexto.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: "é nescessá autenticação para apagar um aluno") { (resposta, erro) in
                completion(resposta)
            }
        }
    }

}
