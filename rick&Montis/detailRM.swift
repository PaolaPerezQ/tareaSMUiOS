//
//  detailRM.swift
//  rick&Montis
//
//  Created by Catalina on 27-07-22.
//

import Foundation

func buscarNoticias() {
    let url = "https://rickandmortyapi.com/api/character"
    if let urlS = URL(string: url) {
        if let data = try? Data(contentsOf: urlS){
            let decodificador = JSONDecoder()
            
            if let datosDecofic = try? decodificador.decode(Resultst.self, from: data) {
                print("datosDecodificados: \(datosDecofic.results) ")
                
            //    resultss = datosDecofic.results
                
            //    tablaRM.reloadData()
            }
        }
    }
}
