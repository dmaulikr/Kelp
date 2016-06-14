
//  Created by Devine Lu Linvega on 2015-07-16.
//  Copyright (c) 2016 XXIIVV. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class Layer : Empty
{
	init(depth:CGFloat)
	{
		super.init()
		
		position = SCNVector3(0,0,depth/4)
		geometry = SCNPlane(width: 3, height: 3)
		geometry?.materials.first!.diffuse.contents = UIImage(named: "what")
		eulerAngles.z = degToRad(-90)
		opacity = 0.25
	}
	
	func addTrigger(trigger:Trigger)
	{
		addChildNode(trigger)
	}
	
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
