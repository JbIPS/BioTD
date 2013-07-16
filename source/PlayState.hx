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
	var map: FlxTilemap;

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
		map = new FlxTilemap();
		map.loadMap(Assets.getText("assets/data/mapCSV_Group1_Map.csv"), "assets/data/World.png", 16,16);
		map.setTileProperties(2, 0);
		add(map);

		// Enemies
		monsters = new FlxGroup(20);
		var enemy:Enemy;
		for(i in 0...20)
		{
			enemy = new Enemy( -100, -100);
			//enemy.makeGraphic(2, 8, 0xffFF0000);
			enemy.exists = false;
			monsters.add(enemy);
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
			var monster = cast(monsters.getFirstAvailable(), Enemy);
			if(monster != null){
				monster.reset(0, 256+24*Math.random());
				lastMonster = Timer.stamp();
				var path = map.findPath(new FlxPoint(monster.x, monster.y), new FlxPoint(1015,192));
				if(path == null)
					trace("no path");
				else
					monster.followPath(path, monster.speed);
				monster.play("normal");
			}
		}

		FlxG.overlap(monsters, towers, onEnterRange);

		// Tower creation
		if(FlxG.mouse.justPressed() && map.getTile(Math.floor(FlxG.mouse.screenX/16), Math.floor(FlxG.mouse.screenY/16)) == 1){
			var tower = new Tower(FlxG.mouse.screenX - FlxG.mouse.screenX%16, FlxG.mouse.screenY-FlxG.mouse.screenY%16);
			add(tower);
			towers.add(tower);
			bullets.add(tower.bullets);
		}

		FlxG.collide(monsters, bullets, onHit);
	}

	private function onEnterRange(object1:FlxObject, range:FlxSprite):Void
	{
		if(rangeToTower.exists(range))
			rangeToTower.get(range).fire(cast(object1, Enemy));
	}

	private function onHit(object1:FlxObject, object2:FlxSprite):Void
	{
		object1.kill();
		object2.kill();
	}
}
