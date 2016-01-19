//
//  Custom UIButton Touch Detection.swift
//  Scheduler
//
//  Created by Kyle Scholl on 1/7/16.
//  Copyright © 2016 Patronus LLC. All rights reserved.
//

import UIKit

class buttonTouch : UIButton {
	
	override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
		
		print("MyButton touch Began")
		// self.touchesBegan(touches, withEvent: event)
		super.touchesBegan(touches, withEvent: event)
		self.nextResponder()?.touchesBegan(touches, withEvent: event)
	}
}

