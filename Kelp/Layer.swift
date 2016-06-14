
//  Created by Devine Lu Linvega on 2015-07-16.
//  Copyright (c) 2016 XXIIVV. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class Layer
{
	var id:Int!
	var host:Vignette!
	var triggers:Array<Trigger> = []
	
	init(id:Int)
	{
		self.id = id
	}
	
	func addTrigger(trigger:Trigger)
	{
		console.log(self,message: "Added trigger for \(trigger.host)")
		trigger.debug(red)
		triggers.append(trigger)
	}
	
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
