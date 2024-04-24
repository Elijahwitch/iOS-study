//
//  ViewController.swift
//  PickerView
//
//  Created by Joon Ho Gwak on 3/18/24.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    // 상수
    let MAX_ARRAY_NUM = 10 // 리스트(배열)의 크기
    let PICKER_VIEW_COLUMN = 1 //
    let PICKER_VIEW_HEIGHT:CGFloat = 80 // Picker의 높이
    
    // 이미지 배열을 위한 변수
    var imageArray = [UIImage?]()
    
    var imageFileName = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg",
                        "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg"]
    
    // 피커를 보여주는 변수
    @IBOutlet var pickerimage: UIPickerView!
    
    @IBOutlet var IBlImageFileName: UILabel! // 파일 이름을 보여주는 변수

    @IBOutlet var imageView: UIImageView! // 이미지를 보여주는 변수
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for i in 0 ..< MAX_ARRAY_NUM {
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
            
        }
        
        IBlImageFileName.text = imageFileName[0]
        
        imageView.image = imageArray[0]
        
    }
    
    
    
    // Delegate method
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return PICKER_VIEW_COLUMN
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return imageFileName.count
    }
    
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return imageFileName[row]
//    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        let imageView = UIImageView(image: imageArray[row])
        
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
        
        return imageView
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return PICKER_VIEW_HEIGHT
    }
    
    // 사용자가 피커로 ㅌ=
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        IBlImageFileName.text = imageFileName[row]
        imageView.image = imageArray[row]
    }


}

