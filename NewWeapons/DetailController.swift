//
//  DetailController.swift
//  NewWeapons
//
//  Created by 刘鹏 on 2018/9/7.
//  Copyright © 2018年 刘鹏. All rights reserved.
//

import UIKit

class DetailController: UITableViewController {

    @IBOutlet weak var headerImageView: UIImageView!
    
    var thisWeapon : Weapon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headerImageView.image = UIImage(named: thisWeapon.image)
        navigationItem.largeTitleDisplayMode = .never
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    //删除默认的section的代理
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 6
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let id = String(describing: DetailCell.self)
        let cell = tableView.dequeueReusableCell(withIdentifier: id, for: indexPath) as! DetailCell

        switch indexPath.row {
        case 0:
            cell.keyLabel.text = "Name"
            cell.valueLabel.text = thisWeapon.name
        case 1:
            cell.keyLabel.text = "Type"
            cell.valueLabel.text = thisWeapon.type
        case 2:
            cell.keyLabel.text = "Address"
            cell.valueLabel.text = thisWeapon.origin
        case 3:
            cell.keyLabel.text = "Bullet"
            cell.valueLabel.text = thisWeapon.bullet.description
        case 4:
            cell.keyLabel.text = "Muzzle Veolcity"
            cell.valueLabel.text = thisWeapon.mv.description
        default:
            cell.keyLabel.isHidden = true
            cell.valueLabel.text = thisWeapon.text
        }
        // Configure the cell...

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
