//
//  ViewController.swift
//  BullsEye
//
//  Created by c.toan on 19.07.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    var currentValue: Int = 50
    var targetValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
    }

    @IBAction func showAlert() {
//        var difference: Int
//
//        if currentValue > targetValue {
//            difference = currentValue - targetValue
//        }else if targetValue > currentValue {
//            difference = targetValue - currentValue
//        }else {
//            difference = 0
//        }
        
        let difference = abs(currentValue - targetValue)
        
        let message = "The value of the slider is: \(currentValue)" +
        "\nThe target value is: \(targetValue)" + "\nThe defference is: \(difference)"
        
        let alert = UIAlertController(
            title: "Hello World!",
            message: message,
            preferredStyle: .alert)
        
        let action = UIAlertAction(
        title: "OK",
        style: .default,
        handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        startNewRound()
    }
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
    
    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
    }
    
}

