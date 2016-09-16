//
//  SecondViewController.swift
//  TableViewExample
//
//  Created by Horacio Garza on 16/09/16.
//  Copyright © 2016 HGarz Studios. All rights reserved.
//

import Foundation
import UIKit

public class SecondViewController: UIViewController{

    @IBOutlet var label: UILabel!
    var number:Int!

    public override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "You've clicked the cell #\(number)"
    }
    
    
    
}
