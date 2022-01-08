//
//  PullView.swift
//  SnapKitTableView
//
//  Created by Kirill Drozdov on 08.01.2022.
//

import Foundation


import UIKit
import SnapKit

class PullView: UIViewController {

    let photoview = UIView()
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white

        photoview.backgroundColor = UIColor.red
        label.text = "Hi"
        label.backgroundColor = UIColor.orange
        self.view.addSubview(photoview)
        self.view.addSubview(label)
        
        photoview.snp.makeConstraints { (make) -> Void in
            make.width.equalTo(100)
            make.height.equalTo(100)
            make.center.equalTo(self.view)
        }
        
        label.snp.makeConstraints { (make) -> Void in
            make.left.equalTo(photoview.snp.left).offset(50)
            make.width.equalTo(200)
            make.height.equalTo(40)
            make.top.equalTo(photoview.snp.bottom)
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.dismiss(animated: true, completion: nil)
    }
}
