//
//  MemberTableViewController.swift
//  IOer
//
//  Created by Michael on 2017/8/2.
//  Copyright © 2017年 mwsoho. All rights reserved.
//

import UIKit
import ChameleonFramework
import CoreData

class MemberTableViewController: UITableViewController {
    
    var profiles = [
        Profile(name: "Eric Yang", gender: "Mr.", office: "Beijing",  mobile: "", nationality: "P.R.China", email: "eric.yang@interone.cn", image: "EricYang", status: true, jobtitle: "GM"),
        Profile(name: "Lee Yu", gender: "Mr.", office:"Shanghai", mobile: "", nationality: "Taiwan", email: "lee.yu@interone.cn", image: "LeeYu", status: true, jobtitle: "CTO"),
        Profile(name: "Danilo", gender: "Mr.", office:"Beijing", mobile: "", nationality: "Philippine", email: "7490 Ratke Manor Suite 432", image: "Danilo", status: false, jobtitle: "ECD"),
        Profile(name: "Gizmo", gender: "Mr.", office:"New Corbin", mobile: "", nationality: "Jamaica", email: "10 Wiegand Ranch Suite 137", image: "Ruby", status: true, jobtitle: "CD"),
        Profile(name: "Boomer", gender: "Ms.", office:"West Ahmadmouth", mobile: "", nationality: "Guatemala", email: "807 Horacio Ports Apt. 885", image: "Gizmo", status: true, jobtitle: "CD"),
        Profile(name: "Luna", gender: "Mr.", office:"Hallieland", mobile: "", nationality: "Mexico", email: "6126 Stevie Place", image: "Boomer", status: false, jobtitle: "CD"),
        Profile(name: "Buddy", gender: "Ms.", office:"Hermistonburgh", mobile: "", nationality: "Qatar", email: "64 Heathcote Stream Apt. 306", image: "Luna", status: false, jobtitle: "CD"),
        Profile(name: "Stella", gender: "Ms.", office:"Nellamouth", mobile: "", nationality: "Russian Federation", email: "8755 Lehner Greens", image: "Buddy", status: false, jobtitle: "CD"),
        Profile(name: "Shelby", gender: "Mr.", office:"North Isobel", mobile: "", nationality: "Macao", email: "0546 Kaylie Rue Apt. 342", image: "Stella", status: false, jobtitle: "CD"),
        Profile(name: "Bailey", gender: "Ms.", office:"North Gene", mobile: "", nationality: "Cocos (Keeling) Islands", email: "12 Herman Shoals", image: "Shelby", status: false, jobtitle: "CD"),
        Profile(name: "Jackson", gender: "Ms.", office:"Dandremouth", mobile: "", nationality: "Timor-Leste", email: "0165 Rocio Parks Apt. 959", image: "Bailey", status: false, jobtitle: "CD"),
        Profile(name: "Sammy", gender: "Mr.", office:"New Antwon", mobile: "", nationality: "Bermuda", email: "7575 Buck Brooks Apt. 711", image: "Teddy", status: false, jobtitle: "CD"),
        Profile(name: "Ruby", gender: "Mr.", office:"New Antwon", mobile: "", nationality: "Armenia", email: "615 Carey Park Suite 148", image: "Sammy", status: false, jobtitle: "CD"),
        Profile(name: "Gizmo", gender: "Mr.", office:"West Kaia", mobile: "", nationality: "Jamaica", email: "55 Reggie Valley", image: "Ruby", status: false, jobtitle: "CD"),
        Profile(name: "Boomer", gender: "Mr.", office:"New Corbin", mobile: "", nationality: "Guatemala", email: "909 Wunsch Skyway Apt. 315", image: "Gizmo", status: false, jobtitle: "CD"),
        Profile(name: "Luna", gender: "Mr.", office:"West Ahmadmouth", mobile: "", nationality: "Mexico", email: "369 Kuvalis Locks Apt. 410", image: "Boomer", status: false, jobtitle: "CD"),
        Profile(name: "Buddy", gender: "Mr.", office:"Hallieland", mobile: "", nationality: "Qatar", email: "126 Joanny Fields Suite 131", image: "Luna", status: false, jobtitle: "CD"),
        Profile(name: "Stella", gender: "Mr.", office:"Hermistonburgh", mobile: "", nationality: "Russian Federation", email: "73 Graham Ville Suite 834", image: "Buddy", status: false, jobtitle: "CD"),
        Profile(name: "Shelby", gender: "Mr.", office:"Nellamouth", mobile: "", nationality: "Macao", email: "565 Reichel Plain Suite 505", image: "Stella", status: false, jobtitle: "CD"),
        Profile(name: "Bailey", gender: "Mr.", office:"North Isobel", mobile: "", nationality: "Cocos (Keeling) Islands", email: "893 Herzog Keys Apt. 588", image: "Shelby", status: false, jobtitle: "CD"),
        Profile(name: "Jackson", gender: "Mr.", office:"North Gene", mobile: "", nationality: "Timor-Leste", email: "183 Harris Ways Suite 018", image: "Bailey", status: false, jobtitle: "CD")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.navigationItem.backBarButtonItem?.tintColor = UIColor.white
        self.navigationController?.hidesNavigationBarHairline = true
        //self.setStatusBarStyle(UIStatusBarStyleContrast)
        //self.navigationItem.title = "Contacts"
        self.setThemeUsingPrimaryColor(ClearColor(), with: .contrast)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

 

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return profiles.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ProfileTableViewCell
        
        cell.nameLabel.text = profiles[indexPath.row].name
        cell.thumbImageView.image = UIImage(named: profiles[indexPath.row].image)
        cell.thumbImageView.layer.cornerRadius = cell.thumbImageView.frame.size.height / 2
        cell.thumbImageView.layer.masksToBounds = true
//      cell.thumbImageView.image = #imageLiteral(resourceName: "user")
        //cell.genderImageView.isHidden = true
        cell.officeLabel.text = "\(profiles[indexPath.row].office)\(" Office")"
        cell.jobTitleLabel.text = profiles[indexPath.row].jobtitle
        cell.nationalityLabel.text = profiles[indexPath.row].nationality
        
        if profiles[indexPath.row].jobtitle == "GM" {
            
            cell.genderImageView.image = #imageLiteral(resourceName: "Gentleman")
            
        } else {
        if profiles[indexPath.row].gender == "Mr." {
            
            cell.genderImageView.image = #imageLiteral(resourceName: "Male_icon_color")
        } else {
            
            cell.genderImageView.image = #imageLiteral(resourceName: "Female_icon_color")
        }
        }

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

  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
//        if segue.identifier == "ShowTinder" {
//            let dest = segue.destination as! MyKolodaViewController
//            dest.profile = self.profiles
//        }
        if segue.identifier == "ShowDetail" {
            let dest = segue.destination as! DetailTableViewController
            dest.profile = self.profiles[(tableView.indexPathForSelectedRow?.row)!]
        }
        
        
    }
    
    @IBAction func close(segue: UIStoryboardSegue){
        
    }
}
