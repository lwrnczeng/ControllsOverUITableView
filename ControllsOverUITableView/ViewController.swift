//
//  ViewController.swift
//  ControllsOverUITableView
//
//  Created by lwrnc z on 7/7/17.
//  Copyright © 2017 Lwrnc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 //       tableView.delegate = self
        tableView.dataSource = self
    }

}


extension ViewController : UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! MyTableViewCell
        
//       // let cell = UITableViewCell()
//        cell.textLabel!.text = "lwrnc"
//    
//        cell.tit
        cell.titleLable!.text = "lrc"
        
        return cell
    }
}


//extension ViewController : UITableViewDelegate {
//
//    
//    
//}
