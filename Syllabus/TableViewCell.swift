//
//  TableViewCell.swift
//  Syllabus
//
//  Created by Carlos on 6/25/17.
//  Copyright © 2017 Carlos. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    // Small photo located on the left of the tableview cell
    @IBOutlet weak var smallPhoto: UIImageView!
    
    // Title label
    @IBOutlet weak var titleLabel: UILabel!
    
    
    // Description label
    @IBOutlet weak var descriptLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func commonInit (_ imageName: String, title: String, sub: String){
        smallPhoto.image = UIImage(named: imageName)
        titleLabel.text = title
        descriptLabel.text = sub
        
    }
    
}
