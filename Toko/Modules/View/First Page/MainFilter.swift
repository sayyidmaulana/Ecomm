//
//  MainFilter.swift
//  Toko
//
//  Created by mac on 30/03/19.
//  Copyright © 2019 Sayyid Maulana. All rights reserved.
//

import UIKit

class MainFilter: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()

   tableView.delegate = self
   tableView.dataSource = self
   tableView.separatorInset = UIEdgeInsetsMake(20, 12, 10, 12)
   tableView.register(UINib(nibName: "SearchFilter", bundle: nil), forCellReuseIdentifier: cellId)
    }
}

extension MainFilter: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
    }
    // fungsi pindah halaman ke IssuesDetailController
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("ID: \(self.detailResponse[indexPath.row].id)")
//        let idDetail = self.detailResponse[indexPath.row].id
//        let detailController = IssuesDetailController()
//        detailController.idDetail = idDetail
//        navigationController?.pushViewController(detailController, animated: true)
//    }
}

extension MainFilter: UITableViewDataSource {

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return 10
}
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! SearchFilter

    return cell
    }
}
