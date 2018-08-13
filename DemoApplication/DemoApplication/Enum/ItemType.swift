//
//  ItemType.swift
//  DemoApplication
//
//  Created by Tomosuke Okada on 2018/06/25.
//  Copyright © 2018年 TomosukeOkada. All rights reserved.
//

import UIKit

enum ItemType: Int {
    case dribbble
    case facebook
    case googlePlus
    case pinterest
    case reddit
    case skype
    case tumblr
    case twitter
    case wordPress
    case youtube
    
    var image: UIImage {
        switch self {
        case .dribbble:
            return #imageLiteral(resourceName: "service_dribbble")
        case .facebook:
            return #imageLiteral(resourceName: "service_facebook")
        case .googlePlus:
            return #imageLiteral(resourceName: "service_google+")
        case .pinterest:
            return #imageLiteral(resourceName: "service_pinterest")
        case .reddit:
            return #imageLiteral(resourceName: "service_reddit")
        case .skype:
            return #imageLiteral(resourceName: "service_skype")
        case .tumblr:
            return #imageLiteral(resourceName: "service_tumblr")
        case .twitter:
            return #imageLiteral(resourceName: "service_twitter")
        case .wordPress:
            return #imageLiteral(resourceName: "service_wordpress")
        case .youtube:
            return #imageLiteral(resourceName: "service_youtube")
        }
    }
    
    var title: String {
        switch self {
        case .dribbble:
            return "Dribbble"
        case .facebook:
            return "FaceBook"
        case .googlePlus:
            return "Google+"
        case .pinterest:
            return "Pinterest"
        case .reddit:
            return "Reddit"
        case .skype:
            return "Skype"
        case .tumblr:
            return "tumblr"
        case .twitter:
            return "Twitter"
        case .wordPress:
            return "WordPress"
        case .youtube:
            return "Youtube"
        }
    }
    
    var url: URL {
        switch self {
        case .dribbble:
            return URL(string: "https://dribbble.com/")!
        case .facebook:
            return URL(string: "https://www.facebook.com/")!
        case .googlePlus:
            return URL(string: "https://plus.google.com/discover")!
        case .pinterest:
            return URL(string: "https://www.pinterest.com")!
        case .reddit:
            return URL(string: "https://www.reddit.com/")!
        case .skype:
            return URL(string: "https://www.skype.com/")!
        case .tumblr:
            return URL(string: "https://www.tumblr.com/")!
        case .twitter:
            return URL(string: "https://twitter.com/")!
        case .wordPress:
            return URL(string: "https://wordpress.org/")!
        case .youtube:
            return URL(string: "https://www.youtube.com/")!
        }
    }
    
    static var allItems: [ItemType] {
        return [.dribbble, .facebook, googlePlus, .pinterest, .reddit, .skype, .tumblr, .twitter, .wordPress, .youtube]
    }
}
