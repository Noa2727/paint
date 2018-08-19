//
//  ViewController.swift
//  paint
//
//  Created by Noa Naider on 5.8.2018.
//  Copyright © 2018 Noa Naider. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funBoard: funboard!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func Clearall(_ sender: Any) {
        funBoard.clearBoard()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

