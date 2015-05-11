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
	import flash.events.MouseEvent;

	
	
	public class ReturnButton extends Sprite
	{
		[Embed(source="../img/menubutton.png")]
		private var BackgroundImage:Class;
		private var bgImage:Bitmap;
		private var main:mainGame;
		private var menu: mainMenu;
		
		
		public function ReturnButton()
		{
			this.addEventListener(Event.ADDED_TO_STAGE, init);
		}
			
			
		private function init(e:Event = null):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			bgImage = new BackgroundImage();
			addChild(bgImage);
			this.scaleX = this.scaleY = 0.5;
			this.x = 20;
			this.y = 100;
			this.addEventListener(MouseEvent.CLICK, onClick);
		}
		private function onClick(e:MouseEvent):void 
		{
			//menu = new mainMenu();
			//addChild(menu);
			//removeEventListener(MouseEvent.CLICK, onClick);
			
			//this.parent.removeChild(this);
				
				
				
				//parent.removeChildAt(parent.getChildIndex(this));
				//myChannel.stop();
				
				
				
			
		}
		
	}
}