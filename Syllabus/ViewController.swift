//
//  ViewController.swift
//  Syllabus
//
//  Created by Carlos on 6/5/17.
//  Copyright © 2017 Carlos. All rights reserved.
//

import UIKit

// In order to use the camera you have to add { UIImagePickerControllerDelegate, UINavigationControllerDelegate}
//    into viewController

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    
    // Image view
    @IBOutlet var imageCam: UIImageView!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        }
    
    
    // Save Button
    @IBAction func save(_ sender: UIButton) {
        let imageData = UIImageJPEGRepresentation(imageCam.image!, 0.6)
        let compressedJPEGImage = UIImage(data: imageData!)
        UIImageWriteToSavedPhotosAlbum(compressedJPEGImage! , nil, nil, nil)
    }
    
    
    // Take Picture button
    @IBAction func takePicture(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera) {
            
            let picker = UIImagePickerController()
            picker.delegate = self
            picker.sourceType = UIImagePickerControllerSourceType.camera;
            picker.allowsEditing = false
            self.present(picker, animated: true, completion: nil)
        }
        
       
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingImage image: UIImage!, editingInfo:  [NSObject: Any]!) {
        imageCam.image = image
        self.dismiss(animated: true, completion: nil)
    }
   
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

