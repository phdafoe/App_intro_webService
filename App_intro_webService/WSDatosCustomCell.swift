//
//  WSDatosCustomCell.swift
//  App_intro_webService
//
//  Created by formador on 1/3/17.
//  Copyright © 2017 formador. All rights reserved.
//

import UIKit

class WSDatosCustomCell: UITableViewCell {
    
    
    @IBOutlet weak var myIdUsuarioLBL: UILabel!
    @IBOutlet weak var myNumeroIdLBL: UILabel!
    @IBOutlet weak var myTituloLBL: UILabel!
    @IBOutlet weak var myCuerpoMensajeLBL: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
