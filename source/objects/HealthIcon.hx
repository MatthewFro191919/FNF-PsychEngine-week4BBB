package objects;

import objects.Character;

class HealthIcon extends FlxSprite
{
	public var dad:Character = null;
        public var gf:Character = null;
	public var boyfriend:Character = null;

	public var sprTracker:FlxSprite;
	private var isPlayer:Bool = false;
	private var char:String = '';
	var kadecharacters:Array<String> = ['bf','baby','homer','freddy','scout','miku','pewdiepie','tinky','monstershit','running-goblin','evil-baby','gametoons','screamer','alien','bob','player-baby','bob-ron','ron','bobcreature','bobdead','bf-baby','bf-baby-goblin','happy-baby','kitty','myth','window-watcher','glassgoblin','glassbaby',];

	public function new(char:String = 'face', isPlayer:Bool = false, ?allowGPU:Bool = true)
	{
		super();
		this.isPlayer = isPlayer;
		changeIcon(char, allowGPU);
		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 12, sprTracker.y - 30);
	}

	private var iconOffsets:Array<Float> = [0, 0];
	public function changeIcon(char:String, ?allowGPU:Bool = true) {
		if(this.char != char) {
				loadGraphic(Paths.image('old-icons/iconGrid'), true, 150, 150);

				antialiasing = true;
				animation.add('bf', [0, 1], 0, false, isPlayer);
				animation.add('dad', [12, 13], 0, false, isPlayer);
				animation.add('bf-old', [14, 15], 0, false, isPlayer);
				animation.add('gf', [16], 0, false, isPlayer);
				animation.add('gf-christmas', [16], 0, false, isPlayer);
				animation.add('gf-pixel', [16], 0, false, isPlayer);
				animation.add('monster', [19, 20], 0, false, isPlayer);
				animation.add('baby', [24, 25], 0, false, isPlayer);
				animation.add('homer', [26, 27], 0, false, isPlayer);	
				animation.add('freddy', [28, 29], 0, false, isPlayer);
				animation.add('scout', [30, 30], 0, false, isPlayer);
				animation.add('miku', [31, 32], 0, false, isPlayer);
				animation.add('pewdiepie', [33, 34], 0, false, isPlayer);
				animation.add('tinky', [35, 36], 0, false, isPlayer);
				animation.add('monstershit', [19, 20], 0, false, isPlayer);
				animation.add('running-goblin', [37, 38], 0, false, isPlayer);
				animation.add('evil-baby', [39, 40], 0, false, isPlayer);
				animation.add('gametoons', [41, 42], 0, false, isPlayer);
				animation.add('screamer', [43, 43], 0, false, isPlayer);
				animation.add('alien', [16], 0, false, isPlayer);
				animation.add('bob', [44, 45], 0, false, isPlayer);
				animation.add('player-baby', [39,25], 0, false, isPlayer);
				animation.add('bob-ron', [46, 47], 0, false, isPlayer);
				animation.add('ron', [46, 47], 0, false, isPlayer);
				animation.add('bobcreature', [48, 49, 50, 49], 4, true, isPlayer);
				animation.add('bobdead', [51], 0, false, isPlayer);
				animation.add('bf-baby', [52, 53], 0, false, isPlayer);
				animation.add('bf-baby-goblin', [54, 55], 0, false, isPlayer);
				animation.add('happy-baby', [24, 25], 0, false, isPlayer);
				animation.add('kitty', [56, 57], 0, false, isPlayer);
				animation.add('myth', [24, 25], 0, false, isPlayer);
				animation.add('window-watcher', [58, 59], 0, false, isPlayer);
				animation.add('glassgoblin', [60, 61], 0, false, isPlayer);
				animation.add('glassbaby', [62, 63], 0, false, isPlayer);
				animation.play(char);
			}
		}
	}

	public var autoAdjustOffset:Bool = true;
	override function updateHitbox()
	{
		super.updateHitbox();
		if(autoAdjustOffset)
		{
			offset.x = iconOffsets[0];
			offset.y = iconOffsets[1];
		}
	}

	public function getCharacter():String {
		return char;
	}
}
