//
//  FadingAnimations.swift
//  Testing
//
//  Created by Kyle Scholl on 12/16/15.
//  Copyright © 2015 Patronus LLC. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
	
	/***************************************************
	Fade in a view with a duration
		- parameter duration: custom animation duration
	***************************************************/
	
	func fadeIn(duration duration: NSTimeInterval = 1.0) {
		UIView.animateWithDuration(duration, animations: {
			self.alpha = 1.0
		})
	}
	
	/***************************************************
	Fade out a view with a duration
		- parameter duration: custom animation duration
	***************************************************/
	
	func fadeOut(duration duration: NSTimeInterval = 1.0) {
		UIView.animateWithDuration(duration, animations: {
			self.alpha = 0.0
		})
	}
}