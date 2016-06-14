
//  Created by Devine Lu Linvega on 2016-06-14.
//  Copyright © 2016 Devine Lu Linvega. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class VignetteMirror : Vignette
{
	let layer2 = Layer(depth:2)
	
	init()
	{
		super.init(name:"Mirror")
		
		addChildNode(Layer(depth:0))
		addChildNode(Layer(depth:1))
		addChildNode(layer2)
	}
	
	override func whenStart()
	{
		let trigger = Trigger(host: self, position:SCNVector3(0,0,0), size: CGSize(width: 0.5, height: 1), operation: 1)
		layer2.addTrigger(trigger)
		trigger.debug(white)
		
		let trigger2 = Trigger(host: self, position:SCNVector3(0.5,0.5,0), size: CGSize(width: 0.5, height: 1), destination: mirror)
		layer2.addTrigger(trigger2)
		trigger2.debug(red)
	}
	
	override func whenEnter()
	{
		super.whenEnter()
		
	}
	
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
