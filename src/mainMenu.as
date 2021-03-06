package
{
import flash.display.Sprite;
import flash.events.Event;
//import flash.events.KeyboardEvent;
import flash.ui.Mouse;
import flash.events.MouseEvent;
//import flash.media.Sound;
//import flash.net.URLRequest;
//import flash.media.SoundChannel;
/**
* ...
* @author Nathan Nieuwenhuizen
*/
	public class mainMenu extends Sprite
	{
		private var button:PlayButton;
		private var menu:Menu;
		private var main:mainGame;
		
		
		//private var backMusic:Sound;
		//private var load:URLRequest;
		//private var myChannel:SoundChannel;
			public function mainMenu():void
			{
				
				if (stage) init();
				else addEventListener(Event.ADDED_TO_STAGE, init);
				
			}
			
			public function init(e:Event = null):void
			{	
				removeEventListener(Event.ADDED_TO_STAGE, init);

				//var backMusic:Sound = new Sound(new URLRequest("../img/menu.mp3")); 
				//myChannel = backMusic.play();
				menu = new Menu();
				addChild(menu);
				button = new PlayButton();
				addChild(button);
				var masker:Masker = new Masker();
				addChild(masker);
				this.mask = masker;
				
				
				this.addEventListener(Event.ENTER_FRAME, Loop);
				this.addEventListener(MouseEvent.CLICK, onClick);
			}
			public function Loop(e:Event):void
			{
				//this.x += 5;
			}
			
			private function onClick(e:MouseEvent):void 
			{
				if (mouseX >= button.x && mouseX <= button.x +button.width && mouseY >= button.y && mouseY <= button.y +button.height)
				{
					//myChannel.stop();
					removeEventListener(MouseEvent.CLICK, onClick);
					removeEventListener(Event.ENTER_FRAME, Loop);
					removeChild(menu);
					removeChild(button);
					menu = null;
					button = null;
					
					main = new mainGame();
					addChild(main);
					
				}
			}		
	}
}