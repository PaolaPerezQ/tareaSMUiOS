//
//  inicioViewController.swift
//  rick&Montis
//
//  Created by Catalina on 27-07-22.
//
import UIKit

class inicioViewController: UIViewController {
    
    override func viewDidLoad() {
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Ver Personajes", style: .done, target: self, action: #selector(verPersonajes))
    }
    
    @objc private func verPersonajes() {
        self.navigationController?.pushViewController(ViewController(), animated: true)
    }
    
}
