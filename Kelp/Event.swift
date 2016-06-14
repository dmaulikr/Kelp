
//  Created by Devine Lu Linvega on 2016-06-14.
//  Copyright © 2016 Devine Lu Linvega. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class Event
{
	var name = ""
	var destination:Vignette! = nil
	
	init(name:String = "Unnamed", destination:Vignette! = nil)
	{
		self.name = name
		self.destination = destination
	}
	
	func action()
	{
		if destination != nil {
			console.log(self,message: "Heading to: \(destination.name)")
		}
		else{
			console.log(self,message: "Event touched!")
		}
		
	}
}