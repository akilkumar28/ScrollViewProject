//
//  ViewController.swift
//  ScrollViewProject
//
//  Created by AKIL KUMAR THOTA on 12/20/16.
//  Copyright © 2016 AKIL KUMAR THOTA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollview: UIScrollView!
    
    var images = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
    }
    override func viewDidAppear(_ animated: Bool) {
        let scrollWidth = scrollview.frame.size.width
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX : CGFloat = 0.0
            
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            
            scrollview.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: (view.frame.size.height/2) - 75, width: 150, height: 150)
            
        }
        
        scrollview.contentSize = CGSize(width: scrollWidth * CGFloat(images.count), height: scrollview.frame.size.height)
        scrollview.clipsToBounds = false
        
        view.addGestureRecognizer(scrollview.panGestureRecognizer)
    }

   

}

