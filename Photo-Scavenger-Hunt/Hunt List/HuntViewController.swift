//
//  HuntViewController.swift
//  Photo-Scavenger-Hunt
//
//  Created by Yujun Zhao on 3/20/23.
//

import UIKit

class HuntViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var hunts: [Hunt] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableHeaderView = UIView()
        hunts = Hunt.mockedHunts
        
        tableView.dataSource = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    // MARK: - Navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         if let detailViewController = segue.destination as? HuntDetailViewController,
            let selectedIndexPath = tableView.indexPathForSelectedRow{
             let hunt = hunts[selectedIndexPath.row]
             detailViewController.hunt = hunt
         }
     }

}


extension HuntViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hunts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HuntCell", for: indexPath) as! HuntCell
        let hunt = hunts[indexPath.row]
        cell.configure(with: hunt)
        return cell
    }
}
