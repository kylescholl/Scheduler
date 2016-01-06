//
//  SchedulerViewController.swift
//  Scheduler
//
//  Created by Kyle Scholl on 1/6/16.
//  Copyright © 2016 Patronus LLC. All rights reserved.
//

import UIKit

class SchedulerViewController: UIViewController, EditScheduleViewControllerDelegate {
	
	func controller(controller: EditScheduleViewController, aBlockItem: String, bBlockItem: String, cBlockItem: String, dBlockItem: String, eBlockItem: String, fBlockItem: String, gBlockItem: String) {
		
		let aBlockIndex : Int = aBlockTextViewCollection.count
		let bBlockIndex : Int = bBlockTextViewCollection.count
		let cBlockIndex : Int = cBlockTextViewCollection.count
		let dBlockIndex : Int = dBlockTextViewCollection.count
		let eBlockIndex : Int = eBlockTextViewCollection.count
		let fBlockIndex : Int = fBlockTextViewCollection.count
		let gBlockIndex : Int = gBlockTextViewCollection.count
		print("sup fam")
		
		if aBlockItem.isEmpty == false || bBlockItem.isEmpty == false || cBlockItem.isEmpty == false || dBlockItem.isEmpty == false || eBlockItem.isEmpty == false || fBlockItem == "" || gBlockItem == "" {
			
			let defaults = NSUserDefaults.standardUserDefaults()
			defaults.setValue(aBlockItem, forKey: "ABlock")
			defaults.setValue(bBlockItem, forKey: "BBlock")
			defaults.setValue(cBlockItem, forKey: "CBlock")
			defaults.setValue(dBlockItem, forKey: "DBlock")
			defaults.setValue(eBlockItem, forKey: "EBlock")
			defaults.setValue(fBlockItem, forKey: "FBlock")
			defaults.setValue(gBlockItem, forKey: "GBlock")
			defaults.synchronize()
			
			print("Test")
			
			// A
			for index in 0..<aBlockIndex {
				aBlockTextViewCollection[index].text = aBlockItem
			}
			
			// B
			for index in 0..<bBlockIndex {
				bBlockTextViewCollection[index].text = bBlockItem
			}
			
			// C
			for index in 0..<cBlockIndex {
				cBlockTextViewCollection[index].text = cBlockItem
			}
			
			// D
			for index in 0..<dBlockIndex {
				dBlockTextViewCollection[index].text = dBlockItem
			}
			
			// E
			for index in 0..<eBlockIndex {
				eBlockTextViewCollection[index].text = eBlockItem
			}
			
			// F
			for index in 0..<fBlockIndex {
				fBlockTextViewCollection[index].text = fBlockItem
			}
			
			// G
			for index in 0..<gBlockIndex {
				gBlockTextViewCollection[index].text = gBlockItem
			}
		} else {
			print("Text entered on some or all was blank")
		}
	}
	
	
	
	
	
	
	////////////////
	////////////////////
	////////////////////////
	////////////////////////////
	////////////////////////////////
	////////////////////////////////////
	////////////////////////////////////////
	////////////////////////////////////////////
	////////////////////////////////////////////////
	////////////////////////////////////////////////////
	////////////////////////////////////////////////////////
	////////////////// OUTLET COLLECTIONS //////////////////////
	////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////
	
	
	////////////////////////////////////////////////////////////
	////////////// LETTER BLOCKS (diagonal) ////////////////////
	// Robotics
	@IBOutlet var aBlockTextViewCollection: [UITextView]!
	
	// Coding
	@IBOutlet var bBlockTextViewCollection: [UITextView]!
	
	// Free / college counseling
	@IBOutlet var cBlockTextViewCollection: [UITextView]!
	
	// English
	@IBOutlet var dBlockTextViewCollection: [UITextView]!
	
	// Science
	@IBOutlet var eBlockTextViewCollection: [UITextView]!
	
	// Math
	@IBOutlet var fBlockTextViewCollection: [UITextView]!
	
	// History
	@IBOutlet var gBlockTextViewCollection: [UITextView]!
	
	
	// DAY COLLECTIONS (vertical) //
	// Day 1
	@IBOutlet var dayOneGroup: [UITextView]!
	
	@IBOutlet var dayOneLabelGroup: [UILabel]!
	
	// Day 2
	@IBOutlet var dayTwoGroup: [UITextView]!
	
	@IBOutlet var dayTwoLabelGroup: [UILabel]!
	
	// Day 3
	@IBOutlet var dayThreeGroup: [UITextView]!
	
	@IBOutlet var dayThreeLabelGroup: [UILabel]!
	
	// Day 4
	@IBOutlet var dayFourGroup: [UITextView]!
	
	@IBOutlet var dayFourLabelGroup: [UILabel]!
	
	// Day 5
	@IBOutlet var dayFiveGroup: [UITextView]!
	
	@IBOutlet var dayFiveLabelGroup: [UILabel]!
	
	// Day 6
	@IBOutlet var daySixGroup: [UITextView]!
	
	@IBOutlet var daySixLabelGroup: [UILabel]!
	
	// Day 7
	@IBOutlet var daySevenGroup: [UITextView]!
	
	@IBOutlet var daySevenLabelGroup: [UILabel]!
	
	//	Just realized that I could've just made even and odd groups instead.....oh well
	
	
	// BUTTON OUTLETS
	
	@IBOutlet var dayOneButton: UIButton!
	
	@IBOutlet var dayTwoButton: UIButton!
	
	@IBOutlet var dayThreeButton: UIButton!
	
	@IBOutlet var dayFourButton: UIButton!
	
	@IBOutlet var dayFiveButton: UIButton!
	
	@IBOutlet var daySixButton: UIButton!
	
	@IBOutlet var daySevenButton: UIButton!
	
	
	// ALL LABELS
	
	@IBOutlet var allLabelsCollection: [UILabel]!
	
	// this isn't working for some reason
	
	
	
	func setTextOfBlocks(condition: String) {
		if condition == "clear" {
			for index in 0..<6 {
				aBlockTextViewCollection[index].text = ""
				bBlockTextViewCollection[index].text = ""
				cBlockTextViewCollection[index].text = ""
				dBlockTextViewCollection[index].text = ""
				eBlockTextViewCollection[index].text = ""
				fBlockTextViewCollection[index].text = ""
				gBlockTextViewCollection[index].text = ""
			}
		}
		
		let aNumIndex : Int = aBlockTextViewCollection.count
		let bNumIndex : Int = bBlockTextViewCollection.count
		let cNumIndex : Int = cBlockTextViewCollection.count
		let dNumIndex : Int = dBlockTextViewCollection.count
		let eNumIndex : Int = eBlockTextViewCollection.count
		let fNumIndex : Int = fBlockTextViewCollection.count
		let gNumIndex : Int = gBlockTextViewCollection.count
		
		if condition == "default" {
			// A
			for index in 0..<aNumIndex {
				aBlockTextViewCollection[index].text = "A"
			}
			
			// B
			for index in 0..<bNumIndex {
				bBlockTextViewCollection[index].text = "B"
			}
			
			// C
			for index in 0..<cNumIndex {
				cBlockTextViewCollection[index].text = "C"
			}
			
			// D
			for index in 0..<dNumIndex {
				dBlockTextViewCollection[index].text = "D"
			}
			
			// E
			for index in 0..<eNumIndex {
				eBlockTextViewCollection[index].text = "E"
			}
			
			// F
			for index in 0..<fNumIndex {
				fBlockTextViewCollection[index].text = "F"
			}
			
			// G
			for index in 0..<gNumIndex {
				gBlockTextViewCollection[index].text = "G"
			}
		}
	}
	
	
	
	func setVerticalAndHorizontalPositionForText() {
		
		let aNumIndex : Int = aBlockTextViewCollection.count
		let bNumIndex : Int = bBlockTextViewCollection.count
		let cNumIndex : Int = cBlockTextViewCollection.count
		let dNumIndex : Int = dBlockTextViewCollection.count
		let eNumIndex : Int = eBlockTextViewCollection.count
		let fNumIndex : Int = fBlockTextViewCollection.count
		let gNumIndex : Int = gBlockTextViewCollection.count
		
		// A
		for index in 0..<aNumIndex {
			aBlockTextViewCollection[index].textAlignment = .Center
		}
		
		// B
		for index in 0..<bNumIndex {
			bBlockTextViewCollection[index].textAlignment = .Center
		}
		
		// C
		for index in 0..<cNumIndex {
			cBlockTextViewCollection[index].textAlignment = .Center
		}
		
		// D
		for index in 0..<dNumIndex {
			dBlockTextViewCollection[index].textAlignment = .Center
		}
		
		// E
		for index in 0..<eNumIndex {
			eBlockTextViewCollection[index].textAlignment = .Center
		}
		
		// F
		for index in 0..<fNumIndex {
			fBlockTextViewCollection[index].textAlignment = .Center
		}
		
		// G
		for index in 0..<gNumIndex {
			gBlockTextViewCollection[index].textAlignment = .Center
		}
	}
	
	
	
	/*	Clears the schedule  */
	@IBAction func clearSchedule(sender: UIButton) {
		
		//Create the AlertController
		let clearActionSheetController: UIAlertController = UIAlertController(title: "Clear",
			message: "Are you sure that you want to clear the schedule?",
			preferredStyle: .Alert)
		clearActionSheetController.view.tintColor = UIColor.wetAsphaltColor()
		
		//clearActionSheetController.setValue(attributedString, forKey: "attributedMessage")
		
		clearActionSheetController.view.layer.cornerRadius = 8
		
		
		//Create and add the Cancel action
		let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Default) { action -> Void in
			//attributedString
		}
		clearActionSheetController.addAction(cancelAction)
		
		//Create and add an option action
		let nextAction: UIAlertAction = UIAlertAction(title: "Yes, clear", style: .Destructive) { action -> Void in
			self.view.tintColor = UIColor.alizarinColor()
			self.setTextOfBlocks("clear")
		}
		
		clearActionSheetController.addAction(nextAction)
		
		//Present the AlertController
		self.presentViewController(clearActionSheetController, animated: true, completion: nil)
	}
	
	@IBAction func dismiss(sender: UIBarButtonItem) {
		self.dismissViewControllerAnimated(true, completion: nil)
	}
	
	
	
	
	
	
	
	
	
	
	
	func setEditingForViews(boolForEditing : Bool) {
		for index in 0..<6 {
			aBlockTextViewCollection[index].editable = boolForEditing
			bBlockTextViewCollection[index].editable = boolForEditing
			cBlockTextViewCollection[index].editable = boolForEditing
			dBlockTextViewCollection[index].editable = boolForEditing
			eBlockTextViewCollection[index].editable = boolForEditing
			fBlockTextViewCollection[index].editable = boolForEditing
			gBlockTextViewCollection[index].editable = boolForEditing
		}
	}
	
	
	
	
	// Edits the schedule
	@IBAction func editSchedule(sender: UIBarButtonItem) {
		
		// Create the custom attributed string
		let attributedString = NSAttributedString(string: "Invalid Name", attributes: [
			//NSParagraphStyleAttributeName : paragraphStyle,
			NSFontAttributeName : UIFont.systemFontOfSize(15),
			NSForegroundColorAttributeName : UIColor.wetAsphaltColor()
			])
		
		
		//Create the AlertController
		let editActionSheetController: UIAlertController = UIAlertController(title: "Edit",
			message: "Are you sure that you want to edit the schedule?",
			preferredStyle: .Alert)
		editActionSheetController.view.tintColor = UIColor.wetAsphaltColor()
		editActionSheetController.setValue(attributedString, forKey: "attributedMessage")
		
		editActionSheetController.view.layer.cornerRadius = 8
		
		
		//Create and add the Cancel action
		let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
			self.setEditingForViews(false)
			self.view.tintColor = UIColor.alizarinColor()
		}
		editActionSheetController.addAction(cancelAction)
		
		//Create and add an option action
		let nextAction: UIAlertAction = UIAlertAction(title: "Edit", style: UIAlertActionStyle.Default) { action -> Void in
			let editMethodSheetController : UIAlertController = UIAlertController(title: "", message: "Would you like to edit the block groups or each individually?", preferredStyle: .Alert)
			
			
			// Individually
			let individualEditMethod: UIAlertAction = UIAlertAction(title: "Individually", style: .Cancel) {
				action -> Void in
				self.setEditingForViews(true)
			}
			editMethodSheetController.addAction(individualEditMethod)
			
			
			
			
			// Segue to ViewController
			let blockEditMethod: UIAlertAction = UIAlertAction(title: "Groups", style: UIAlertActionStyle.Default) {
				action -> Void in
				self.performSegueWithIdentifier("editScheduleViewController", sender: self)
			}
			
			editMethodSheetController.addAction(blockEditMethod)
			
			self.presentViewController(editMethodSheetController, animated: true, completion: nil)
		}
		
		editActionSheetController.addAction(nextAction)
		
		
		//Present the AlertController
		self.presentViewController(editActionSheetController, animated: true, completion: nil)
	}
	
	
	
	
	
	
	
	
	
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		// SchedulerViewController
		if segue.identifier == "editScheduleViewController" {
			let navigationController = segue.destinationViewController as? UINavigationController
			let editScheduleViewController = navigationController?.topViewController as? EditScheduleViewController
			
			print("Howdy Ho!!")
			
			if let viewController = editScheduleViewController {
				viewController.delegate = self
			}
		}
	}
	
	
	
	
	
	
	
	
	func loadSchedule() {
		
		let defaults = NSUserDefaults.standardUserDefaults()
		
		
		// Last indexes of each array
		let aNumIndex = aBlockTextViewCollection.count
		let bNumIndex = bBlockTextViewCollection.count
		let cNumIndex = cBlockTextViewCollection.count
		let dNumIndex = dBlockTextViewCollection.count
		let eNumIndex = eBlockTextViewCollection.count
		let fNumIndex = fBlockTextViewCollection.count
		let gNumIndex = gBlockTextViewCollection.count
		
		// A
		for index in 0..<aNumIndex {
			aBlockTextViewCollection[index].text = defaults.stringForKey("ABlock")
		}
		
		// B
		for index in 0..<bNumIndex {
			bBlockTextViewCollection[index].text = defaults.stringForKey("BBlock")
		}
		
		// C
		for index in 0..<cNumIndex {
			cBlockTextViewCollection[index].text = defaults.stringForKey("CBlock")
		}
		
		// D
		for index in 0..<dNumIndex {
			dBlockTextViewCollection[index].text = defaults.stringForKey("DBlock")
		}
		
		// E
		for index in 0..<eNumIndex {
			eBlockTextViewCollection[index].text = defaults.stringForKey("EBlock")
		}
		
		// F
		for index in 0..<fNumIndex {
			fBlockTextViewCollection[index].text = defaults.stringForKey("FBlock")
		}
		
		// G
		for index in 0..<gNumIndex {
			gBlockTextViewCollection[index].text = defaults.stringForKey("GBlock")
		}
	}
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		loadSchedule()
		setEditingForViews(false)
	}
	
	override func viewWillAppear(animated: Bool) {
		//setTextToDefault()
		//initializeAllUIElements()
		
		self.view.backgroundColor = UIColor.wetAsphaltColor()
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	//////////////////////////////////////////////////////////////////////
	//////////////////////// The following is all ////////////////////////
	///////////////////// styling and customization //////////////////////
	//////////////////////////////////////////////////////////////////////
	
	@IBOutlet var navigationBar: UINavigationItem!
	@IBOutlet var backButton: UIBarButtonItem!
	@IBOutlet var clearButton: UIBarButtonItem!
	@IBOutlet var editButton: UIBarButtonItem!
}
