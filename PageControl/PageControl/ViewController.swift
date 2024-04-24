//
//  ViewController.swift
//  PageControl
//
//  Created by Joon Ho Gwak on 4/9/24.
//

import UIKit

class ViewController: UIViewController {
    
    // 이미지 뷰와 페이지 컨트롤 기능 초기화
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var pageControl: UIPageControl!
    
    // 이미지 파일들을 리스트 형태의 변수로 메모리에 할당.
    var images = ["01.jpg", "02.jpg", "03.jpg", "04.jpg", "05.jpg", "06.jpg"]
    
    // pageControl -> viewDidLoad().
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pageControl.numberOfPages = images.count
        
        pageControl.currentPage = 0
        
        pageControl.pageIndicatorTintColor = UIColor.gray
        
        pageControl.currentPageIndicatorTintColor = UIColor.black
        
        imgView.image = UIImage(named: images[0])
        
    }
    // 페이지가 바뀔때 작동
    @IBAction func pageChange(_ sender: UIPageControl) {
        // 현재 페이지에 해당하는 이미지를 imgView에 할당.
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }
    
}

