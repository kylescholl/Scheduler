//
//  Custom Colors.swift
//  Scheduler
//
//  Created by Kyle Scholl on 2/10/16.
//  Copyright © 2016 Patronus LLC. All rights reserved.
//

import UIKit

extension UIColor{
	///*
	public convenience init?(hexString: String) {
		let r, g, b, a: CGFloat
		
		if hexString.hasPrefix("#") {
			let start = hexString.startIndex.advancedBy(1)
			let hexColor = hexString.substringFromIndex(start)
			
			if hexColor.characters.count == 8 {
				let scanner = NSScanner(string: hexColor)
				var hexNumber: UInt64 = 0
				
				if scanner.scanHexLongLong(&hexNumber) {
					r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
					g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
					b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
					a = CGFloat(hexNumber & 0x000000ff) / 255
					
					self.init(red: r, green: g, blue: b, alpha: a)
					return
				}
			}
		}
		return nil
	}
	
	class func turquoiseColor() -> UIColor{
		return UIColor(hexString: "#1ABC9C")!
	}
	
	class func greenSeaColor() -> UIColor{
		return UIColor(hexString: "#16A085")
	}
	
	class func emeraldColor() -> UIColor{
		return UIColor(hexString: "#2ECC71")
	}
	
	class func nephritisColor() -> UIColor{
		return UIColor(hexString: "#27AE60")
	}
	
	class func peterRiverColor() -> UIColor{
		return UIColor(hexString: "#3498DB")
	}
	
	class func belizeHoleColor() -> UIColor{
		return UIColor(hexString: "#2980B9")
	}
	
	class func amethystColor() -> UIColor{
		return UIColor(hexString: "#9B59B6")
	}
	
	class func wisteriaColor() -> UIColor{
		return UIColor(hexString: "#8E44AD")
	}
	
	class func wetAsphaltColor() -> UIColor{
		return UIColor(hexString: "#34495E")
	}
	
	class func midnightBlueColor() -> UIColor{
		return UIColor(hexString: "#2C3E50")
	}
	
	class func sunflowerColor() -> UIColor{
		return UIColor(hexString: "#F1C40F")
	}
	
	class func tangerineColor() -> UIColor{
		return UIColor(hexString: "#F39C12")
	}
	
	class func carrotColor() -> UIColor{
		return UIColor(hexString: "#E67E22")
	}
	
	class func pumpkinColor() -> UIColor{
		return UIColor(hexString: "#D35400")
	}
	
	class func alizarinColor() -> UIColor{
		return UIColor(hexString: "#E74C3C")
	}
	
	class func pomegranateColor() -> UIColor{
		return UIColor(hexString: "#C0392B")
	}
	
	class func cloudsColor() -> UIColor{
		return UIColor(hexString: "#ECF0F1")
	}
	
	class func silverColor() -> UIColor{
		return UIColor(hexString: "#BDC3C7")
	}
	
	class func concreteColor() -> UIColor{
		return UIColor(hexString: "#95A5A6")
	}
	
	class func asbestosColor() -> UIColor{
		return UIColor(hexString: "#7F8C8D")
	}
	
	class func sexyBlue() -> UIColor{
		return UIColor(hexString: "#0080FF")
	}
	
	class func blendedColorWithForegroundColor(foregroundColor: UIColor, backgroundColor: UIColor, percentBlend: CGFloat) {
		var onRed, offRed, newRed, onGreen, offGreen, newGreen, onBlue, offBlue, newBlue, onWhite, offWhite : CGFloat
		if (foregroundColor = getRed(onRed, green: onGreen, blue: onBlue, alpha: nil)) {
			foregroundColor = getWhite(onWhite, alpha: nil)
			onRed = onWhite
			onBlue = onWhite
			onGreen = onWhite
		}
		if (backgroundColor = getRed(offRed, green: offGreen, blue: offBlue, alpha: nil)) {
			backgroundColor = getWhite(offWhite, alpha: nil)
			offRed = offWhite
			offBlue = offWhite
			offGreen = offWhite
		}
		newRed = onRed * percentBlend + offRed * (1 - percentBlend)
		newGreen = onGreen * percentBlend + offGreen * (1 - percentBlend)
		newBlue = onBlue * percentBlend + offBlue * (1 - percentBlend)
		return UIColor(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
	}
}





