// PlayState is our main game.

package;

import org.flixel.FlxG;
import org.flixel.FlxState;
import org.flixel.FlxGroup;
import org.flixel.FlxText;

class PlayState extends FlxState {

	public var bullets:FlxGroup;

	var enemies:FlxGroup;
	var player:Player;
	var scoreText:FlxText;
	var exit:Exit;
	var wall:Wall; 

	var totalEnemies:Int;

	override public function create():Void {


		player = new Player(FlxG.width/2-20, FlxG.height-70);
		add(player);

		exit = new Exit(300,-50); 
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
		FlxG.switchState(new A1());
	}

}