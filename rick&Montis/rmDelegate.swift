//
//  rmDelegate.swift
//  rick&Montis
//
//  Created by Catalina on 25-07-22.
//

import Foundation
/*
protocol randmDelegate{
    func mostrarListaRM(listas: [rmData])
}
struct RmDelegate {
    var delegado: randmDelegate?
    
    func verRM() {
        let urlString = "https://rickandmortyapi.com/api/character/2"
        
        if let urls = URL(string: urlString) {
            let urlsesion = URLSession(configuration: .default)
            
            let actividad = urlsesion.dataTask(with: urls) { datos, respuesta, error in if error != nil {
                print("Error al obtener datos de la API: ",error?.localizedDescription as Any)
            }
            if let datosSeguros = datos?.dataRM(quitSt: ""){
                if let listaRM = self.parametrosJSON(datosRM: datosSeguros){
                    print("Lista R&M: ", listaRM)
                    
                    delegado?.mostrarListaRM(listas: listaRM)
                }
            }
         }
            actividad.resume()
        }
    }
    
    func parametrosJSON(datosRM: Data) -> [rmData]? {
        let decodificador = JSONDecoder()
        do {
            let datosDecodificados = try decodificador.decode([rmData].self, from: datosRM)
            return datosDecodificados
        } catch  {
            print("Error al decodificar los datos: ", error.localizedDescription)
            return nil
        }
    }
}

extension Data{
    func dataRM(quitSt palabra: String) -> Data? {
        let datas = String(data: self, encoding: .utf8)
        let dataString = datas?.replacingOccurrences(of: palabra, with: "")
        guard let data = dataString?.data(using: .utf8) else {    return nil }
        return data
    }
}
*/
