//
//  AppDelegate.swift
//  youtube-parser
//
//  Created by Toygar Dündaralp on 7/5/15.
//  Copyright (c) 2015 Toygar Dündaralp. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    func applicationDidFinishLaunching(_ application: UIApplication) {
        let testURL = NSURL(string: "https://www.youtube.com/watch?v=swZJwZeMesk")!
        Youtube.h264videosWithYoutubeURL(youtubeURL: testURL) { (videoInfo, error) -> Void in
            if let videoURLString = videoInfo?["url"] as? String,
                let videoTitle = videoInfo?["title"] as? String {
                print("\(videoTitle)")
                print("\(videoURLString)")
            }
        }
    }
}
