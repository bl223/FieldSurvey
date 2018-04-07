//
//  FieldSurveyTableViewCell.swift
//  Field Survey
//
//  Created by Bryce Ligaya on 4/6/18.
//  Copyright © 2018 Bryce Ligaya. All rights reserved.
//

import UIKit

class FieldSurveyTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var FieldIconImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var DateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
