//Defining the file and path
var file;
file = file_text_open_write(working_directory + "buildingSpawns.txt");
//Gathering the values and converting them to strings
var sizeOneBlocks = string(global.intSizeOneBlocks);
var sizeTwoBlocks = string(global.intSizeTwoBlocks);
var blockOne = string(global.intBlockOneCounter);
var blockTwo = string(global.intBlockTwoCounter);
var blockThree = string(global.intBlockThreeCounter);
var blockFour = string(global.intBlockFourCounter);
var blockFive = string(global.intBlockFiveCounter);
var blockSix = string(global.intBlockSixCounter);
var blockSeven = string(global.intBlockSevenCounter);
var blockEight = string(global.intBlockEightCounter);

var blockHQ = "0";
if(global.bolPlacedHQ == true){
    blockHQ = "1";    
}
//Writting to file
file_text_write_string(file, "******************************************************************************************************");
file_text_writeln(file);
file_text_write_string(file, "Size One blocks: ");
file_text_write_string(file, sizeOneBlocks); 
file_text_writeln(file);
file_text_write_string(file, "Size Two blocks: ");
file_text_write_string(file, sizeTwoBlocks);
file_text_writeln(file);
file_text_write_string(file, "Block One Spawns: ");
file_text_write_string(file, blockOne);
file_text_writeln(file);
file_text_write_string(file, "Block Two Spawns: ");
file_text_write_string(file, blockTwo);
file_text_writeln(file);
file_text_write_string(file, "Block Three Spawns: ");
file_text_write_string(file, blockThree);
file_text_writeln(file);
file_text_write_string(file, "Block Four Spawns: ");
file_text_write_string(file, blockFour);
file_text_writeln(file);
file_text_write_string(file, "Block Five Spawns: ");
file_text_write_string(file, blockFive);
file_text_writeln(file);
file_text_write_string(file, "Block Six Spawns: ");
file_text_write_string(file, blockSix);
file_text_writeln(file);
file_text_write_string(file, "Block Seven Spawns: ");
file_text_write_string(file, blockSeven);
file_text_writeln(file);
file_text_write_string(file, "Block Eight Spawns: ");
file_text_write_string(file, blockEight);
file_text_writeln(file);
file_text_write_string(file, "Block HQ Spawns: ");
file_text_write_string(file, blockHQ);
file_text_writeln(file);
file_text_write_string(file, "******************************************************************************************************");

file_text_writeln(file);
file_text_close(file);
