package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{

	public var sprTracker:FlxSprite;
	public var char:String;
	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		antialiasing = true;
		this.char = char;
		switch (char) {

			case 'dio':
				loadGraphic(Paths.image('icons/DIO', 'dio'), true, 150, 150);
				animation.add('dio', [0, 1], 0, false, isPlayer);

		case 'koichi':
				loadGraphic(Paths.image('icons/koichi', 'dio'), true, 150, 150);
				animation.add('koichi', [0, 1], 0, false, isPlayer);

		case 'koichibf':
				loadGraphic(Paths.image('icons/koichibf', 'dio'), true, 150, 150);
				animation.add('koichibf', [0, 1], 0, false, isPlayer);

			default:
				loadGraphic(Paths.image('iconGrid'), true, 150, 150);

				animation.add('bf-car', [0, 1], 0, false, isPlayer);
				animation.add('bf-christmas', [0, 1], 0, false, isPlayer);
				animation.add('bf-pixel', [21, 21], 0, false, isPlayer);
				animation.add('spooky', [2, 3], 0, false, isPlayer);
				animation.add('pico', [4, 5], 0, false, isPlayer);
				animation.add('mom', [6, 7], 0, false, isPlayer);
				animation.add('mom-car', [6, 7], 0, false, isPlayer);
				animation.add('tankman', [8, 9], 0, false, isPlayer);
				animation.add('face', [10, 11], 0, false, isPlayer);
				animation.add('dad', [12, 13], 0, false, isPlayer);
				animation.add('senpai', [22, 22], 0, false, isPlayer);
				animation.add('senpai-angry', [22, 22], 0, false, isPlayer);
				animation.add('spirit', [23, 23], 0, false, isPlayer);
				animation.add('bf-old', [14, 15], 0, false, isPlayer);
				animation.add('gf', [16], 0, false, isPlayer);
				animation.add('StandGF', [16], 0, false, isPlayer);
				animation.add('bf', [0, 1], 0 , false, isPlayer);

			
				

				switch(char)
				{
					case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'spirit' | 'gf-pixel':
						antialiasing = false;
				}

		}
		animation.play(char);
		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}