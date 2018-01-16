//
//  FirstViewController.swift
//  testApp103
//
//  Created by Sang Ho Hong on 2018. 1. 15..
//  Copyright © 2018년 Sang Ho Hong. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var list = ["My Info", "Setting", "General"]

}


extension FirstViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        
        cell.textLabel?.text = "\(list[indexPath.row])"
        return cell
    }
    
    
}


