
//  Created by Devine Lu Linvega on 2016-06-14.
//  Copyright © 2016 Devine Lu Linvega. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class VignetteLamp : Vignette
{
	let layer1 = Layer(depth:0)
	
	init()
	{
		super.init(name:"Lamp")
		
		addChildNode(Layer(depth:0))
	}
	
	override func whenStart()
	{
		super.whenStart()
		
		let trigger = Trigger(host: self, position:SCNVector3(0,0,0), size: CGSize(width: 0.5, height: 1), operation: 1)
		layer1.addTrigger(trigger)
		trigger.debug(white)
		
		let trigger2 = Trigger(host: self, position:SCNVector3(0.5,0.5,0), size: CGSize(width: 0.5, height: 1), destination: collection.mirror)
		layer1.addTrigger(trigger2)
		trigger2.debug(red)
	}
	
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
