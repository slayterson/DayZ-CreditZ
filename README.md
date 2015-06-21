#DayZ-CreditZ
####============

#Credits screen for DayZ.

#---===Description===---

Creates a custom death screen for DayZ. Also has the
ability to display custom text over the picture that can, and by default 
does, show player stats on death.

This is going to be a pretty easy one people. There are two edits, and
some customization. So let's get started.

#---===Install===---

I will say that a basic understanding of PBO files is required, if you
do not know what that is, please google it. :) There are tons of scripts
out there to get started.

1) First off edit description.ext in your mission PBO. Add this code:

~~~~java
// DayZ CreditZ
class RscTitles
{
titles[] = {"creditz"};
 
class creditz {
   idd = -1;
   movingEnable = 0;
   duration = 10;
   fadein = 2;
   fadeout = 2;
   name="creditz";
 
   controls[]={"Picture"};
 
   class Picture {
      x=-0.5; y=-0.5; w=2.0; h=2.0;
      text="addons\CreditZ\DC1.paa";
      sizeEx = -1;
      type=0;
      idc=-1;
      style=48;
      colorBackground[]={0,0,0,0};
      colorText[]={1,1,1,1};
      font="Bitstream";
      };
   };
};
~~~~
2) This edit may be different if you have changed this line for another
script. If this is the case. If you have a class RscTitles already.
right under it add.

~~~~java
#include "addons\CreditZ\dc_disp.hpp"   
~~~~
   
Next open up compiles.sqf. You will need to find this line:   

~~~~java
player_death =				compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_death.sqf";
~~~~

Change it so it matches this line:

~~~~java
player_death =				compile preprocessFileLineNumbers "addons\CreditZ\player_death.sqf";
~~~~
  
   
3) There is no step 3 :)   

   
This actually completes the install. Now for the customization.
   
---===Customize It===---
First place you may want to look at is this code.

~~~~java   
class Picture {
      x=-0.5; y=-0.5; w=2.0; h=2.0;
      text="addons\CreditZ\DC1.paa";
      sizeEx = -1;
      type=0;
      idc=-1;
      style=48;
      colorBackground[]={0,0,0,0};
      colorText[]={1,1,1,1};
      font="Bitstream";
};
~~~~
You can place the picture with x= and y=. w= and h= are for the size
of the image. Also the text="addons\CreditZ\DC1.paa" is where the
image will be. Please make sure it’s paa, as jpg will not work like this.

Also the file in the CreditZ folder player_death.sqf is the default
one from the DayZ files, with this edit in it:
~~~~java
//DayZ-CreditZ
1 cutRsc ["creditz","BLACK OUT",2];
sleep 2;
[] execVM "addons\CreditZ\roll.sqf";

This is instead of the default:

1 cutRsc ["DeathScreen","BLACK OUT",2];
~~~~java

This can be changed how you like, but don’t say I broke it :P
One last edit, the file roll.sqf actually as all of the code that
runs when the second half of the screen shows. This can be anything,
but in my experience, you will have problems with the text being
anywhere but the debug monitor area.

---===Credits... for CreditZ :D ===---
So, thanks for checking out this script, but before I leave I need
to thank some people.
Hangender for coming up with the first bit of code. Thread: 
http://www.opendayz.net/threads/death-screen.9204/
He came up with it, I just did a few edits and did this :D

Everyone on the dayz.st irc channel. Thanks for putting up with
my insane ramblings while I tried EVERY way getting text on my
death screen.

Also anyone else that gave me code and ideas along the way.
