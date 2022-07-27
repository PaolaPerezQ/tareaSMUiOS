//
//  ViewController.swift
//  rick&Montis
//
//  Created by Catalina on 19-07-22.
//
import UIKit

struct Resultst: Codable {
    let info: Info
    let results: [Result]
}
struct Info: Codable {
    let count, pages: Int
    let next: String
}
struct Result: Codable {
    let id: Int
    let name, status, species, type: String
    let gender: String
    let image: String
    let url: String
   
}
class ViewController: UIViewController {
    
    var resultss: [Result] = []
   
    @IBOutlet weak var tablaRM: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tablaRM.register(UINib(nibName: "celdaRickAndMortisTableViewCell", bundle: nil), forCellReuseIdentifier: "celdaTabla")
        
        tablaRM.delegate = self
        tablaRM.dataSource = self
    
        buscarNoticias()
        
        }
    
    func buscarNoticias() {
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
        celda.statusRM.text = resultss[indexPath.row].status
        
        if let urll = URL(string: resultss[indexPath.row].image ?? ""){
            if let imagenData = try? Data(contentsOf: urll){
                celda.imagenRM.image = UIImage(data: imagenData)            }
        }
        
        
        return celda
    }
    
}
