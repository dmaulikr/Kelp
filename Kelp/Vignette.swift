
//  Created by Devine Lu Linvega on 2016-04-22.
//  Copyright © 2016 XXIIVV. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class Vignette : Empty
{
	let trigger:Array<Trigger> = []
	let layers:Array<Layer> = []
	
	init(name:String)
	{
		super.init()
		
		self.name = name
		
		eulerAngles.z = degToRad(90)
		
		console.log(self, message: "Init Vignette: \(name)")
	}
	
	override func whenStart()
	{
		super.whenStart()
		
		console.log(self, message: "Start Vignette: \(name)")
	}
	
	func whenEnter()
	{
		console.log(self,message:"Entering \(name!)")
	}
	
	override func touch(id: Int)
	{
		console.log(self,message:"Touched!")
	}
	
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
