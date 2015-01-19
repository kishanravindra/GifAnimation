//
//  ViewController.swift
//  GifAnimation
//
//  Created by Ravindra Kishan on 18/01/15.
//  Copyright (c) 2015 Ravindra Kishan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let image:UIImage = UIImage (named:"flat-clockf.gif")!
        var data:NSData = AnimatedGIFImageSerialization.animatedGIFDataWithImage(image, duration:0, loopCount:0, error: nil)
        imageView.image = UIImage(data:data)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

