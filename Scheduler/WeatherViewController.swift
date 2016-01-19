//
//  WeatherViewController.swift
//  Scheduler
//
//  Created by Kyle Scholl on 1/6/16.
//  Copyright © 2016 Patronus LLC. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

///////////////////
//// SNOW DAYS ////
//////// & ////////
///// DELAYS //////
///////////////////


class WeatherViewController: UIViewController {
	
	@IBOutlet var weatherLabel: UILabel!
	@IBOutlet var _weatherLabel: UILabel!
	
	@IBOutlet var currentWeatherIcon: UIImageView!
	@IBOutlet var staticWeatherIcon: UIImageView!
	
	@IBOutlet var activityIndicator: UIActivityIndicatorView!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		self.weatherLabel.text = ""
		
		activityIndicator("on")
		callWeatherService()
		
		
	}
	
	func activityIndicator(callMethod: String) {
		if (callMethod == "on") {
			
			print("activity indicator should be off")
			view.addSubview(activityIndicator)
			activityIndicator.center = view.center
			activityIndicator.startAnimating()
			
		} else if(callMethod == "off") {
			print("activity indicator should be off")
			activityIndicator.removeFromSuperview()
		}
	}
	
	func callWeatherService() {
		
		Alamofire.request(.GET, "http://api.openweathermap.org/data/2.5/forecast/daily?q=Philadelphia&mode=json&units=imperial&cnt=1&appid=a4ffa36a8b7e03ea5f1796cf8124b38e").responseJSON { (responseData) -> Void in
			
			let swiftyJsonVar = JSON(responseData.result.value!)
			print(swiftyJsonVar)
			
			let json = swiftyJsonVar
			
			if let forecast = json["list"][0]["weather"][0]["description"].string {
				
				self.activityIndicator("off")
				
				self.weatherLabel.text = forecast
			}
			
			// Add ["temp"]
			if let forecastType = json["list"][0]["weather"][0]["id"].string {
				
				let forecastID : Int = Int(forecastType)!
				print(forecastID)
				switch forecastID {
				case 200...232:
					print("Thunderstorm")
					self.currentWeatherIcon.image = UIImage(named: "Cloud – thunder + bolt behind")
					
				case 300...321:
					print("Drizzle")
					self.currentWeatherIcon.image = UIImage(named: "Cloud – rain drop")
					
				case 500...531:
					print("Rain")
					self.currentWeatherIcon.image = UIImage(named: "Cloud – Rain")
					
				case 600...622:
					print("Snow")
					self.currentWeatherIcon.image = UIImage(named: "Cloud – snow")
					
				case 701...781:
					print("Atmosphere (fog and stuff)")
					self.currentWeatherIcon.image = UIImage(named: "Wind/fog")
					
				case 800:
					print("Clear")
					
					//if time
					self.currentWeatherIcon.image = UIImage(named: "Cloud")
					
				case 801...804:
					print("Clouds")
					self.currentWeatherIcon.image = UIImage(named: "Cloud")
					
				case 900:
					print("Tornado")
					self.currentWeatherIcon.image = UIImage(named: "Cloud")
					
				case 901...902:
					print("Hurricane")
					self.currentWeatherIcon.image = UIImage(named: "Cloud")
					
				case 903:
					print("Extreme cold")
					self.currentWeatherIcon.image = UIImage(named: "Cloud")
					
				case 904:
					print("Extreme hot")
					self.currentWeatherIcon.image = UIImage(named: "Cloud")
					
				case 905:
					print("Extreme wind")
					self.currentWeatherIcon.image = UIImage(named: "Cloud")
					
				case 906:
					print("Extreme hail")
					self.currentWeatherIcon.image = UIImage(named: "Cloud")
					
				default:
					print("Failure")
					self.currentWeatherIcon.image = UIImage(named: "Cloud")
				}
			}
		}
	}
	
	@IBAction func done(sender: AnyObject) {
		self.dismissViewControllerAnimated(true, completion: nil)
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}
