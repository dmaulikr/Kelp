
//  Created by Devine Lu Linvega on 2016-04-22.
//  Copyright © 2016 XXIIVV. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class Empty : SCNNode
{
	var details:String = "unknown"
	
	override init()
	{
		super.init()
	}
	
	func touch(id:Int = 0)
	{
		console.log(self,message: "No touch event")
	}
	
	func update()
	{
	}
	
	func empty()
	{
		for node in childNodes {
			node.removeFromParentNode()
		}
		removeFromParentNode()
	}
	
	func show()
	{
		opacity = 1
	}
	
	func hide()
	{
		opacity = 0
	}
	
	required init?(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
