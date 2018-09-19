//
//  ViewController.swift
//  GCD-study
//
//  Created by Ada 2018 on 9/19/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        doSyncWork()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    func doSyncWork() {
        print ("** INI doSyncWork **")
        let background = DispatchQueue.global()
        background.sync {
            for _ in 1...4 {print("Light") }
        }
        for _ in 1...4 {print ("Heavy")}
        print ("** FIM doSyncWork ** \n\n\n")    }
    
    
    func 


}

