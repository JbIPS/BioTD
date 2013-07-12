package ;

import flash.display.Graphics;
import flash.display.Shape;
import haxe.Timer;
import org.flixel.util.FlxPoint;
import org.flixel.FlxG;
import org.flixel.FlxGroup;
import org.flixel.FlxSprite;

class Tower extends FlxSprite{

	static inline var numPlayerBullets:Int = 18;

	public var range: Int = 50;
	public var fireRate: Float = 1;
	public var bullets: FlxGroup;

	private var lastFired: Float = 0;

	public function new(x:Float = 0, y:Float = 0)
	{
		super(x, y);
		loadGraphic("assets/data/default.png");
		var rangeSprite = new FlxSprite();
		rangeSprite.makeGraphic(range*2, range*2, 0x00000000);
		rangeSprite.alpha = 0.2;
		rangeSprite.x = x - rangeSprite.width/2+ width/2;
		rangeSprite.y = y - rangeSprite.height/2+height/2;
		rangeSprite.drawCircle(rangeSprite.width/2, rangeSprite.height/2, range, 0xFF0000);

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
		cast(FlxG.state, PlayState).ranges.add(rangeSprite);
		cast(FlxG.state, PlayState).rangeToTower.set(rangeSprite, this);

	}

	public function fire(target: FlxPoint):Void
	{
		if(Timer.stamp() - lastFired > fireRate){
			var bullet = cast(bullets.getFirstAvailable(), FlxSprite);
			if(bullet != null){
				bullet.reset(x + width/2 - bullet.width/2, y);
				bullet.velocity.x = (target.x - bullet.x)*7;
				bullet.velocity.y = (target.y - bullet.y)*7;
			}
			lastFired = Timer.stamp();
		}
	}
}
