//
//  ViewController.swift
//  Counter
//
//  Created by adam west on 14.03.23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        meaningOfCounter.isHidden = true
        historyOfChanges.isHidden = true
    }
    @IBOutlet weak private var meaningOfCounter: UILabel!
    @IBOutlet weak private var historyOfChanges: UITextView!

    private var count = 0
    private func newFormatDate() -> String {
        let dateNow = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US")
        dateFormatter.dateFormat = "d MMM yy - HH:mm:ss"
        return dateFormatter.string(from: dateNow)
    }
    
    @IBAction private func incresingByOne(_ sender: Any) {
        count += 1
        
        meaningOfCounter.isHidden = false
        historyOfChanges.isHidden = false

        meaningOfCounter.textColor = .red
        meaningOfCounter.text = "\(count)"
        historyOfChanges.text += "\n \(newFormatDate()) value changed to +1"
    }
    @IBAction private func decreaseByOne(_ sender: Any) {
        if count > 0 {
            count -= 1
            
            meaningOfCounter.isHidden = false
            historyOfChanges.isHidden = false

            meaningOfCounter.textColor = .blue
            meaningOfCounter.text = "\(count)"
            historyOfChanges.text += "\n \(newFormatDate()) value changed to -1"
        } else {
            
            meaningOfCounter.isHidden = false
            historyOfChanges.isHidden = false

            meaningOfCounter.textColor = .green
            meaningOfCounter.text = "\(count)"
            historyOfChanges.text += "\n \(newFormatDate()) attempt to reduce the counter value below 0"
        }
    }
    @IBAction private func resetCountValue(_ sender: Any) {
        count = 0
        
        meaningOfCounter.isHidden = false
        historyOfChanges.isHidden = false

        meaningOfCounter.textColor = .orange
        meaningOfCounter.text = "\(count)"
        historyOfChanges.text += "\n \(newFormatDate()) value reset"
    }
}

