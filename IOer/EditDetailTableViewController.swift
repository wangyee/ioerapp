//
//  EditDetailTableViewController.swift
//  IOer
//
//  Created by Michael on 2017/8/6.
//  Copyright © 2017年 mwsoho. All rights reserved.
//

import UIKit

class EditDetailTableViewController: UITableViewController {

   
    var profile: Profile!
    
    @IBOutlet weak var femaleBtnLabel: UIButton!
    @IBOutlet weak var bgImageView: UIImageView!
    @IBOutlet weak var maleBtnLabel: UIButton!
    @IBOutlet weak var thumbImage: UIImageView!
    @IBOutlet weak var tfLastName: UITextField!
    @IBOutlet weak var tfFirstName: UITextField!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    
    @IBOutlet weak var genderLabel: UILabel!
    
    @IBAction func maleBtn(_ sender: Any) {
    }
    
    @IBAction func femaleBtn(_ sender: Any) {
    }
    
    @IBOutlet weak var tfJobTitle: UITextField!
    
    
    @IBOutlet weak var tfOffice: UITextField!
    
    @IBOutlet weak var tfMobile: UITextField!
    
    @IBOutlet weak var tfStatus: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.backBarButtonItem?.tintColor = UIColor.white
        self.emailLabel.text = profile.email
        self.tfFirstName.text = profile.name
        self.tfJobTitle.text = profile.jobtitle
        self.tfMobile.text = profile.mobile
        self.tfOffice.text = profile.office
        self.thumbImage.image = UIImage(named: profile.image)
        
        thumbImage.layer.cornerRadius = thumbImage.frame.height / 2
        thumbImage.clipsToBounds = true
        
        self.bgImageView.image = UIImage(named: profile.image)
       
        self.maleBtnLabel.imageView?.isHidden = true
        if profile.gender == "Mr." {
            
            self.genderLabel.text = "Gentleman"
            self.maleBtnLabel.setImage(#imageLiteral(resourceName: "Male_icon_color"), for: .highlighted)
           
        } else if profile.gender == "Ms."{
                self.genderLabel.text = "Lady"
                self.femaleBtnLabel.setImage(#imageLiteral(resourceName: "Female_icon_color"), for: .highlighted)

        }
        let effect = UIBlurEffect(style: .dark)
        let effectView = UIVisualEffectView(effect: effect)
        effectView.frame = bgImageView.frame
        bgImageView.image = UIImage(named: profile.image)
    
        bgImageView.addSubview(effectView)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 6
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
