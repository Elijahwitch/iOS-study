//
//  ViewController.swift
//  DatePicker
//
//  Created by Joon Ho Gwak on 3/14/24.
//

import UIKit

class ViewController: UIViewController {
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0

    @IBOutlet var IblPickerTime: UILabel!
    @IBOutlet var IBlCurrentTime: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        // Do any additional setup after loading the view.
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender // parameter access to constant 'datePickerView'
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-mm-dd HH:mm EEE"
        IblPickerTime.text = "선택시간 : " + formatter.string(from: datePickerView.date)
    }
    @objc func updateTime() {
        IBlCurrentTime.text = String(count)
        count = count + 1
        
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        IBlCurrentTime.text = "현재시간: " + formatter.string(from: date as Date)
    }
    
}

