function create() {
    stage.defaultCamZoom = 0.8;
    var bg:FlxSprite = new FlxSprite(-1000, -500).loadGraphic(Paths.image('bgWalls'));
	bg.antialiasing = true;
	bg.scrollFactor.set(0.2, 0.2);
	bg.active = false;
	bg.scale.set(0.8, 0.8);
	bg.updateHitbox();
	stage.add(bg);

	var upperBoppers = new FlxSprite(-240, -90);
	upperBoppers.frames = Paths.getSparrowAtlas('upperBop');
	upperBoppers.animation.addByPrefix('bop', "Upper Crowd Bob", 12, false);
	upperBoppers.antialiasing = true;
	upperBoppers.scrollFactor.set(0.33, 0.33);
	upperBoppers.setGraphicSize(Std.int(upperBoppers.width * 0.85));
	upperBoppers.updateHitbox();
	if(FlxG.save.data.distractions) stage.add(upperBoppers);
    stage.publicSprites["upperBoppers"] = upperBoppers;

	var bgEscalator = new FlxSprite(-1100, -600).loadGraphic(Paths.image('bgEscalator'));
	bgEscalator.antialiasing = true;
	bgEscalator.scrollFactor.set(0.3, 0.3);
	bgEscalator.active = false;
	bgEscalator.scale.set(0.9, 0.9);
	bgEscalator.updateHitbox();
	stage.add(bgEscalator);

	

	var tree:FlxSprite = new FlxSprite(370, -250).loadGraphic(Paths.image('christmasTree'));
	tree.antialiasing = true;
	tree.scrollFactor.set(0.40, 0.40);
	stage.add(tree);

	var bottomBoppers = new FlxSprite(-300, 140);
	bottomBoppers.frames = Paths.getSparrowAtlas('bottomBop');
	bottomBoppers.animation.addByPrefix('bop', 'Bottom Level Boppers', 12, false);
	bottomBoppers.antialiasing = true;
	bottomBoppers.scrollFactor.set(0.9, 0.9);
	bottomBoppers.scale.set(1, 1);
	bottomBoppers.updateHitbox();
	if(FlxG.save.data.distractions) stage.add(bottomBoppers);
    stage.publicSprites["bottomBoppers"] = bottomBoppers;


	var fgSnow = new FlxSprite(-600, 700).loadGraphic(Paths.image('fgSnow'));
	fgSnow.active = false;
	fgSnow.antialiasing = true;
	stage.add(fgSnow);

	var santa = new FlxSprite(-840, 150);
	santa.frames = Paths.getSparrowAtlas('santa');
	santa.animation.addByPrefix('idle', 'santa idle in fear', 12, false);
	santa.antialiasing = true;
	if (FlxG.save.data.distractions) stage.add(santa);
    stage.publicSprites["santa"] = santa;
}

function reposCharacters() {
	PlayState.dad.x -= 500;
	PlayState.boyfriend.x += 200;
}

function beatHit() {
    if (FlxG.save.data.distractions) {
        stage.publicSprites["upperBoppers"].animation.play('bop', true);
        stage.publicSprites["bottomBoppers"].animation.play('bop', true);
        stage.publicSprites["santa"].animation.play('idle', true);
    }
}