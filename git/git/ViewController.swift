//
//  ViewController.swift
//  git
//
//  Created by tosy on 23.10.22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private var alarmClock: UILabel!
    //    @IBOutlet weak var progressLine: UIProgressView!
    @IBOutlet private var slider: UISlider!
    
    @IBOutlet private var datePicker: UIDatePicker!
    
    @IBOutlet private var setAlarmButton: UIButton!
    
    @IBOutlet private var timeLabel: UILabel!
    
    @IBOutlet private var switchButton: UISwitch!
    
    @IBOutlet private var clearButton: UIButton!
    
    @IBOutlet private var progress: UIProgressView!
    
    @IBOutlet private var volumelevelText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      main()
    }
    
    @IBAction func slider(_ sender: Any) {
        progress.setProgress((slider.value) / 100, animated: true)
        
        volumelevelText.text = String("Volume level \(Int(slider.value.rounded(.down)))% ")
    }
    
    @IBAction private func datePicker(_ sender: UIDatePicker) {}
    
    @IBAction private func switchButton(_ sender: Any) {
        timeLabel.isHidden.toggle()
        slider.isHidden.toggle()
        datePicker.isHidden.toggle()
        setAlarmButton.isHidden.toggle()
        clearButton.isHidden.toggle()
        progress.isHidden.toggle()
        volumelevelText.isHidden.toggle()
    }
    
    @IBAction private func clearButton(_ sender: Any) {
        timeLabel.text = "00:00"
    }
    
    @IBAction private func setss(_ sender: Any) {
        let timeLeft = datePicker.date
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        let formatteddate = formatter.string(from: timeLeft)
        timeLabel.text = formatteddate
    }
    
    private func main () {
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .green
        slider.maximumTrackTintColor = .gray
        volumelevelText.text = String("Volume level \(Int(slider.value.rounded(.down)))% ")
        
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        let formatteddate = formatter.string(from: Date())
        timeLabel.text = formatteddate
        progress.setProgress(0, animated: true)
    }
}
