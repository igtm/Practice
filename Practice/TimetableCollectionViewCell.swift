//
// Created by Tomokatsu Iguchi on 2018/05/31.
// Copyright (c) 2018 Tomokatsu Iguchi. All rights reserved.
//

import UIKit
import SnapKit

class TimetableCollectionViewCell: UICollectionViewCell {

    override init(frame: CGRect) {
        super.init(frame: frame)
        // courseName.snp.makeConstraints { $0.top.equalToSuperview().offset(20) }

        self.addSubview(courseName)
        // self.layer.cornerRadius = frame.height / 2.0 丸くする
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var courseName: UILabel = {
       let courseName = UILabel()
        courseName.text = "経営戦略論A"
        courseName.frame = self.bounds
        return courseName
    }()

}
