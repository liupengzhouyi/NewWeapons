//
//  NewWeaponsTableViewController.swift
//  NewWeapons
//
//  Created by 刘鹏 on 2018/9/6.
//  Copyright © 2018年 刘鹏. All rights reserved.
//

import UIKit

class NewWeaponsTableViewController: UITableViewController {
    
    var weapons = ["AUG", "汤姆逊冲锋枪", "AKM", "SCAR-L", "M416", "M16A4", "Kar98k", "WIN94", "AWM"]
    
    var weaponTypes = ["自动步枪", "狙击枪", "冷兵器", "机枪", "自动步枪", "狙击枪", "自动步枪", "冲锋枪", "近身武器"]
    
    var origins = ["奥地利", "英国", "中国", "前苏联", "俄罗斯", "德国", "美国", "前苏联", "美国"]
    
    var weaponImages = ["aug", "awm", "crossbow", "dp28", "groza", "kar98k", "m16a4", "microuzi", "pan"]

    var favorites = Array(repeating: false, count: 11)
    
    @IBAction func favBtnTap(_ sender: UIButton) {
        let btnPos = sender.convert(CGPoint.zero, to: self.tableView)
        
//        print("\(btnPos)")
        
        let indexPath = tableView.indexPathForRow(at: btnPos)!
        
        self.favorites[indexPath.row] = !self.favorites[indexPath.row]
        
        let cell = tableView.cellForRow(at: indexPath) as! CradCell
        
        cell.favorite = self.favorites[indexPath.row]
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return weapons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let id = String(describing: CradCell.self)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: id, for: indexPath) as! CradCell

        cell.nameLabel.text = weapons[indexPath.row]
        cell.typeLabel.text = weaponTypes[indexPath.row]
        cell.addressLabel.text = origins[indexPath.row]
        cell.backImageView.image = UIImage(named: weaponImages[indexPath.row])
        cell.favorite = favorites[indexPath.row]
        
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
