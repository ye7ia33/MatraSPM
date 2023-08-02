//
//  OffersViewController.swift
//  MatraApp
//
//  Created by Yahia El-Dow on 02/08/2023.
//

import UIKit
//import SwiftyJSON

class OffersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableview: UITableView!
    var list: [Model]?
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: .module)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        list = [Model.init()]
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.view.backgroundColor = .red
        self.tableview.register(UINib(nibName: "OfferTableViewCell", bundle: nil), forCellReuseIdentifier: "OfferTableViewCell")
        self.tableview.dataSource = self
        self.tableview.delegate = self
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
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.list?.count ?? 0
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OfferTableViewCell") as? OfferTableViewCell
//        cell?.offerImg = image
        return cell ?? UITableViewCell()
    }
    
}
struct Model {
    
}
