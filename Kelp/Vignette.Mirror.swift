
//  Created by Devine Lu Linvega on 2016-06-14.
//  Copyright © 2016 Devine Lu Linvega. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class VignetteMirror : Vignette
{
	init()
	{
		super.init(name:"Mirror")
		
		let layer2 = Layer(depth:2)
		addChildNode(Layer(depth:0))
		addChildNode(Layer(depth:1))
		addChildNode(layer2)
		
		let trigger = Trigger(host: self, position:SCNVector3(0,0,0), size: CGSize(width: 0.5, height: 1), operation: 1)
		layer2.addTrigger(trigger)
		trigger.debug(red)
	}
	
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
