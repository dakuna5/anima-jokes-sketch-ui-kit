//
//  APAnimaJokesSketchManager.swift
//  AnimaJokesSketch
//
//  Created by alexeyweb11@gmail.com on 02/12/2016, using AnimaApp.com, under MIT license.
//  Copyright © 2016 Company Name. All rights reserved.
//

import UIKit


/** APAnimaJokesSketchManager gives an easy access to Anima code */
public class APAnimaJokesSketchManager : NSObject {

    public static let sharedInstance = APAnimaJokesSketchManager();

    public static func shared() -> APAnimaJokesSketchManager {
        return self.sharedInstance
    }

    /**
    Holds the theme as configured in Anima.
    On runtime, you may change its values and call APAnimaJokesSketchManager.sharedInstance().theme.apply()
    **/
    public var theme: ANTheme?

    override init() {
        super.init()
        self.setupTheme()
    }

    public func animaStoryboad() -> UIStoryboard {
        return UIStoryboard(name: "AnimaJokesSketchUIKit", bundle:Bundle(for: type(of: self).self));
    }

    public func initialVC() -> UIViewController {
        return self.animaStoryboad().instantiateInitialViewController()!;
    }

    internal func setupTheme() -> Void {
        self.theme = ANTheme()
        self.theme!.navBarColor          = UIColor(red: 0.98, green:0.98, blue:0.98, alpha:1.0);
        self.theme!.navBarButtonsColor   = UIColor(red: 0.0, green:0.42, blue:1.0, alpha:1.0);
        self.theme!.navBarTitleColor     = UIColor(red: 0.0, green:0.0, blue:0.0, alpha:1.0);
        self.theme!.navBarTitleFontSize  = 16;
        self.theme!.navBarIsTranslucent  = false;
    }

}