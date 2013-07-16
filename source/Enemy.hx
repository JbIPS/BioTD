package ;

import org.flixel.FlxSprite;

class Enemy extends FlxSprite{

	public var speed: Int = 20;

	public function new(x: Float, y: Float)
	{
		super(x, y);
		loadGraphic("assets/data/enemy1.png", true, 27, 27);
		addAnimation("normal", [0, 1, 2, 3, 4], 10);
	}
}
