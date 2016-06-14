
//  Created by Devine Lu Linvega on 2016-04-22.
//  Copyright © 2016 XXIIVV. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class Vignette
{
	var name:String = "Unknown"
	let triggers:Array<Trigger> = []
	var layers:Array<Layer> = []
	
	init(name:String)
	{
		self.name = name
		
		self.layers.append(Layer(id: 0))
		self.layers.append(Layer(id: 1))
		self.layers.append(Layer(id: 2))
		self.layers.append(Layer(id: 3))
		self.layers.append(Layer(id: 4))
		
		console.log(self, message: "Init Vignette: \(name)")
	}
	
	func touch(id:Int = 0)
	{
		console.log(self,message: "No touch event")
	}
	
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
