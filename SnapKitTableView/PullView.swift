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

    let photoview = UIImageView(image: UIImage(systemName: "gamecontroller.fill"))
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white

        label.backgroundColor = UIColor.orange
        label.text = "Привет 👋"
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 40)
        self.view.addSubview(photoview)
        self.view.addSubview(label)
        
        photoview.snp.makeConstraints { (make) -> Void in
            make.width.equalTo(200)
            make.height.equalTo(200)
            make.center.equalToSuperview()
        }
        
        label.snp.makeConstraints { (make) -> Void in
//            make.width.equalTo(200)
            make.height.equalTo(40)
            make.top.equalTo(photoview.snp_bottomMargin).offset(50)
            make.left.right.equalToSuperview().inset(30)
//            make.left.right.equalTo(v)

//
//            make.left.equalTo(photoview.snp.left).offset(-50)
//            make.width.equalTo(200)
//            make.height.equalTo(40)
//            make.top.equalTo(photoview.snp.bottom)
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) { // нажатие
        self.dismiss(animated: true, completion: nil)
    }
}
