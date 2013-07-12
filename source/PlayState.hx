package ;

import org.flixel.util.FlxPoint;
import org.flixel.FlxSprite;
import org.flixel.FlxGroup;
import org.flixel.FlxText;
import org.flixel.FlxState;
import org.flixel.FlxG;

class PlayState extends FlxState
{

	var playerBullets: FlxGroup;
	var tower: Tower;

	/**
	 * Function that is called up when to state is created to set it up.
	 */
	override public function create():Void
	{
		// Set a background color
		FlxG.bgColor = 0xff131c1b;
		// Show the mouse (in case it hasn't been disabled)
		#if !FLX_NO_MOUSE
		FlxG.mouse.show();
		#end

		tower = new Tower();
		//tower.makeGraphic(200, 200, 0x00ff00);
		tower.loadGraphic("assets/data/default.png");
		tower.x = tower.y = 100;
		add(tower);

		var numPlayerBullets:Int = 18;
		playerBullets = new FlxGroup(numPlayerBullets);
		var sprite:FlxSprite;
		for(i in 0...numPlayerBullets)
		{
			sprite = new FlxSprite( -100, -100);
			sprite.makeGraphic(2, 8);
			sprite.exists = false;
			playerBullets.add(sprite);
		}
		add(playerBullets);

		super.create();
	}

	override public function update():Void
	{
		//This just says if the user clicked on the game to hide the cursor
		if(FlxG.mouse.justPressed()){
			//FlxG.mouse.hide();
			var bullet = cast(playerBullets.getFirstAvailable(), FlxSprite);
			if(bullet == null)
				bullet = cast(playerBullets.recycle(), FlxSprite);

			bullet.reset(tower.x + tower.width/2 - bullet.width/2, tower.y);

			var pos: FlxPoint = FlxG.mouse.getWorldPosition();
			bullet.velocity.y = FlxG.mouse.screenY - bullet.y;
			bullet.velocity.x = FlxG.mouse.screenX - bullet.x;
		}

		super.update();
	}
}
