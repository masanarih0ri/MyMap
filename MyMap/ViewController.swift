//
//  ViewController.swift
//  MyMap
//
//  Created by 堀 恭子 on 2017/05/20.
//  Copyright © 2017年 MasanariHori. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController,UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Text Fieldのdelegate通知先を設定
        inputText.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var inputText: UITextField!
    
    @IBOutlet weak var dispMap: MKMapView!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //キーボードを閉じる
        textField.resignFirstResponder()
        //入力された文字を取り出す
        let searchKeyword = textField.text
        //入力された文字をデバッグエリアに表示
        print(searchKeyword)
        //デフォルト操作を行うのでtrueを返す
        return true
    }
    
}

