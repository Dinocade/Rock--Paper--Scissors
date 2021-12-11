/// @desc Initialise the game

// Note
//--------------------------------------
// The Gamemaker engine does not require variables to have their data type to be declared, as all variables are declared as dynamic data objects during compiling.

randomize();	// Randomise the rolls

// State machine
state = state_input;	// Initialise state machine
data =	[];		// Injects data into the state

// Player vars
player_rps	= noone;// Players RPS choice
player_array	= [];	// Array containing the Player's RPS choices up to a max of 10;
player_round	= 0;	// Tally of rounds
player_wins	= 0;	// Total wins


// CPU vars
cpu_rps		= noone;// CPU's rps choice - Set to -4 otherwise it may display a pseudo choice to the player.
cpu_round	= 0;	// Tally of rounds
cpu_wins	= 0;	// Total wins

// Other
rounds_played	= 0;	// Total games played
game_string	= "";	// String for displaying game states

// Set the font
draw_set_font(fntDefault);

// Text string struct
text =
{
	input:	"Choose your weapon!",
	fight:	"Fight!",
	
	// Round result
	win:	"You win!",
	lose:	"You lose!",
	draw:	"It's a draw!",
	
	// Overall winner
	playerWin:	"You won the game!",
	cpuWin:		"CPU won the game!",
}
game_string = text.input;	// Set the initial broadcast message to the player.

// Sprite
image_speed = 0;
image_index = 0;
sprite_index = -1;

// Debugging
player_string	= "";	// String of RPS choice
cpu_string	= "";	// String of RPS choice
probabilityTable = "";	// String for User probability table
debug = false;		// Draw debug text
//repeat(5){	array_push( player_array, irandom(2));}	// Debug fill Player's RPS array
