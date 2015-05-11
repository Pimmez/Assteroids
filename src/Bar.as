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
	
	
	public class Bar extends Sprite
	{
		[Embed(source="../img/bar.png")]
		private var BackgroundImage:Class;
		private var bgImage:Bitmap;
		
		
			public function Bar()
			{
			this.addEventListener(Event.ADDED_TO_STAGE, init);
			 
			}
			
			
			private function init(e:Event = null):void
			{
			bgImage = new BackgroundImage();
			addChild(bgImage);
			this.addEventListener(Event.ENTER_FRAME, loop);
			this.scaleX = this.scaleY = 1;
			}
			private function loop(e:Event):void
			{
				
			}
			
	}

}