//
//  SelectedImageViewController.swift
//  Syllabus
//
//  Created by Carlos on 7/8/17.
//  Copyright © 2017 Carlos. All rights reserved.
//

import Foundation
import UIKit


class SelectedImageViewController: UIViewController {
    
    // Title of handout being passed 
    @IBOutlet weak var titlePassed: UILabel!
    
    // Image of handout being passed
    @IBOutlet weak var imagePassed: UIImageView!
    
    override func viewDidLoad() {
        
        // Passed title
        titlePassed.text = titleFirst[myIndex]
        // Passed Image
        imagePassed.image = UIImage(named: titleFirst[myIndex] + ".jpeg" )
        
    }
    
    
}
