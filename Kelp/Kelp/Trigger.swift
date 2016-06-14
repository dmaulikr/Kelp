
//  Created by Devine Lu Linvega on 2015-07-13.
//  Copyright (c) 2016 XXIIVV. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class Trigger : Empty
{
	var isEnabled:Bool = true
	let host:Empty!
	let operation:Int!
	var size:CGSize!
	
	init(host:Empty,size:CGSize,operation:Int = 0)
	{
		self.operation = operation
		self.host = host
		self.size = size
		super.init()
		self.geometry = SCNPlane(width: size.width, height: size.height)
		self.geometry?.materials.first?.diffuse.contents = clear
	}
	
	override func touch(id:Int)
	{
		if isEnabled == false { return }
		host.touch(operation)
	}
	
	override func update()
	{
		
	}
	
	func debug()
	{
		self.geometry?.materials.first?.diffuse.contents = red
	}
	
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
