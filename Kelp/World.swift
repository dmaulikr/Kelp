
//  Created by Devine Lu Linvega on 2016-04-22.
//  Copyright © 2016 XXIIVV. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class World : Empty
{
	let mirror = VignetteMirror()
	let carpet = VignetteCarpet()
	let lamp   = VignetteLamp()

	override init()
	{
		super.init()
		
		self.position = SCNVector3(0,0,-6)
	
		addChildNode(mirror)
	}
	
	func enter(vignette:Vignette)
	{
		empty()
		addChildNode(vignette)
		console.log(self,message: "Entering: \(vignette.name!)")
	}
	
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
