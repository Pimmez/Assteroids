package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.ui.Mouse;
	import flash.events.MouseEvent;
	/**
	 * ...
	 * @author Nathan Nieuwenhuizen
	 */
	public class mainGame extends Sprite 
	{
		private var background:Background = new Background();
		private var button: ReturnButton = new ReturnButton();
		private var bar:Bar = new Bar();
		private var endship:endShip;
		private var player: Player = new Player();
		private var rocks:Array;
		private var rock2:Rock3;
		private var ammountRocks:int;
		public var xPos:int;
		public var yPos:int;
		public var menu:mainMenu;
		public function mainGame():void 
		{
			
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, init);
			addChild(background);
			addChild(bar);
			addChild(button);
			addChild(player);
			
			ammountRocks = 1;
			rocks = new Array();
			for (var i:int = 0; i < 5; i++) 
				{
					
					rocks.push(new Rock3());
					addChildAt(rocks[i], i + 1);
					ammountRocks ++;
				}
			this.addEventListener(MouseEvent.CLICK, onClickRock);
			this.addEventListener(Event.ENTER_FRAME, Loop);
			
		}
		
		public function Loop(e:Event):void
		{
		}
		public function onClickRock(e:MouseEvent):void 
		{
			/*removeChild(bar);
			removeChild(button);
			addChild(bar);
			addChild(button);
			*/
			var length:int = rocks.length;
			trace(ammountRocks);
			if (mouseX >= button.x && mouseX <= button.x +button.width && mouseY >= button.y && mouseY <= button.y +button.height)
				{
					//myChannel.stop();
					removeEventListener(MouseEvent.CLICK, onClickRock);
					//rock2.removeEventListener(Event.ENTER_FRAME, loop);
					removeChild(button);
					removeChild(background);
					removeChild(player);
					removeChild(bar);
					for (var i:int = 0; i < length; i++) 
					{
						
						rocks[i].destroy();
						//rocks[i].die();
					}
						
					
					menu = new mainMenu();
					addChild(menu);
				}
				
			else{
				for (var i:int = length-1; i >=0; i--) 
				{
					if (rocks[i].hitTestPoint(mouseX, mouseY))
					{
						rocks[i].small();
						rock2 = new Rock3();
						addChild(rock2);
						rocks.push(rock2);
						//addChildAt(rocks[i], i + 1);
						ammountRocks ++;
						rock2.x = mouseX;
						rock2.y = mouseY;
						rock2.scaleX = rocks[i].scaleX;
						rock2.scaleY = rocks[i].scaleY;
						if (rock2.scaleX <= 0.2)
						{
							removeChild(rock2);
							ammountRocks --;
						}
						if (rocks[i].tooSmall == true)
						{
							rocks[i].destroy();
							
							removeChild(rocks[i]);
							rocks.splice(i, 1);
							ammountRocks--
						}
						if (ammountRocks == 1)
						{
							endship = new endShip();
							addChild(endship);
							for (i = 0; i < 40; i++) 
							{
								
								rocks.push(new Rock3());
								rocks[i].scaleX = rocks[i].scaleY = 0.5;
								rocks[i].y = 100;
								rocks[i].maxSpeed = 5;
								addChildAt(rocks[i], i + 1);
								ammountRocks ++;
							}
							
							
						}
						
						break;
					}
			}
		}
		}
		
		
		
	}
	
}