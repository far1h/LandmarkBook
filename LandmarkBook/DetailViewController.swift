//
//  DetailViewController.swift
//  LandmarkBook
//
//  Created by Farih Muhammad on 25/08/2024.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var landmarkLabel: UILabel!
    @IBOutlet weak var landmarkImage: UIImageView!
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        landmarkLabel.text = selectedLandmarkName
        landmarkImage.image = selectedLandmarkImage
    }
    

    

}
