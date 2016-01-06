//
//  EditScheduleViewController.swift
//  Scheduler
//
//  Created by Kyle Scholl on 1/6/16.
//  Copyright © 2016 Patronus LLC. All rights reserved.
//

import UIKit

protocol EditScheduleViewControllerDelegate {
	func controller(controller: EditScheduleViewController, aBlockItem: String, bBlockItem: String, cBlockItem: String, dBlockItem: String, eBlockItem: String, fBlockItem: String, gBlockItem: String)
}

class EditScheduleViewController: UIViewController, UITextFieldDelegate {
	
	@IBOutlet var ABlock: UITextField?
	@IBOutlet var BBlock: UITextField?
	@IBOutlet var CBlock: UITextField?
	@IBOutlet var DBlock: UITextField?
	@IBOutlet var EBlock: UITextField?
	@IBOutlet var FBlock: UITextField?
	@IBOutlet var GBlock: UITextField?
	
	
	var delegate: EditScheduleViewControllerDelegate?
	
	
	@IBAction func dismiss(sender: UIBarButtonItem) {
		self.dismissViewControllerAnimated(true, completion: nil)
	}
	
	
	@IBAction func create(sender: AnyObject) {
		
		let ABlockText : String = self.ABlock!.text!
		print("ABlockText: \(ABlockText)")
		
		
		let BBlockText : String = self.BBlock!.text!
		print("BBlockText: \(BBlockText)")
		
		
		let CBlockText : String = self.CBlock!.text!
		print("CBlockText: \(CBlockText)")
		
		
		let DBlockText : String = self.DBlock!.text!
		print("DBlockText: \(DBlockText)")
		
		
		let EBlockText : String = self.EBlock!.text!
		print("EBlockText: \(EBlockText)")
		
		
		let FBlockText : String = self.FBlock!.text!
		print("FBlockText: \(FBlockText)")
		
		
		let GBlockText : String = self.GBlock!.text!
		print("GBlockText: \(GBlockText)")
		
		
		if let delegate = self.delegate {
			delegate.controller(self, aBlockItem: ABlockText, bBlockItem: BBlockText, cBlockItem: CBlockText, dBlockItem: DBlockText, eBlockItem: EBlockText, fBlockItem: FBlockText, gBlockItem: GBlockText)
			
			print("Delegate if statement ran")
		}
	}
	
	func textFieldShouldReturn(textField: UITextField) -> Bool {
		self.view.endEditing(true)
		return false
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		self.ABlock!.delegate = self
		self.BBlock!.delegate = self
		self.CBlock!.delegate = self
		self.DBlock!.delegate = self
		self.EBlock!.delegate = self
		self.FBlock!.delegate = self
		self.GBlock!.delegate = self
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}
}
