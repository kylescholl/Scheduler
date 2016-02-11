//
//  Custom Colors.swift
//  Scheduler
//
//  Created by Kyle Scholl on 2/10/16.
//  Copyright © 2016 Patronus LLC. All rights reserved.
//

import UIKit

extension UIColor {
/*
					// init?
	public convenience init? (hexString: String) {
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
*/
	class func hexColor(hexColorCode: String, alpha: Float = 1.0) -> UIColor {
		let scanner = NSScanner(string: hexColorCode)
		var color: UInt32 = 0
		scanner.scanHexInt(&color)
		
		let mask = 0x000000FF
		let r = CGFloat(Float(Int(color >> 16) & mask) / 255.0)
		let g = CGFloat(Float(Int(color >> 8)  & mask) / 255.0)
		let b = CGFloat(Float(Int(color)       & mask) / 255.0)
		
		return UIColor(red: r, green: g, blue: b, alpha: CGFloat(alpha))
	}
	
	class func turquoiseColor() -> UIColor {
		return hexColor("1ABC9C")
	}
	/*
	class func greenSeaColor() -> UIColor {
		return hexColor("16A085")!
	}
	
	class func emeraldColor() -> UIColor {
		return hexColor("2ECC71")!
	}
	
	class func nephritisColor() -> UIColor {
		return hexColor("27AE60")!
	}
	
	class func peterRiverColor() -> UIColor {
		return hexColor("3498DB")!
	}
	
	class func belizeHoleColor() -> UIColor {
		return hexColor("2980B9")!
	}
	
	class func amethystColor() -> UIColor {
		return hexColor("9B59B6")!
	}
	
	class func wisteriaColor() -> UIColor {
		return hexColor("8E44AD")!
	}
	*/
	class func wetAsphaltColor() -> UIColor {
		//return hexColor("34495E")!
		return UIColor(red: 52, green: 73, blue: 94, alpha: 1.0)
	}
	/*
	class func midnightBlueColor() -> UIColor {
		return hexColor("2C3E50")!
	}
	
	class func sunflowerColor() -> UIColor {
		return hexColor("F1C40F")!
	}
	
	class func tangerineColor() -> UIColor {
		return hexColor("F39C12")!
	}
	*/
	class func carrotColor() -> UIColor {
		//	return hexColor("E67E22")!
		return UIColor(red:0.9, green:0.49, blue:0.13, alpha:1.0)
	}
	/*
	class func pumpkinColor() -> UIColor {
		return hexColor("D35400")!
	}
	*/
	class func alizarinColor() -> UIColor {
		//return hexColor("E74C3C")!
		//return UIColor(red: 231, green: 76, blue: 60, alpha: 1.0)
		return hexColor("E74C3C")
	}
	/*
	class func pomegranateColor() -> UIColor {
		return hexColor("C0392B")!
	}
	
	class func cloudsColor() -> UIColor {
		return hexColor("ECF0F1")!
	}
	
	class func silverColor() -> UIColor {
		return hexColor("BDC3C7")!
	}
	
	class func concreteColor() -> UIColor {
		return hexColor("95A5A6")!
	}
	
	class func asbestosColor() -> UIColor {
		return hexColor("7F8C8D")!
	}
	*/
	class func sexyBlue() -> UIColor {
		//return hexColor("0080FF")!
		//return UIColor(red: 0, green: 128, blue: 255, alpha: 1.0)
		return UIColor.hexColor("0080FF")
	}

	/*
	class func blendedColorWithForegroundColor(var foregroundColor: UIColor, var backgroundColor: UIColor, percentBlend: CGFloat) {
		var onRed, offRed, newRed, onGreen, offGreen, newGreen, onBlue, offBlue, newBlue, onWhite, offWhite : CGFloat
		//let onMix = getRed(onRed, onGreen, onBlue, nil)
		if (foregroundColor = getRed(onRed)) {
			foregroundColor = getWhite(onWhite, nil)
			onRed = onWhite
			onBlue = onWhite
			onGreen = onWhite
		}
		if (backgroundColor = getRed(&offRed, green: &offGreen, blue: &offBlue, alpha: nil)) {
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
	*/
}





