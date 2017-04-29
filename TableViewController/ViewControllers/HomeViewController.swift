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

    @IBOutlet weak var pView: UIProgressView!
    
    var value : Float = 0.0
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(update), userInfo: nil, repeats: true)

        
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
    func update() {
        
        value = value + 0.01
        pView.setProgress(value, animated: true)
        if value >= 1 {
            timer.invalidate()
            timer = nil
            pView.isHidden = true
        }
        
    
    }
 

    @IBAction func submitPressed(_ sender: Any) {
        
        self.performSegue(withIdentifier: "SegueListView", sender: nil)
        
    }
    
    
}
