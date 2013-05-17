/*pname = player;
zkills = player getVariable['zombieKills', 0];
hshots = player getVariable['headShots', 0];
bkills = player getVariable['banditKills', 0];
hkills = player getVariable['humanKills', 0];
level = player getVariable['humanity', 0];*/


/*2 cutText["Name Of Player: ",'PLAIN',2];
sleep 5;
2 cutText["Zombie Kills: ",'PLAIN',2];
sleep 5;
2 cutText["Head Shots: ",'PLAIN',2];
sleep 5;
2 cutText["Murders: ",'PLAIN',2];
sleep 5;
2 cutText["Bandit Kills: ",'PLAIN',2];
sleep 5;
2 cutText["Humanity Level: ",'PLAIN',2];
sleep 5;*/
hintSilent parseText format ["<t size='1.50' font='Bitstream' align='center' color='#CC0000'>%1</t><br/>
<t size='1.15' font='Bitstream' align='center' >[%8]</t><br/>
<t size='1.25' font='Bitstream' align='center' color='#FFDD33'>Survived %7 Days</t><br/><br/>
<t size='1.15' font='Bitstream' align='left' color='#FFBF00'>Zombies Killed: </t><t size='1.15' font='Bitstream' align='right'>%2</t><br/>
<t size='1.15' font='Bitstream' align='left' color='#FFBF00'>Headshots: </t><t size='1.15' font='Bitstream' align='right'>%3</t><br/>
<t size='0.95' font='Bitstream' align='left' color='#FFBF00'>Murders: </t><t size='0.95' font='Bitstream' align='right'>%4</t><br/>
<t size='0.95' font='Bitstream' align='left' color='#FFBF00'>Bandits Killed: </t><t size='0.95' font='Bitstream' align='right'>%5</t><br/>
<t size='1.15' font='Bitstream' align='left' color='#FFBF00'>Humanity: </t><t size='1.15' font='Bitstream' align='right'>%6</t><br/>
<t size='1.15' font='Bitstream' color='#5882FA'>Boats N Hoes</t><br/>",
	(name player),
	(player getVariable['zombieKills', 0]),
	(player getVariable['headShots', 0]),
	(player getVariable['humanKills', 0]),
	(player getVariable['banditKills', 0]),
	(player getVariable['humanity', 0]),
	(dayz_skilllevel),
	(gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'displayName'))
];