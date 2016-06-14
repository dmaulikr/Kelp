
//  Created by Devine Lu Linvega on 2016-04-22.
//  Copyright © 2016 XXIIVV. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class Vignette
{
	var name:String = "Unknown"
	let trigger:Array<Trigger> = []
	let layers:Array<Layer> = []
	
	init(name:String)
	{
		self.name = name
		console.log(self, message: "Init Vignette: \(name)")
	}
	
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
