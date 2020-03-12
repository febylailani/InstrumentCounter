//
//  ViewController.swift
//  InstrumentCounter
//
//  Created by Handy Handy on 04/03/20.
//  Copyright © 2020 Handy Handy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var trombonePoint = 0 //versi mentor -> atau var totalTrombone : Int = 0 // = 0 adalah assignment operator
    var guitarPoint = 0
    var drumPoint = 0
    var pianoPoint = 0
    // bisa tulis var maxTrombon = 6
    
    @IBOutlet weak var tromboneScore: UILabel!
    @IBOutlet weak var guitarScore: UILabel!
    @IBOutlet weak var drumScore: UILabel!
    @IBOutlet weak var pianoScore: UILabel!
    @IBOutlet weak var tromboneInput: UITextField!
    @IBOutlet weak var labelInfo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func trombonButton(_ sender: UIButton) {
        if trombonePoint < 6 { // atau <= 5, karena mulai dari 0
            trombonePoint += 1 // totalTrombone = totalTrombone + 1, + --> Arithmetic operator; + addition, - substraction, / division, * multiplication, % modulus (biasa dipakai out even number)
            tromboneScore.text = "\(trombonePoint)"
        } else {
            showAlert(instrumentName: "Trombone")
        }
        
        // BASIC HANDLE OPTIONAL
//        if let inputTromboneValue = tromboneInput.text {
//            if inputTromboneValue == "" {
//                labelInfo.text = "You Have not set label yet"
//            } else {
//                labelInfo.text = "You Just Tapped \(inputTromboneValue)"
//            }
//        }
        
        let inputTromboneValue = tromboneInput.text ?? "Trombone"
        if inputTromboneValue == "" {
            labelInfo.text = "You Have not set label yet"
        } else {
             labelInfo.text = "You Just Tapped \(inputTromboneValue)"
        }
        
        
//        else {
//            labelInfo.text = "You Just Tapped Trombone"
//        }
    }
    @IBAction func guitarButton(_ sender: Any) {
        if guitarPoint < 6 { // atau <= 5, karena mulai dari 0
            guitarPoint += 1 // totalTrombone = totalTrombone + 1, + --> Arithmetic operator; + addition, - substraction, / division, * multiplication, % modulus (biasa dipakai out even number)
            guitarScore.text = "\(guitarPoint)"
        } else {
            showAlert(instrumentName: "Guitar")
        }
    }
    @IBAction func drumButton(_ sender: Any) {
    if drumPoint < 6 { // atau <= 5, karena mulai dari 0
        drumPoint += 1 // totalTrombone = totalTrombone + 1, + --> Arithmetic operator; + addition, - substraction, / division, * multiplication, % modulus (biasa dipakai out even number)
        drumScore.text = "\(drumPoint)"
    } else {
       showAlert(instrumentName: "Drum")
    }
    }
    @IBAction func pianoButton(_ sender: Any) {
    if pianoPoint < 6 { // atau <= 5, karena mulai dari 0
        pianoPoint += 1 // totalTrombone = totalTrombone + 1, + --> Arithmetic operator; + addition, - substraction, / division, * multiplication, % modulus (biasa dipakai out even number)
        pianoScore.text = "\(pianoPoint)"
    } else {
        showAlert(instrumentName: "Piano") // sebelumnya cuman : showAlert() doang, skrg alertnya bisa dinamain per instrumen secara detail
        }
    }
    //kalau banyak instrumen = maka code alertnya harus dibuat trs menerus, tanpa merubah apa pun (waste energy), ada yang bisa menyatukan --> function (punya sekumpulan perintah dan berurutan)
    //function ditulis di luar action dan viewDidload
    
    func showAlert(instrumentName: String) { //sebelumnya cuma showAlert() , skrg jadi ditambah instrumentName : String
        //atau bisa menjadi :
        //func showAlert(_instrumentName: String)
        //jika pakai _ maka ditampilan else menjadi : showAlert("piano")
        //let alert = UIAlertController(title: "Message", message: "Your \(instrumentName) reach the max value", preferredStyle: .alert)
        //let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        //alert.addAction(action)
        //self.present(alert, animated: true, completion: nil)
        let alert = UIAlertController(title: "Message", message: "Your \(instrumentName) reach the max value", preferredStyle: .alert)
        //instrumentName cuman berfungsi di function
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
}

