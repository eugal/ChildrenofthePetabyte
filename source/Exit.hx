//Exit spot to load next stage. 

package ;

import org.flixel.FlxG;
import org.flixel.FlxSprite;

class Exit extends FlxSprite {
	public function new(startX:Float, startY:Float):Void {
		super(startX, startY);
		makeGraphic(60, 60, 0xff00ff00);
	}

	override public function update():Void {
		super.update();
	}
}