//
//  ViewController.swift
//  git
//
//  Created by tosy on 23.10.22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var alarmClock: UILabel!
    //    @IBOutlet weak var progressLine: UIProgressView!
    @IBOutlet var slider: UISlider!
    
    @IBOutlet var datePicker: UIDatePicker!
    
    @IBOutlet var setAlarmButton: UIButton!
    
    @IBOutlet var timeLabel: UILabel!
    
    @IBOutlet var switchButton: UISwitch!
    
    @IBOutlet var clearButton: UIButton!
    
    @IBOutlet var progress: UIProgressView!
    
    @IBOutlet var volumelevelText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .green
        slider.maximumTrackTintColor = .gray
        volumelevelText.text = String("Volume level \(Int(slider.value.rounded(.down)))% ")
        
        //        let timeLeft = datePicker.date
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        let formatteddate = formatter.string(from: Date())
        timeLabel.text = formatteddate
        progress.setProgress(0, animated: true)
    }
    
    @IBAction func slider(_ sender: Any) {
        progress.setProgress((slider.value) / 100, animated: true)
        
        volumelevelText.text = String("Volume level \(Int(slider.value.rounded(.down)))% ")
    }
    
    @IBAction func datePicker(_ sender: UIDatePicker) {}
    
    @IBAction func switchButton(_ sender: Any) {
        timeLabel.isHidden.toggle()
    }
    
    @IBAction func clearButton(_ sender: Any) {
        timeLabel.text = "00:00"
    }
    
    @IBAction func setss(_ sender: Any) {
        let timeLeft = datePicker.date
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        let formatteddate = formatter.string(from: timeLeft)
        timeLabel.text = formatteddate
    }
    
}
