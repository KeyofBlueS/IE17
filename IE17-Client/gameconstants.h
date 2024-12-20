#pragma once

namespace coordinates {
    Vector CreateActorPos{ 3.35f, 1.0f, -22.22f }; //temporary coords, the cords are the player spawn cords for museum level at the docks
    Vector LightRGB{ 5.35f, 1.0f, 40.22f };
}

namespace info {
    const char* levelres = "Level Restarted";
    const char* aboutbuild = "IE17 " STR(IE17ver) " Compiled at : " STR(__DATE__) " in " STR(__TIME__);
    const char* about = "IE17 is a project aimed to reverse engineer some functions from Ghostbusters The Video Game Remaster. by sakis720";
}

namespace errorMsg {
    const char* crashedgametittle = "Game Crashed";
    const char* crashedgame = "If you are seeing this the game has crashed, this 'Legacy' print function is parsley broken";
}