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
	
	
	public class endShip extends Sprite
	{
		[Embed(source="../img/endship.png")]
		private var BackgroundImage:Class;
		private var bgImage:Bitmap;
		
		
			public function endShip()
			{
			addEventListener(Event.ADDED_TO_STAGE, init);
			 
			}
			
			
			private function init(e:Event = null):void
			{
			bgImage = new BackgroundImage();
			addChild(bgImage);
			this.x = 2000;
			this.y = 800;
			this.addEventListener(Event.ENTER_FRAME, loop);
			this.scaleX = this.scaleY = 0.6;
			}
			private function loop(e:Event):void
			{
				this.x -= 10;
				if (this.x <= 400)
				{
					//parent.removeChildAt(parent.getChildIndex(this));
				}
			}
			
	}

}