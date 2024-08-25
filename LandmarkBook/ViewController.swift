//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Farih Muhammad on 25/08/2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var landmarkNames : [String] = ["Amalienborg Palace", "LEGOLAND", "Christiansborg Palace", "Little Mermaid", "Frederik Church", "Rosenborg Castle", "Frederiksborg Castle", "Round Tower", "Kronborg Castle", "Tivoli Gardens"]
    
    var landmarkImages : [UIImage] = [
        UIImage(named: "Amalienborg_Palace")!,
        UIImage(named: "LEGOLAND")!,
        UIImage(named: "Christiansborg_Palace")!,
        UIImage(named: "Little_Mermaid")!,
        UIImage(named: "Frederik_Church")!,
        UIImage(named: "Rosenborg_Castle")!,
        UIImage(named: "Frederiksborg_Castle")!,
        UIImage(named: "Round_Tower")!,
        UIImage(named: "Kronborg_Castle")!,
        UIImage(named: "Tivoli_Gardens")!,
    ]
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
//        cell.textLabel?.text = "test"
        var content = cell.defaultContentConfiguration()
//        content.text = "TableView"
//        content.secondaryText = "Test"
        content.text = landmarkNames[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         selectedLandmarkName = landmarkNames[indexPath.row]
         selectedLandmarkImage = landmarkImages[indexPath.row]
        performSegue(withIdentifier: "toDetailVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            let destinationVC = segue.destination as! DetailViewController
            destinationVC.selectedLandmarkName = self.selectedLandmarkName
            destinationVC.selectedLandmarkImage = self.selectedLandmarkImage
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.landmarkNames.remove(at: indexPath.row)
            self.landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

}

