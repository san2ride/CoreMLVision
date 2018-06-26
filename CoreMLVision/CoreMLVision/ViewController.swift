//
//  ViewController.swift
//  CoreMLVision
//
//  Created by Jason Sanchez on 6/26/18.
//  Copyright © 2018 Jason Sanchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    private var imagePicker = UIImagePickerController()
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imagePicker.sourceType = .photoLibrary
        self.imagePicker.delegate = self
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        dismiss(animated: true, completion: nil)
        guard let pickedImage = info[UIImagePickerControllerOriginalImage] as?
            UIImage else {
            return
        }
        
        self.photoImageView.image = pickedImage
    }
    
    @IBAction func openPhotoLibraryButtonPressed(_ sender: UIBarButtonItem) {
        self.present(self.imagePicker, animated: true, completion: nil) 
    }
}

