//
//  TableViewController.swift
//  TableViewController
//
//  Created by iFlame on 26/04/17.
//  Copyright © 2017 IFlame. All rights reserved.
//

import UIKit

class CustomCell : UITableViewCell {
    @IBOutlet weak var labelTitle: UILabel!
    
}

class TableViewController: UITableViewController, ListingDelegate {
    
    var names = ["irfan","sunil","bansi"]

    override func viewDidLoad() {
        super.viewDidLoad()

        self.clearsSelectionOnViewWillAppear = false
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func reloadMyData(withArray array : [String]){
        names = array
    }
    
    func printMyName(){
        print("=== Name ==>> ", #file)
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
      
        // #warning Incomplete implementation, return the number of rows
        return names.count
    }

 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath)
        
        
        if cell == nil {
            cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: "CustomCell")
        }
        cell.textLabel?.text = names[indexPath.row]
        cell.accessoryType = .checkmark
        
        cell.imageView?.image = UIImage.init(named: names[indexPath.row])
        
        return cell
        

      
    }
 

}
