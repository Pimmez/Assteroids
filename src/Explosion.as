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
	
	
	public class Explosion extends Sprite
	{
		[Embed(source="../img/explosion.png")]
		private var BackgroundImage:Class;
		private var bgImage:Bitmap;
		
		
			public function Explosion()
			{
			this.addEventListener(Event.ADDED_TO_STAGE, init);
			 
			}
			
			
			private function init(e:Event = null):void
			{
			bgImage = new BackgroundImage();
			addChild(bgImage);
			this.addEventListener(Event.ENTER_FRAME, loop);
			this.scaleX = this.scaleY = 0.6;
			}
			private function loop(e:Event):void
			{
				
			}
			
	}

}