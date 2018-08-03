//
//  ViewsTableViewController.swift
//  AppTest1
//
//  Created by Abraham VG on 03/08/18.
//  Copyright © 2018 Web India Solutions. All rights reserved.
//

import UIKit

class DataSource: NSObject, UITableViewDataSource, UITableViewDelegate {
   
    
    
    var items : [String] = ["GRE Test Structure ","GRE Score "]
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath) as! MainTableViewCell
      //cell.customCell01.text = items[indexPath.row]
        return cell
    }
    
}


class ViewsTableViewController: UITableViewController {
    
    @IBOutlet weak var insideTableView: UITableView!
    var dataSource = DataSource()

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewDidLayoutSubviews() {
        insideTableView.delegate = dataSource
        insideTableView.dataSource = dataSource
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        
        if indexPath.row == 0 {
            return insideTableView.frame.height
        }
       return 100
    }

   
    
}


