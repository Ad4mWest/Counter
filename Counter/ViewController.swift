//
//  ViewController.swift
//  Counter
//  Created by Adam West on 14.03.23.

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        historyOfChanges.isHidden = true
        func newFormatDate() -> String {
            let dateNow = Date()
            let dateFormatter = DateFormatter()
            dateFormatter.locale = Locale(identifier: "en_US")
            dateFormatter.dateFormat = "d MMM yy - HH:mm:ss"
            return dateFormatter.string(from: dateNow)
        }
    }
    
    @IBOutlet weak private var meaningOfCounter: UILabel!
    @IBOutlet weak private var historyOfChanges: UITextView!
    private var count = 0
    
    private var newFormatDate: String {
        func newFormatDate() -> String {
            let dateNow = Date()
            let dateFormatter = DateFormatter()
            dateFormatter.locale = Locale(identifier: "en_US")
            dateFormatter.dateFormat = "d MMM yy - HH:mm:ss"
            return dateFormatter.string(from: dateNow)
        }
        return newFormatDate()
    }
    
    @IBAction private func increasingByOne(_ sender: UIButton) {
        count += 1
        sender.tintColor = .white
        historyOfChanges.isHidden = false
        meaningOfCounter.textColor = .red
        meaningOfCounter.text = "\(count)"
        historyOfChanges.text += "\n\(newFormatDate) Increase"
    }
    @IBAction private func decreaseByOne(_ sender: UIButton) {
        if count > 0 {
            count -= 1
            
            sender.tintColor = .white
            historyOfChanges.isHidden = false
            meaningOfCounter.textColor = .blue
            meaningOfCounter.text = "\(count)"
            historyOfChanges.text += "\n\(newFormatDate) Decrease"
        } else {
            historyOfChanges.isHidden = false
            sender.tintColor = .white
            meaningOfCounter.textColor = .green
            meaningOfCounter.text = "\(count)"
            historyOfChanges.text += "\n\(newFormatDate) SubZero"
        }
    }
    @IBAction private func resetCountValue(_ sender: UIButton) {
        count = 0
        changeColorOfButton(sender)
        sender.tintColor = .white
        historyOfChanges.isHidden = false
        meaningOfCounter.textColor = .white
        meaningOfCounter.text = "\(count)"
        historyOfChanges.text += "\n\(newFormatDate) Reset"
    }
    
    @IBAction func changeColorOfButton(_ sender: UIButton) {
        switch sender.tag {
        case 0: sender.tintColor = .red
        case 1 where count <= 0: sender.tintColor = .green
        case 1 where count > 0: sender.tintColor = .blue
        case 2: sender.tintColor = .white
        default: sender.tintColor = .white
        }
    }
    @IBAction func changeColorOfButtonToWhite(_ sender: UIButton) {
        switch sender.tag {
        case 0: sender.tintColor = .white
        case 1 where count <= 0: sender.tintColor = .white
        case 1 where count > 0: sender.tintColor = .white
        case 2: sender.tintColor = .white
        default: sender.tintColor = .white
        }
    }
}
