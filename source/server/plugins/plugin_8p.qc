/*
	server/plugins/plugin_8p.qc

	The plugin that powers chat commands for NZP: Eight Players.

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

//
// ChatPlugin_8pCommand()
// "8p" command, gives player stats for those who can't read their own
//
float(string params) ChatPlugin_8pCommand =
{
    CSQC_SendChatMessageToPlayer(255, sprintf("[8p] You have %f points", self.points), self);

    return 0;
};

#endif // FTE