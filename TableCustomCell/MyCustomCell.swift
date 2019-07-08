//
//  MyCustomCell.swift
//  TableCustomCell
//
//  Created by Josue J Maqueda Flores on 3/9/19.
//  Copyright © 2019 Josue J Maqueda Flores. All rights reserved.
//

import UIKit

class MyCustomCell: UITableViewCell
{
    
    @IBOutlet weak var miImagen: UIImageView!
    @IBOutlet weak var descLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
