//
//  ViewController.swift
//  Counter
//
//  Created by adam west on 14.03.23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var meaningOfCounter: UILabel!
    var count = 0
    
    @IBAction func IncresingByOne(_ sender: Any) {
        count += 1
        meaningOfCounter.text = "Counter value: \(count)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


}

