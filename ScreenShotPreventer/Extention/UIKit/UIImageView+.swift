//
//  UIImageView+.swift
//  ScreenShotPreventer
//
//  Created by 滝野翔平 on 2023/03/28.
//

import UIKit

extension UIImageView {
    
    /// スクリーンショットを撮られた時に、画像を消す処理
    func preventScreenShot() {
        DispatchQueue.main.async {
            let field = UITextField()
            field.isSecureTextEntry = true
            self.addSubview(field)
            
            // ビルドスキームごとに使用するかどうかを判別する場合ここで条件付きコンパイルディレクティブを使用する
            
            field.translatesAutoresizingMaskIntoConstraints = false
            field.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
            field.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
            self.layer.superlayer?.addSublayer(field.layer)
            field.layer.sublayers?.first?.addSublayer(self.layer)
            
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
            label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
            
            label.center = self.center
            label.tintColor = .white
            label.text = "スクショ禁止だひょん！！！"
            
            label.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview(label)

            label.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        }
    }
}

