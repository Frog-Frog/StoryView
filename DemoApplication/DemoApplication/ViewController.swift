//
//  ViewController.swift
//  DemoApplication
//
//  Created by Tomosuke Okada on 2018/05/03.
//  Copyright © 2018年 TomosukeOkada. All rights reserved.
//

import UIKit
import StoryView

class ViewController: UIViewController {
    
    @IBOutlet weak var storyView: StoryView! {
        willSet {
            newValue.delegate = self
            newValue.dataSource = self
        }
    }
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: StoryViewDataSource {
    func numberOfItems(in storyView: StoryView) -> Int {
        return ItemType.allItems.count
    }
    
    func storyView(_ storyView: StoryView, storyForItem item: Int) -> Story {
        let item = ItemType(rawValue: item)!
        let story = Story(image: item.image, title: item.title)
        return story
    }
}

extension ViewController: StoryViewDelegate {
    
    func storyView(_ storyView: StoryView, tappedCellAt item: Int) {
        let service = ItemType.allItems[item]
        self.webView.loadRequest(URLRequest(url: service.url))
    }
    
    func storyView(_ storyView: StoryView, longPressedCellAt item: Int) {
        let alertController = UIAlertController(title: "Test", message: "Test Actions", preferredStyle: .actionSheet)
        
        let openAction = UIAlertAction(title: "Open", style: .default, handler: { _ in
            self.webView.loadRequest(URLRequest.init(url: ItemType.allItems[item].url))
        })
        alertController.addAction(openAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
}

