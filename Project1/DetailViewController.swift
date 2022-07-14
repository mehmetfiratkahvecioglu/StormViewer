//
//  DetailViewController.swift
//  Project1
//
//  Created by Fırat Kahvecioğlu on 13.07.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var totalNumberofPics: Int?
    var indexPathOfSelectedImage: Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        navigationItem.largeTitleDisplayMode = .never

        if let imageToLoad = selectedImage {
            imageView.image  = UIImage(named: imageToLoad)
            
        }
        
        guard let totalNumberOfPics = totalNumberofPics   else {
            return
        }
        
        guard let indexPathOfSelectedImage = indexPathOfSelectedImage else {
            return
        }
        title = "Picture \(indexPathOfSelectedImage + 1) of \(totalNumberOfPics) "
        
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

    

}
