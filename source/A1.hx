// A1 

package;

import org.flixel.FlxG;
import org.flixel.FlxState;
import org.flixel.FlxGroup;
import org.flixel.FlxText;

class A1 extends FlxState {
 

	var player:Player;
	var scoreText:FlxText;
	var exit:Exit;
	var wall:Wall; 

	var totalEnemies:Int;

	override public function create():Void {


		player = new Player(FlxG.width/2-20, FlxG.height-70);
		add(player);

		exit = new Exit(200,-50); 
		add(exit);

		super.create();
	}
	
	override public function update():Void {
		FlxG.overlap(wall, player, playerWall);
		FlxG.overlap(exit, player, playerExit);

		super.update();
	}	


	
	//Player Colides with Enemy do this
	public function playerWall(wall:Wall, player:Player):Void{
		player.kill(); 
	}
	public function playerExit(exit:Exit, player:Player):Void{
		FlxG.switchState(new EndState());

	}

}