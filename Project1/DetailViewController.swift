//
//  DetailViewController.swift
//  Project1
//
//  Created by Pablo Butron on 19/10/21.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    
    var selectedImage : String?
    var PictureNumber = 0
    var TotalPictures = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "View Picture"
        // this line check and unwraps the optional in var selectedImage
        if let imageToLoad = selectedImage {
            
            imageView.image = UIImage (named: imageToLoad)
        }

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
