//
//  ViewController.swift
//  Scheduler
//
//  Created by Kyle Scholl on 1/5/16.
//  Copyright © 2016 Patronus LLC. All rights reserved.
//

import UIKit

class ViewControllerNew: UIViewController {
	
	// MARK: - Button & Label Outlets
	
	@IBOutlet var showScheduleButton: UIButton!
	@IBOutlet var netClassroomButton: UIButton!
	@IBOutlet var showHaikuButton:    UIButton!
	@IBOutlet var weatherButton:      UIButton!
	@IBOutlet var themeButton:        UIButton!
	@IBOutlet var helpButton:         UIButton!
	
	@IBOutlet var orangeButton:       UIButton!
	@IBOutlet var carrotButton:       UIButton!
	@IBOutlet var pumpkinButton:      UIButton!
	@IBOutlet var greenSeaButton:     UIButton!
	
	
	@IBOutlet var timeLabel:          UILabel!
	@IBOutlet var dateLabel:          UILabel!
	
	
	@IBOutlet var helpView:           UIView!
	
	
	
	
	// MARK: - Segues
	
	@IBAction func helpButton(sender: AnyObject) {
		NSLog("HelpButtonPressed")
		helpView.fadeIn(duration: 0.25)
	}
	
	///*
	@IBAction func showScheduleButtonPressed(sender: AnyObject) {
		NSLog("showScheduleButtonPressed")
		self.performSegueWithIdentifier("SchedulerSegue", sender: self)
	}
	//*/
	
	@IBAction func netClassroomButton(sender: AnyObject) {
		NSLog("netClassroomButton")
		self.performSegueWithIdentifier("NetClassroomSegue", sender: self)
	}
	
	@IBAction func showHaikuButtonPressed(sender: AnyObject) {
		NSLog("showHaikuButton")
		self.performSegueWithIdentifier("HaikuSegue", sender: self)
	}
	
/*
	override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
		if (segue.identifier == "SchedulerSegue") {
			var vc = (segue!.destinationViewController as secondViewController)
			
			vc.backColor = themeColor(bColor)
			vc.textColor = themeColor(tColor)
		}
	}
*/
	
	// MARK: - Initial Setup
	func dismissView() {
		helpView.fadeOut(duration: 0.25)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		//Looks for a tap to dismiss helpView
		let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissView")
		view.addGestureRecognizer(tap)
		
		helpView.frame = CGRectMake(34, 80, 305, 567)
		helpView.layer.cornerRadius = 5.0
		helpView.alpha = 0.0
		
		self.view.addSubview(helpView)
	}
	
	override func viewWillAppear(animated: Bool)  {
		super.viewWillAppear(animated)
		print("viewWillAppear()")
		
		setupButtons()
		displayDateOnScreen()
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	@IBAction func themeButton(sender: AnyObject) {
		// toggle between light and dark
		//// flip between cloudsColor() and wetAsphaltColor()
		
	}
	
	func toggleTheme(theme: String) {
		if theme == "light" {
			print("light")
			
		}
		if theme == "dark" {
			print("dark")
			
		}
		print("neither light or dark")
	}
	
	
	// MARK: - Additional Configuration
	func setupButtons() {
		
		let schedule     = showScheduleButton
		let netClassroom = netClassroomButton
		let haiku        = showHaikuButton
		let weather      = weatherButton
		let help         = helpButton
		
		//	let device = UIDevice.currentDevice().batteryState
		let device = UIDevice.currentDevice()
		print("")
		print(device)
		print("")
		//	if device >
		
		// Corner Radius
		schedule.layer.cornerRadius     = 10.0
		netClassroom.layer.cornerRadius = 10.0
		haiku.layer.cornerRadius        = 10.0
		weather.layer.cornerRadius      = 10.0
		help.layer.cornerRadius         = 10.0
		
		// Text Setup
		schedule.setTitle      ("Schedule",     forState: UIControlState.Normal)
		netClassroom.setTitle  ("NetClassroom", forState: UIControlState.Normal)
		haiku.setTitle         ("Haiku",        forState: UIControlState.Normal)
		weather.setTitle       ("Weather",      forState: UIControlState.Normal)
		help.setTitle          ("Help",         forState: UIControlState.Normal)
		
	/*
		// Font Setup
		schedule.titleLabel!.font      = UIFont.boldFlatFontOfSize(16.0)
		netClassroom.titleLabel!.font  = UIFont.boldFlatFontOfSize(16.0)
		haiku.titleLabel!.font         = UIFont.boldFlatFontOfSize(16.0)
		weather.titleLabel!.font       = UIFont.boldFlatFontOfSize(16.0)
		help.titleLabel!.font          = UIFont.boldFlatFontOfSize(16.0)
	*/
		
		// Color Setup
		schedule.backgroundColor  = UIColor.carrotColor()
		
		haiku.backgroundColor     = UIColor.turquoiseColor()
		
		haiku.backgroundColor = UIColor.sexyBlue()
		
		
		/*
		haiku.layer.shadowOffset  = CGSize(width: 2.0, height: 2.0)
		haiku.layer.shadowRadius  = 1.0 /* 3.0 */
		haiku.layer.shadowOpacity = 0.0
		
		haiku.layer.masksToBounds = true
		
		//		haiku.cornerRadius  = 6.0
		*/
		
		
		//	haiku.setTitleColor(UIColor.cloudsColor(), forState: .Normal)
		//	haiku.setTitleColor(UIColor.cloudsColor(), forState: .Highlighted)
		
		//	showHaikuButton.addTarget(self, action: "touchyTouchy", forControlEvents: .TouchDown)
	}
	
/*
	func touchyTouchy() {
		print("touchyTouchy()")
		
		let haiku = showHaikuButton
		
		haiku.contentEdgeInsets    = UIEdgeInsetsMake(1.0, 1.0, -1.0, -1.0)
		haiku.layer.shadowOffset   = CGSizeMake(1.0, 1.0)
		haiku.layer.shadowOpacity  = 0.8
		haiku.layer.masksToBounds  = false
	}
*/
	
	
	// MARK: Date & Time
	
	func displayDateOnScreen() {
		
		let date       = NSDate()
		let calendar   = NSCalendar.currentCalendar()
		let components = calendar.components([.Year, .Month, .Day, .Weekday, .Hour, .Minute], fromDate: date)
		
		let minute  : Int = components.minute
		let hour    : Int = components.hour
		let weekday : Int = components.weekday
		let day     : Int = components.day
		let month   : Int = components.month
		
		let currentMonth : String
		switch month {
		case 1:
			currentMonth = "January"
		case 2:
			currentMonth = "February"
		case 3:
			currentMonth = "March"
		case 4:
			currentMonth = "April"
		case 5:
			currentMonth = "May"
		case 6:
			currentMonth = "June"
		case 7:
			currentMonth = "July"
		case 8:
			currentMonth = "August"
		case 9:
			currentMonth = "September"
		case 10:
			currentMonth = "October"
		case 11:
			currentMonth = "November"
		case 12:
			currentMonth = "December"
		default:
			currentMonth = "Error"
			NSLog("Error")
		}
		
		let currentWeekday : String
		switch weekday {
		case 1:
			currentWeekday = "Sunday"
		case 2:
			currentWeekday = "Monday"
		case 3:
			currentWeekday = "Tuesday"
		case 4:
			currentWeekday = "Wednesday"
		case 5:
			currentWeekday = "Thursday"
		case 6:
			currentWeekday = "Friday"
		case 7:
			currentWeekday = "Saturday"
		default:
			currentWeekday = "Error"
			NSLog("Error")
		}
		
		var newHour: Int = 0
		switch hour {
		case 13:
			newHour = 1
		case 14:
			newHour = 2
		case 15:
			newHour = 3
		case 16:
			newHour = 4
		case 17:
			newHour = 5
		case 18:
			newHour = 6
		case 19:
			newHour = 7
		case 20:
			newHour = 8
		case 21:
			newHour = 9
		case 22:
			newHour = 10
		case 23:
			newHour = 11
		case 24:
			newHour = 12
		default:
			NSLog("Time is past 1:00 p.m.")
		}
		
		if (hour < 13) {
			print("hour: \(hour)")
			print("newHour: \(newHour)")
			if (minute < 10) {
				print(minute)
				timeLabel.text = ("\(hour):0\(minute)")
			} else if (minute > 10) {
				print(minute)
				timeLabel.text = ("\(hour):\(minute)")
			} else {
				print(minute)
				NSLog("Error")
			}
		} else if (hour > 13) {
			print("hour: \(hour)")
			print("newHour: \(newHour)")
			if (minute < 10) {
				print(minute)
				timeLabel.text = ("\(newHour):0\(minute)")
			} else if (minute > 10) {
				print(minute)
				timeLabel.text = ("\(newHour):\(minute)")
			} else {
				print(minute)
				NSLog("Error")
			}
		} else {
			NSLog("Error")
		}
		
		dateLabel.text = ("\(currentWeekday), \(currentMonth) \(day)")
	}
}








