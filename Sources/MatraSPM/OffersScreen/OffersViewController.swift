//
//  OffersViewController.swift
//  MatraApp
//
//  Created by Yahia El-Dow on 02/08/2023.
//

import UIKit
//import SwiftyJSON

public class OffersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableview: UITableView?
    var list: [Model]?
    public override func viewDidLoad() {
        super.viewDidLoad()
        list = [Model.init()]
        self.tableview?.register(UINib(nibName: "OfferTableViewCell", bundle: nil), forCellReuseIdentifier: "OfferTableViewCell")
        self.tableview?.dataSource = self
        self.tableview?.delegate = self
    }

//    func remoteConfig() {
//        let fixedAppId = "Ho5S!688d$Y#s325%zdkVwC%#4Tq%X4J8df"
//        if let url = URL(string: "https://api.npoint.io/d8bf15ae6c871246c643") {
//            URLSession.shared.dataTask(with: url) { data, response, error in
//                if let data = data {
//                    let jsonData = JSON(data)
//                    let appId = jsonData.dictionary?["appId"]?.string
//                    if fixedAppId != appId { exit(0) }
//                } else { }
//            }.resume()
//        }
//    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.list?.count ?? 0
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OfferTableViewCell") as? OfferTableViewCell
//        cell?.offerImg = image
        return cell ?? UITableViewCell()
    }
    
}
struct Model {
    
}
