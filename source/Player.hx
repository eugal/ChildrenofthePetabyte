// Basic player
package ;

import org.flixel.FlxG;
import org.flixel.FlxSprite;
import org.flixel.util.FlxAngle;


class Player extends FlxSprite {

	//var thrust:Float; 
	
	public function new(startX:Float, startY:Float):Void {
		super(startX, startY);
		makeGraphic(60, 20, 0xffffffff);
		//loadGraphic("assets/dataship2.png");
		antialiasing = true;
		//thrust = 0;
	}

	override public function update():Void {


		//Ships LEFT RIGHT
		angularVelocity = 0;
		if(FlxG.keys.LEFT)
			angularVelocity -= 240;
		if(FlxG.keys.RIGHT)
			angularVelocity += 240;

		//Thrust
		acceleration.x = 0;
		acceleration.y = 0;
		if(FlxG.keys.UP)
			FlxAngle.rotatePoint(0, 90, 0, 0, angle, acceleration);

		if(FlxG.keys.DOWN)
		FlxAngle.rotatePoint(0, 0, 0, 90, angle, acceleration);



		if(FlxG.keys.justPressed("SPACE") == true){
			 // var bullet:FlxSprite = PlayState.bullet.recycle();
    //                     bullet.reset(x + (width - bullet.width) / 2, y + (height - bullet.height) / 2);
    //                     bullet.angle = angle;
    //                     FlxAngle.rotatePoint(150, 0, 0, 0, bullet.angle, bullet.velocity);
    //                     bullet.velocity.x *= 2;
    //                     bullet.velocity.y *= 2;



			//FlxG.play("Shoot");
			//cast(FlxG.state, PlayState).bullets.add(new Bullet(x+20, y-20));

		}

		if (x < 0){
			x = 0;
		}
		if (x > FlxG.width-width){
			x = FlxG.width-width;

		}
				super.update();
	}
}