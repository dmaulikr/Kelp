
//  Created by Devine Lu Linvega on 2016-04-22.
//  Copyright © 2016 XXIIVV. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class World : Empty
{
	let vignetteRoot = Empty()
	
	override init()
	{
		super.init()
		
		self.position = SCNVector3(0,0,-6)
		addChildNode(vignetteRoot)
		
		enter(mirror)
	}
	
	func enter(vignette:Vignette)
	{
		vignetteRoot.empty()
		vignetteRoot.addChildNode(vignette)
		vignette.whenEnter()
	}
	
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
