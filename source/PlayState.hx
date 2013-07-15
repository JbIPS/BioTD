package ;

import openfl.Assets;
import org.flixel.FlxTilemap;
import org.flixel.plugin.MouseInteractionMgr;
import haxe.Timer;
import org.flixel.FlxObject;
import org.flixel.util.FlxPoint;
import org.flixel.FlxSprite;
import org.flixel.FlxGroup;
import org.flixel.FlxText;
import org.flixel.FlxState;
import org.flixel.FlxG;

class PlayState extends FlxState
{
	public var towers: FlxGroup;
	public var rangeToTower: Map<FlxSprite, Tower>;

	var monsters: FlxGroup;
	var bullets: FlxGroup;

	var lastMonster: Float = 0;

	/**
	 * Function that is called up when to state is created to set it up.
	 */
	override public function create():Void
	{
		FlxG.debug = true;
		// Set a background color
		FlxG.bgColor = 0xff131c1b;
		// Show the mouse (in case it hasn't been disabled)
		#if !FLX_NO_MOUSE
		FlxG.mouse.show();
		#end
		FlxG.addPlugin(new MouseInteractionMgr());

		// Map
		var map = new FlxTilemap();
		map.loadMap(Assets.getText("assets/data/mapCSV_Group1_Map1.csv"), "assets/data/autotiles_alt.png", 8,8);
		add(map);

		monsters = new FlxGroup(20);
		var sprite:FlxSprite;
		for(i in 0...20)
		{
			sprite = new FlxSprite( -100, -100);
			sprite.makeGraphic(2, 8, 0xff00FF00);
			sprite.exists = false;
			monsters.add(sprite);
		}
		add(monsters);

		towers = new FlxGroup(100);
		add(towers);

		rangeToTower = new Map<FlxSprite, Tower>();
		bullets = new FlxGroup();

		super.create();
	}

	override public function update():Void
	{
		super.update();

		if(Timer.stamp() - lastMonster > 2){
			var monster = cast(monsters.getFirstAvailable(), FlxSprite);
			if(monster != null){
				monster.reset(0, FlxG.height*Math.random());
				monster.velocity.x = 20;
				lastMonster = Timer.stamp();
			}
		}

		FlxG.overlap(monsters, towers, onEnterRange);

		// Tower creation
		if(FlxG.mouse.justPressed()){
			var tower = new Tower(FlxG.mouse.screenX, FlxG.mouse.screenY);
			add(tower);
			towers.add(tower);
			bullets.add(tower.bullets);
		}

		FlxG.collide(monsters, bullets, onHit);
	}

	private function onEnterRange(object1:FlxObject, range:FlxSprite):Void
	{
		if(rangeToTower.exists(range))
			rangeToTower.get(range).fire(object1.getScreenXY());
	}

	private function onHit(object1:FlxObject, object2:FlxSprite):Void
	{
		object1.kill();
		object2.kill();
	}
}
