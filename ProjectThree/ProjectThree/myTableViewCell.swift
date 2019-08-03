//
//  myTableViewCell.swift
//  ProjectThree
//
//  Created by Pavel Procenko on 03/08/2019.
//  Copyright © 2019 Pavel Procenko. All rights reserved.
//

import UIKit

class myTableViewCell: UITableViewCell {
    

    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var secondLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
   public func refresh(_ model: Model) {
        
        firstLabel.text = model.name
        secondLabel.text = model.lastName
    }

}
