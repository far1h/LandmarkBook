//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Farih Muhammad on 25/08/2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        var landmarkNames : [String] = [
            "Amalienborg_Palace",
            "LEGOLAND",
            "Christiansborg_Palace",
            "Little_Mermaid",
            "Frederik_Church",
            "Rosenborg_Castle",
            "Frederiksborg_Castle",
            "Round_Tower",
            "Kronborg_Castle",
            "Tivoli_Gardens"
        ]
        
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


    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
//        cell.textLabel?.text = "test"
        var content = cell.defaultContentConfiguration()
//        content.text = "TableView"
//        content.secondaryText = "Test"
        content.text = "test"
        cell.contentConfiguration = content
        return cell
    }

}

