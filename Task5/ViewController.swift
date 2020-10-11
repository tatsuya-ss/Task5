//
//  ViewController.swift
//  Task5
//
//  Created by 坂本龍哉 on 2020/10/10.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var calcButton: UIButton!
    @IBOutlet private weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //selfはかかなくていいとのこと
        //UIKeyboardTypeもかかなくて良い
        textField1.keyboardType = .numberPad
        textField2.keyboardType = .numberPad
        
    }
    
    @IBAction func calcAction(_ sender: Any) {
        
        guard let num1 = Double(textField1.text!)else{
            presentAlert(message: "割られる数を入力してください")
            return
        }
        guard let num2 = Double(textField2.text!) else {
                    presentAlert(message: "割る数を入力してください")
                    return
                }
                guard num2 != 0 else {
                    presentAlert(message: "割る数には０を入力してください")
                    return
                }
                // ! を使わなくても良くなった
                resultLabel.text = String(num1 / num2)
            }
    
    
    private func presentAlert(message:String){
        let alert = UIAlertController(title: "課題５", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
        
    }
//        let num1 = Double(textField1.text!)
//        let num2 = Double(textField2.text!)
//        let dialog1 = UIAlertController(title: "課題５", message: "割られる数を入力してください", preferredStyle: .alert)
//        dialog1.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
//
//        let dialog2 = UIAlertController(title: "課題５", message: "割る数を入力してください", preferredStyle: .alert)
//        dialog2.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
//
//        let dialog3 = UIAlertController(title: "課題５", message: "割る数には０を入力してください", preferredStyle: .alert)
//        dialog3.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
//
//
//        if num1 == nil && num2 != nil || num1 == nil && num2 == nil{
//
//            self.present(dialog1, animated: true, completion: nil)
//
//        }else if num2 == nil && num1 != nil{
//
//            self.present(dialog2, animated: true, completion: nil)
//
//        }else if num2 == 0 {
//
//            self.present(dialog3, animated: true, completion: nil)
//
//        }else{
//            resultLabel.text = String(num1! / num2!)
//
//        }
        
    }
    

