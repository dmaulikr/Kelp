
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
	let operation:Int!
	let destination:Vignette!
	
	init(host:Vignette,position:SCNVector3,size:CGSize,operation:Int! = nil, destination:Vignette! = nil)
	{
		self.operation = operation
		self.host = host
		self.size = size
		self.destination = destination
		super.init()
		self.position = position
		self.geometry = SCNPlane(width: size.width, height: size.height)
		self.geometry?.materials.first?.diffuse.contents = clear
	}
	
	override func touch(id:Int = 0)
	{
		if isEnabled == false { return }
		if operation != nil { host.touch(operation) }
		if destination != nil { world.enter(destination) }
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
