//
//  HomeViewController.swift
//  TableViewController
//
//  Created by iFlame on 26/04/17.
//  Copyright © 2017 IFlame. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Get the new view controller using segue.destinationViewController.
        print("Destination =>> \(segue.destination)")
        
        if let controller = segue.destination as? ListingDelegate
        {            
            controller.reloadMyData(withArray: ["aamir","ajay","amitabh","anil","hrithik","salman","shahrukh","varun"])
            
                        
        }

        // Pass the selected object to the new view controller.
    }
 

    @IBAction func submitPressed(_ sender: Any) {
        
        self.performSegue(withIdentifier: "SegueListView", sender: nil)
        
    }
    
    
}
