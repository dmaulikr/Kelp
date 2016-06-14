
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
	}
	
	override func whenStart()
	{
		layers[1].addTrigger(
			Trigger(host: self, position:SCNVector3(0.7,-0.9,0.01), size: CGSize(width: 1, height: 1.2), event:
				Event(name: "Baba", destination: VignetteCarpet())
			)
		)
//
//		layers[2].addTrigger(
//			Trigger(host: self, position:SCNVector3(-0.5,-1,0.01), size: CGSize(width: 1, height: 1), event:
//				Event(name: "Lamp",destination:collection.lamp)
//			)
//		)
	}
	
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
