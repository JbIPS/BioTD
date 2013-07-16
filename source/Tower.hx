package ;

import org.flixel.plugin.MouseInteractionMgr;
import flash.display.Graphics;
import flash.display.Shape;
import haxe.Timer;
import org.flixel.util.FlxPoint;
import org.flixel.FlxG;
import org.flixel.FlxGroup;
import org.flixel.FlxSprite;

class Tower extends FlxGroup{

	static inline var numPlayerBullets:Int = 18;

	public var range: Int = 50;
	public var fireRate: Float = 1;
	public var bullets: FlxGroup;

	private var lastFired: Float = 0;
	private var towerSprite: FlxSprite;
	private var rangeSprite: FlxSprite;

	public function new(x: Float = 0, y: Float = 0)
	{
		super();

		//Tower
		towerSprite = new FlxSprite();
		towerSprite.loadGraphic("assets/data/default.png");
		towerSprite.x = x;
		towerSprite.y = y;

		// Range
		rangeSprite = new FlxSprite();
		rangeSprite.makeGraphic(range*2, range*2, 0x00000000);
		rangeSprite.alpha = 0.2;
		rangeSprite.x = towerSprite.x - rangeSprite.width/2+ towerSprite.width/2;
		rangeSprite.y = towerSprite.y - rangeSprite.height/2+towerSprite.height/2;
		rangeSprite.drawCircle(rangeSprite.width/2, rangeSprite.height/2, range, 0xFF0000);
		rangeSprite.visible = false;

		// Bullets
		bullets = new FlxGroup(numPlayerBullets);
		var sprite:FlxSprite;
		for(i in 0...numPlayerBullets)
		{
			sprite = new FlxSprite( -100, -100);
			sprite.makeGraphic(2, 2);
			sprite.exists = false;
			bullets.add(sprite);
		}
		cast(FlxG.state, PlayState).add(bullets);
		add(rangeSprite);
		add(towerSprite);
		cast(FlxG.state, PlayState).rangeToTower.set(rangeSprite, this);

		MouseInteractionMgr.addSprite(towerSprite, null, null, toggleRangeVisibility, toggleRangeVisibility);

	}

	public function fire(target: Enemy):Void
	{
		if(Timer.stamp() - lastFired > fireRate){
			var bullet = cast(bullets.getFirstAvailable(), FlxSprite);
			if(bullet != null){
				bullet.reset(towerSprite.x + towerSprite.width/2 - bullet.width/2, towerSprite.y);
				bullet.velocity.x = (target.x+target.width/2 - bullet.x)*7;
				bullet.velocity.y = (target.y+target.height/2 - bullet.y)*7;
			}
			lastFired = Timer.stamp();
		}
	}

	public function toggleRangeVisibility(range: FlxSprite):Void
	{
		rangeSprite.visible = !rangeSprite.visible;
	}
}
