package  
{
	/**
	 * ...
	 * @author Nathan Nieuwenhuizen
	 */
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.ui.Mouse;
	import flash.events.MouseEvent;
	
	public class Rock3 extends Sprite
	{
		[Embed(source="../img/rock3.png")]
		private var BackgroundImage:Class;
		private var bgImage:Bitmap;
		public var xSpeed:int;
		public var ySpeed:int;
		public var maxSpeed:int;
		public var tooSmall:Boolean;
		private var inField:Boolean;
		
			public function Rock3()
			{
			addEventListener(Event.ADDED_TO_STAGE, init);
			 
			}
			
			
			private function init(e:Event = null):void
			{
			this.removeEventListener(Event.ADDED_TO_STAGE, init);
			bgImage = new BackgroundImage();
			addChild(bgImage);
			tooSmall = false;
			inField = false;
			maxSpeed = 100;
			this.y = 10;
			this.x = this.width + 20+ (Math.random() * 1920) - this.width *2;
			determineSpeed();
			this.scaleX = this.scaleY = 0.5;
			addEventListener(Event.ENTER_FRAME, loop);
			}
			
			private function determineSpeed():void
			{
				if (Math.random() <= 0.5)
				{
					xSpeed =  maxSpeed + (Math.random() * 600) ;	
					
				}
				else
				{
					xSpeed =  -maxSpeed - (Math.random() * 600) ;	
				}
				if (Math.random() <= 0.5)
				{
					ySpeed =  maxSpeed + (Math.random() * 600) ;	
					
				}
				else
				{
					ySpeed =  -maxSpeed - (Math.random() * 600) ;	
				}
				
				//ySpeed = maxSpeed + (Math.random() * 600) ;	
				//trace (ySpeed);
				
			}
			
			public function loop(e:Event):void
			{
				this.x += xSpeed/100;
				this.y += ySpeed/100;
				if (this.y>= 1080 + this.height*2)
				{
					this.y = 0 - this.height;
					//ySpeed = -ySpeed;
				}
				if (this.y <= 0 - this.height*2)
				{
					this.y = 1080 +this.height;
					//ySpeed = -ySpeed;
				}
				if (this.x >= 1920 + this.width*2)
				{
					this.x = 0 -this.width;
					//xSpeed = -xSpeed;

				}
				if (this.x <= 0 -this.width*2)
				{
					this.x = 1920 + this.width;
					//xSpeed = -xSpeed;

				}
			}
			
			
			public function small():void
			{
				this.scaleX = this.scaleY -= 0.2;
				
				if (this.scaleX <= 0.2)
				{
					tooSmall = true;
				}
			}
			
			public function destroy():void
			{
				this.removeEventListener(Event.ENTER_FRAME, loop);
			}
			public function die():void
			{
				this.parent.removeChild(this);
			}
	}

}