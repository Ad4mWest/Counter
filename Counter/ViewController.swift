//
//  ViewController.swift
//  Counter
//
//  Created by adam west on 14.03.23.
//

import UIKit

class ViewController: UIViewController {
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
        meaningOfCounter.textColor = .red
        meaningOfCounter.text = "Counter value: \(count)"
        historyOfChanges.text += "\n [\(newFormatDate())]: value changed to +1"
    }
    @IBAction private func decreaseByOne(_ sender: Any) {
        if count > 0 {
            count -= 1
            meaningOfCounter.textColor = .blue
            meaningOfCounter.text = "Counter value: \(count)"
            historyOfChanges.text += "\n [\(newFormatDate())]: value changed to -1"
        } else {
            meaningOfCounter.textColor = .green
            meaningOfCounter.text = "Counter value: \(count)"
            historyOfChanges.text += "\n [\(newFormatDate())]: attempt to reduce the counter value below 0"
        }
    }
    @IBAction private func resetCountValue(_ sender: Any) {
        count = 0
        meaningOfCounter.textColor = .orange
        meaningOfCounter.text = "Counter value: \(count)"
        historyOfChanges.text += "\n [\(newFormatDate())]: value reset"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


}

