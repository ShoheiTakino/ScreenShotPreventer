//
//  ViewController.swift
//  ScreenShotPreventer
//
//  Created by 滝野翔平 on 2023/03/28.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlet
    
    @IBOutlet private weak var imageView: UIImageView! {
        didSet {
            imageView.preventScreenShot()
        }
    }
}

