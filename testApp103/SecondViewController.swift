//
//  SecondViewController.swift
//  testApp103
//
//  Created by Sang Ho Hong on 2018. 1. 15..
//  Copyright © 2018년 Sang Ho Hong. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var dict = [String: Int]()
    var keys: [String]?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let list = keys {
            return list.count
        } else {
            return 0
        }
        //위와 같은 의미
        //return keys?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "cell2")!
        
        let targetKey = keys?[indexPath.row]
        let targetValue = dict[targetKey]
        cell2.textLabel?.text = targetValue
        
        return cell2
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

