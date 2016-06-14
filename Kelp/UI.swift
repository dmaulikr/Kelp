
//  Created by Devine Lu Linvega on 2015-07-16.
//  Copyright (c) 2016 XXIIVV. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class UI : Empty
{
	override init()
	{
		super.init()
		
		let buttonSize = 0.09
		
		let button = Trigger(host: self, position:SCNVector3(-0.2,0,0), size: CGSize(width: buttonSize,height: buttonSize), operation: 1)
		button.geometry?.materials.first?.diffuse.contents = red
		
		self.addChildNode(button)
	}
	
	override func touch(id: Int)
	{
		console.log(self, message: "Button:\(id)")
	}
	
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
