package ;

import org.flixel.util.FlxPoint;
import org.flixel.FlxSprite;

class Enemy extends FlxSprite{

	public var speed: Int = 20;

	private var maxHealth: Int = 2;

	public function new(x: Float, y: Float)
	{
		super(x, y);
		loadGraphic("assets/data/Enemy2.png", true, 23, 23);
		addAnimation("normal", [0, 1], 5);
		addAnimation("die", [2, 3]);
		origin.y = height;
	}

	public function hit():Void
	{
		health--;
		if(health == 0)
			play("die");
	}

	override public function update():Void
	{
		if(finished && health <= 0)
			kill();
		super.update();
	}

	override public function revive():Void
	{
		health = maxHealth;
		super.revive();
	}

}
