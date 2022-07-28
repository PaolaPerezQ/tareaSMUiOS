//
//  ViewController.swift
//  rick&Montis
//
//  Created by Catalina on 19-07-22.
//
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tablaRM: UITableView!
    
    var resultss: [Result] = []
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tablaRM.register(UINib(nibName: "celdaRickAndMortisTableViewCell", bundle: nil), forCellReuseIdentifier: "celdaTabla")
        
        tablaRM.delegate = self
        tablaRM.dataSource = self
    
        buscarAPI()
        
    
        
        }

    
    
   func buscarAPI() {

        let url = "https://rickandmortyapi.com/api/character"
       
            if let urlS = URL(string: url) {
            if let data = try? Data(contentsOf: urlS){
                let decodificador = JSONDecoder()
                
                if let datosDecofic = try? decodificador.decode(Resultst.self, from: data) {
                    print("datosDecodificados: \(datosDecofic.results) ")
                    
                    resultss = datosDecofic.results
                    
                    tablaRM.reloadData()
                }
            }
        }
        
    
   }
    
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       // return 3
        return resultss.count
   
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tablaRM.dequeueReusableCell(withIdentifier: "celdaTabla", for: indexPath) as! celdaRickAndMortisTableViewCell
        
        celda.nameRM.text = resultss[indexPath.row].name
        celda.statusRM.text = "Status:  \(resultss[indexPath.row].status)"
        
        celda.detalleRM.text = "Specie: \(resultss[indexPath.row].species) "
        
        celda.origenRM.text = "Episodio: \(resultss[indexPath.row].origin.name) "
        celda.idRM.text = "Id: \(resultss[indexPath.row].id) - Origen: \(resultss[indexPath.row].location.name) "
        
        if let urll = URL(string: resultss[indexPath.row].image ?? ""){
            if let imagenData = try? Data(contentsOf: urll){
                celda.imagenRM.image = UIImage(data: imagenData)            }
        }
        
        
        return celda
    }
    
}
