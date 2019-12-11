//
//  ViewController.swift
//  baitapvenhabuoi17
//
//  Created by Dương chãng on 12/8/19.
//  Copyright © 2019 macshop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
       
    
    let scrollview2: UIScrollView={
        let scrollView2 = UIScrollView()
        scrollView2.frame = CGRect(x: 0, y: 295, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height - 280)
        return scrollView2
    }()
    var image2: [UIImage] = []
    
    let scrollview: UIScrollView = {
        let scrollview = UIScrollView()
        scrollview.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height:UIScreen.main.bounds.size.height - 600 )
        return scrollview
    }()
    var images: [UIImage] = []
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image2 = [UIImage(named: "1"), UIImage(named: "2"), UIImage(named: "3"), UIImage(named: "4"), UIImage(named: "5"), UIImage(named: "6"), UIImage(named: "7")] as! [UIImage]
        
        
        images = [UIImage(named: "1"), UIImage(named: "2"), UIImage(named: "3"), UIImage(named: "4"), UIImage(named: "5"), UIImage(named: "6"), UIImage(named: "7")] as! [UIImage]
        
        
        view.addSubview(scrollview)
        setupImages(images)
        view.addSubview(scrollview2)
        setupImage2(image2)
        
    }
    func setupImage2(_ arrs: [UIImage]) {
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height - 280
        for i in 0..<arrs.count{
            let imageView2 = UIImageView(frame: CGRect(x: 0, y: height * CGFloat(i), width: width, height: height))
            imageView2.image = arrs[i]
            scrollview2.addSubview(imageView2)
        }
        
    }
    
    
    
    func setupImages(_ arr: [UIImage]) {
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height - 600
        for i in 0..<arr.count{
            let imageView = UIImageView(frame: CGRect(x: width * CGFloat(i), y: 0, width: width, height: height))
            imageView.image = arr[i]
            scrollview.addSubview(imageView)
        }
        scrollview2.contentSize = CGSize(width: width, height: scrollview2.frame.height * CGFloat(arr.count))
        scrollview.contentSize = CGSize(width: scrollview.frame.width * CGFloat(arr.count), height: height)
    }
    
    
}

