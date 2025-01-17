function onCreatePost() {
    importLib("flixel.tweens.FlxEase");
}
function onBeatHit(beat) {
    switch (beat) {
        case 8, 136, 360: game.bopSpeed = 2;
        case 72: game.bopSpeed = 1;
        case 168:
            game.bopSpeed = 4;
            FlxTween.tween(game, { defaultCamZoom: .88 }, .2, { ease: FlxEase.quadOut });
        case 200:
            FlxTween.tween(game, { defaultCamZoom: .9 }, .2, { ease: FlxEase.quadOut });
        case 208, 224:
            game.bopSpeed = 1;
            game.camBumpZoom = 0.03;
            game.hudBumpZoom = 0.05; 
            FlxTween.tween(game, { defaultCamZoom: 1.07 }, .2, { ease: FlxEase.quadOut });
        case 216:
            game.bopSpeed = 4;
            game.camBumpZoom = 0.015;
            game.hudBumpZoom = 0.03;
            FlxTween.tween(game, { defaultCamZoom: .9 }, .2, { ease: FlxEase.quadOut });
        case 232:
            game.bopSpeed = 1;
            game.camBumpZoom = 0.015;
            game.hudBumpZoom = 0.03;
            FlxTween.tween(game, { defaultCamZoom: .9 }, .2, { ease: FlxEase.quadOut });
        case 264:
            game.bopSpeed = 2;
            FlxTween.tween(game, { defaultCamZoom: .99 }, .2, { ease: FlxEase.quadOut });
        case 296:
            game.bopSpeed = 1;
            FlxTween.tween(game, { defaultCamZoom: .9 }, .2, { ease: FlxEase.quadOut });
        case 424: game.bopSpeed = 4;
    }
}