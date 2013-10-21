// Basic wall

package ;

import org.flixel.FlxG;
import org.flixel.FlxSprite;

class Wall2 extends FlxSprite {
	public function new(startX:Float, startY:Float):Void {
		super(startX, startY);
		//loadGraphic("assets/wallA1.png");
		makeGraphic(200, 30, 0xff00ff00);
	}

	override public function update():Void {
		super.update();
	}
}