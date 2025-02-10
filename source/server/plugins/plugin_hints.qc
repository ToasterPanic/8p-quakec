/*
	server/plugins/plugin_core.qc

	Map Vote plugin for Dedicated Servers.

	Copyright (C) 2021-2024 NZ:P Team

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

	See the GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to:

		Free Software Foundation, Inc.
		59 Temple Place - Suite 330
		Boston, MA  02111-1307, USA

*/
#ifdef FTE

string hintplugin_hints[] =
{
    "Quick Revive will resurrect you in Solo.",
    "Use Quick Revive to revive faster in Co-Op!",
    "Jugger-Nog increases your health.",
    "Speed Cola increases Reload speed.",
    "Speed Cola allows faster Barricade building",
    "Double Tap will improve Rate of Fire.",
    "Stamin-Up increases your Move Speed.",
    "Stamin-Up allows you to Sprint longer.",
    "PhD Flopper grants explosive immunity.",
    "Dive-to-prone with PhD to cause PAIN!",
    "Deadshot Daiquiri improves your accuracy.",
    "Deadshot Daiquiri removes sniper scope sway.",
    "Deadshot Daiquiri increases weapon accuracy.",
    "Carry three weapons with Mule Kick!",
    "Pack-A-Punch the Kar98k to get to round 500!",
    "NZ:P is on too many platforms to keep count of.",
    "Dive on top of your friends to win!",
    "Max Ammo doesn't refill your mag, so RELOAD!",
    "KA-BOOM!",
    "NZ:P has been in development since 2009.",
    "Hold a crawler and hunt for secrets.",
    "Also try FreeCS by eukara!",
    "Also try FreeHL by eukara!",
    "FTE is a pretty awesome Quake sourceport",
    "\"your lg is nothink on the lan\" - Cooller",
    "\"¦]\" - Cooller",
    "\"i'm not your chaotic on dm6\" - Cooller",
    "\"alltimes lucky\" - Cooller",
    "\"not my trouble\" - Cooller",
    "\"it's not internet\" - Cooller",
    "\"relax\" - Cooller",
    "Also try LibreQuake.",
    "Support the Internet Archive!",
    "Don't write your menus in CSQC, trust me!",
    "Use the Zap-O-Matic if you need to revive in a pinch.",
    "Don't try to statically link OpenSSL in MinGW!"
}

string HintPlugin_GetHint() =
{
    return hintplugin_hints[random() * hintplugin_hints.length];
};

// Spawn a timer entity.
entity timer = spawn();
timer.classname = "plugin_hints_giver";
timer.think = HintPlugin_GiveHint;
timer.nextthink = time + 120;

//
// HintPlugin_GiveHint(params)
// Sends a hint to players.
//
float(string params) HintPlugin_GiveHint =
{
    CSQC_SendChatMessage(255, sprintf("[TIP] %s", HintPlugin_GetHint()));
    timer.nextthink = time + 120;

    return 0;
};

HintPlugin_GiveHint()

#endif // FTE