//
//  ViewController.swift
//  Example
//
//  Created by Kofktu on 2016. 9. 21..
//  Copyright © 2016년 Kofktu. All rights reserved.
//

import UIKit
import KUITagLabel

class ViewController: UIViewController {

    @IBOutlet weak var tagLabel: KUITagLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let config = KUITagConfig(insets: UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 5.0),
                                  titleColor: UIColor.magenta,
                                  titleFont: UIFont.boldSystemFont(ofSize: 15.0),
                                  titleInsets: UIEdgeInsets(top: 2.0, left: 6.0, bottom: 2.0, right: 6.0),
                                  backgroundColor: UIColor.yellow,
                                  cornerRadius: 4.0,
                                  borderWidth: 0.0,
                                  borderColor: nil,
                                  backgroundImage: nil)
        
//        let config = KUITagConfig(titleColor: UIColor.blueColor(),
//                                  titleFont: UIFont.systemFontOfSize(15.0),
//                                  backgroundColor: UIColor.yellowColor())
//
        
        tagLabel.lineSpace = 10.0
        
        tagLabel.onSelectedHandler = { [weak self] (tag) in
            print("tag : \(tag.title)")
            
            if tag.title == "#clean" {
                self?.tagLabel.removeAll()
                self?.tagLabel.refresh()
            }
        }
        
        tagLabel.onTouchEmptySpaceHandler = { [weak self] () in
            print("empty")
        }
        
        tagLabel.add(tag: KUITag(title: "#테스트", config: config))
        tagLabel.add(tag: KUITag(title: "#테스트1", config: config))
        tagLabel.add(tag: KUITag(title: "#테스트2", config: config))
        tagLabel.add(tag: KUITag(title: "테스트3", config: config))
        tagLabel.add(tag: KUITag(title: "#테스트4", config: config))
        tagLabel.add(tag: KUITag(title: "#테스트5", config: config))
        tagLabel.add(tag: KUITag(title: "테스트6", config: config))
        tagLabel.add(tag: KUITag(title: "#테스트7", config: config))
        tagLabel.add(tag: KUITag(title: "#테스트8", config: config))
        tagLabel.add(tag: KUITag(title: "테스트9", config: config))
        tagLabel.add(tag: KUITag(title: "#테스트10", config: config))
        tagLabel.add(tag: KUITag(title: "#테스트11", config: config))
        tagLabel.add(tag: KUITag(title: "#clean", config: config))
        tagLabel.refresh()
    }

}
