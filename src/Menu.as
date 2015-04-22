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
	
	public class Menu extends Sprite
	{
		[Embed(source="../img/menu.png")]
		private var BackgroundImage:Class;
		private var bgImage:Bitmap;
		
			public function Menu()
			{
			this.addEventListener(Event.ADDED_TO_STAGE, init);
			 
			}
			
			
			private function init(e:Event = null):void
			{
			bgImage = new BackgroundImage();
			addChild(bgImage);
			this.addEventListener(Event.ENTER_FRAME, loop);
			this.x = -200;
			}
			private function loop(e:Event):void
			{
				
			}
			public function keyDown(e:KeyboardEvent):void
			{
				if (e.keyCode == 32) {
					removeChild(this);
				}
			}
	}

}