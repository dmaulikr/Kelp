
//  Created by Devine Lu Linvega on 2015-07-13.
//  Copyright (c) 2016 XXIIVV. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class Trigger : Empty
{
	var isEnabled:Bool = true
	let host:Vignette!
	var size:CGSize!
	let event:Event!
	
	init(host:Vignette,position:SCNVector3,size:CGSize,event:Event)
	{
		self.event = event
		self.host = host
		self.size = size
		super.init()
		self.position = position
		self.geometry = SCNPlane(width: size.width, height: size.height)
		self.geometry?.materials.first?.diffuse.contents = clear
	}
	
	override func touch(id:Int = 0)
	{
		if isEnabled == false { return }
		event.action()
	}
	
	override func update()
	{
		
	}
	
	func debug(color:UIColor = white)
	{
		addChildNode(Line(vertices: [SCNVector3(size.width/2,size.height/2,0),SCNVector3(size.width/2,-size.height/2,0)], color: color))
		addChildNode(Line(vertices: [SCNVector3(-size.width/2,size.height/2,0),SCNVector3(-size.width/2,-size.height/2,0)], color: color))
		addChildNode(Line(vertices: [SCNVector3(-size.width/2,size.height/2,0),SCNVector3(size.width/2,size.height/2,0)], color: color))
		addChildNode(Line(vertices: [SCNVector3(-size.width/2,-size.height/2,0),SCNVector3(size.width/2,-size.height/2,0)], color: color))
		
		addChildNode(Line(vertices: [SCNVector3(-0.1,0,0),SCNVector3(0.1,0,0)], color: color))
		addChildNode(Line(vertices: [SCNVector3(0,-0.1,0),SCNVector3(0,0.1,0)], color: color))
	}
	
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
