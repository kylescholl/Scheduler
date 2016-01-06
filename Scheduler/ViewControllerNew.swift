//
//  ViewController.swift
//  Scheduler
//
//  Created by Kyle Scholl on 1/5/16.
//  Copyright © 2016 Patronus LLC. All rights reserved.
//

import UIKit

class ViewControllerNew: UIViewController {

	@IBOutlet var showScheduleButton: UIButton!
	@IBOutlet var netClassroomButton: UIButton!
	@IBOutlet var showHaikuButton:    UIButton!
	@IBOutlet var weatherButton:      UIButton!
	
	@IBOutlet var orangeButton:   UIButton!
	@IBOutlet var carrotButton:   UIButton!
	@IBOutlet var pumpkinButton:  UIButton!
	@IBOutlet var greenSeaButton: UIButton!
	
	@IBOutlet var timeLabel: UILabel!
	@IBOutlet var dateLabel: UILabel!
	
	@IBOutlet var helpView: UIView!
	
	
	func setButtonStyles() {
		
		let schedule     = showScheduleButton
		let netClassroom = netClassroomButton
		let haiku        = showHaikuButton
		let weather      = weatherButton
		
		schedule.layer.cornerRadius     = 10.0
		netClassroom.layer.cornerRadius = 10.0
		haiku.layer.cornerRadius        = 10.0
		weather.layer.cornerRadius      = 10.0
		
		schedule.setTitle      ("Schedule",     forState: UIControlState.Normal)
		netClassroom.setTitle  ("NetClassroom", forState: UIControlState.Normal)
		haiku.setTitle         ("Haiku",        forState: UIControlState.Normal)
		weather.setTitle       ("Weather",      forState: UIControlState.Normal)
		
		displayDateOnScreen()
	}
	
	func displayDateOnScreen() {
		
		let date       = NSDate()
		let calendar   = NSCalendar.currentCalendar()
		let components = calendar.components([.Year, .Month, .Day, .Weekday, .Hour, .Minute], fromDate: date)
		
		let minute  : Int = components.minute
		var hour    : Int = components.hour
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
		
		switch hour {
		case 13:
			hour = 1
		case 14:
			hour = 2
		case 15:
			hour = 3
		case 16:
			hour = 4
		case 17:
			hour = 5
		case 18:
			hour = 6
		case 19:
			hour = 7
		case 20:
			hour = 8
		case 21:
			hour = 9
		case 22:
			hour = 10
		case 23:
			hour = 11
		case 24:
			hour = 12
		default:
			NSLog("Error")
		}
		
		dateLabel.text = ("\(currentWeekday), \(currentMonth) \(day)")
		timeLabel.text = ("\(hour):\(minute)")
	}
	
	
	@IBAction func helpButton(sender: UIButton) {
		NSLog("HelpButtonPressed")
		helpView.fadeIn(duration: 1.0)
	}
	
	@IBAction func showScheduleButtonPressed(sender: UIButton) {
		NSLog("showScheduleButtonPressed")
		self.performSegueWithIdentifier("SchedulerSegue", sender: self)
	}
	
	@IBAction func netClassroomButton(sender: UIButton) {
		NSLog("netClassroomButton")
		self.performSegueWithIdentifier("NetClassroomSegue", sender: self)
	}
	
	@IBAction func showHaikuButtonPressed(sender: UIButton) {
		NSLog("showHaikuButton")
		self.performSegueWithIdentifier("HaikuSegue", sender: self)
	}
	
	
	func dismissView() {
		//	view.endEditing(true)
		helpView.fadeOut(duration: 1.0)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		//Looks for single or multiple taps.
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
		
		//self.view.backgroundColor = UIColor.wetAsphaltColor()
		setButtonStyles()
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}








