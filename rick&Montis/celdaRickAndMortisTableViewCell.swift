//
//  celdaRickAndMortisTableViewCell.swift
//  rick&Montis
//
//  Created by Catalina on 25-07-22.
//

import UIKit

class celdaRickAndMortisTableViewCell: UITableViewCell {

   
    @IBOutlet weak var imagenRM: UIImageView!
    
    @IBOutlet weak var nameRM: UILabel!
    
    @IBOutlet weak var idRM: UILabel!
    
    @IBOutlet weak var statusRM: UILabel!
    
    @IBOutlet weak var origenRM: UILabel!
    
    
    @IBOutlet weak var detalleRM: UILabel!
    
    
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
