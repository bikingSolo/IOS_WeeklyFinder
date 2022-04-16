//
//  ViewController.swift
//  WeeklyFiner
//
//  Created by Лев on 15.07.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var dayTF: UITextField!
    
    @IBOutlet weak var monthTF: UITextField!
    
    @IBOutlet weak var yearTF: UITextField!
    
    
    @IBOutlet weak var resulLabel: UILabel!
    
    @IBAction func findDay(_ sender: UIButton) {
        
        guard let day = dayTF.text, let month = monthTF.text, let year = yearTF.text else { return }
        
        let calendar = Calendar.current
        var dateComponents = DateComponents.init()
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        dateFormatter.dateFormat = "EEEE"
        
        guard let date = calendar.date(from: dateComponents) else { return }
        
        let weekday = dateFormatter.string(from: date)
        
        let capWeekday = weekday.capitalized
        
        resulLabel.text = capWeekday
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

