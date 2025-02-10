/*
	server/plugins/plugin_admin.qc

	Allows admins to kick & ban users without going into the server
    console.

	Copyright (C) 2025 ToasterPanic

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
// ToastAdmin_Kick()
// "!kick command, kicks players
//
float(string params) ToastAdmin_Kick =
{
    CSQC_SendChatMessageToPlayer(255, sprintf("[8p] You have %f points", self.points), self);

	localcmd(sprintf("[ToastAdmin] Kicked %s", params)); 

    return 0;
};

#endif // FTE