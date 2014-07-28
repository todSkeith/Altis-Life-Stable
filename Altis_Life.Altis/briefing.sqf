waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverrules","General Rules"];
player createDiarySubject ["policerules","Police Procedures/Rules"];
player createDiarySubject ["safezones","Safe Zones (No Killing)"];
//player createDiarySubject ["civrules","Civilian Rules"];
player createDiarySubject ["illegalitems","Illegal Activity"];
//player createDiarySubject ["gangrules","Gang Rules"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
player createDiarySubject ["controls","Controls"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
player createDiaryRecord["changelog",
		[
			"6/25/14",
				"
				Added: Placeable Persistant Storage Boxes<br/>
				Added: Entirely new Map system (declutter)<br/>
				Added: A new Changelog!<br/>
				Added: New Gas Stations!<br/>
				Added: Temporary Hunters<br/>
				Added: Lots of new Police Hats!<br/>
				Changed: Server Rules<br/>
				Changed: Old Storage System<br/>
				Changed: Holstering System<br/>
				Changed: Jail Time<br/>
				Removed: Civilians can no longer use Tazers (for now...)<br/>
				Fixed: Range-Check on Shops<br/>
				Fixed: Raiding and Breaking into houses<br/>
				Fixed: Item Storage Saving<br/>
				Fixed: Police can no longer impound destroyed vehicles<br/>
                Fixed: General Medic Bugs<br/>
                Fixed: Stabilize Exploit among others<br/>
                Fixed: Medics and Police now take critical damage correctly<br/>

				"
		]
	];
player createDiaryRecord["changelog",
		[
			"6/7/14",
				"
				Added: Go-karts (must have DLC)<br/>
				Added: Two Go-kart track<br/>
				Added: New sync system - Should fix the issues of losing money, positions, etc (still sync data)<br/>
				Added: Go-kart uniforms to bruce’s<br/>
				Added Vermin scope for cops and rebels<br/>
				Added: New helicopter spawn for medics in kavala<br/>
				Changed: Medic helicopter garage prices<br/>
				Changed: Increased the amount of time police can send you to jail<br/>
				Removed: Hunters and Ifrits<br/>
				Fixed: Should no longer be stuck in jail<br/>
				Fixed: Holstering your weapon and logging out no longer makes you lose your weapon<br/>
				Fixed: Only medics can now access the medic outpost<br/>
				Fixed: You will no longer be revived if you log out and then log back in when you are downed<br/>
                Fixed: Drug and alcohol effects, should no longer last forever<br/>
				"
		]
	];


player createDiaryRecord["changelog",
		[
			"5/12/14",
				"
				Server has been reset<br/>
				Added: Housing - max 5 houses<br/>
				Added: House licenses<br/>
				Added: Able to rob houses- Need crowbar<br/>
				Added: Storage units for houses<br/>
				Added: Club sloth Sign<br/>
				Added: House Alarms<br/>
				Added: Crowbars to rebel outpost<br/>
				Added: Ability for police to raid homes<br/>
				Added: Able to crowbar house doors open- 10% chance of breaking item and 15% of successful robbery <br/>
				Added: Buyable garages- Counts as a house<br/>
				Added: Burglary and attempted burglary to the wanted list<br/>
				Added: Able to save virtual and physical items in houses<br/>
				Added: All gear and virtual items will now save when you log out<br/>
				Added: Persistent spawn - where ever you log out, you log back in at the same spot<br/>
				Added: Able to picklock handcuffs<br/>
				Added: New spawn point for Medics<br/>
				Added: All hospitals can now heal players when they are down<br/>
				Added: New clothing at Bruce’s<br/>
				Added: Skin for Medic hummingbird<br/>
				Added: Police can open Bar Gates by pressing O when near them<br/>
				Added: Flashbangs for rebels and police<br/>
				Added: Lethal Injections- Sold at Rebel Outpost
				Changed: Police paychecks have been reverted back<br/>
				Changed: Reduced the cost of medic vehicles<br/>
				Changed: Shops in Kavala and Athira have been moved around<br/>
				Fixed: Could not spawn helicopter at medic helipad<br/>
				Fixed: Fishing<br/>
				Fixed: Loading screen logo<br/>
				"
		]
	];
	player createDiaryRecord["changelog",
		[
			"4/30/14",
				"
				Added: Persistence<br/>
				Added: Magazines save (make sure to unload your gun or you will lose that mag)<br/>
				Added: new medic spawn/hospital in rodopoli<br/>
				Added: Housing<br/>
				
				"
		]
	];

	player createDiaryRecord["changelog",
		[
			"4/15/14",
				"
				Added: EMS<br/>
				Added: Crab grounds<br/>
				Added: Coal Mine<br/>
				Added: Steel forge - 1 coal ore + 1 iron ore = 1 steel ingots<br/>
				Added: Club sloth<br/>
				Added: Lumbering - box truck or better is suggested<br/>
				Added: Saw to the Lumber yard - used to cut logs<br/>
				Added: New interaction menu - left windows key<br/>
				Added: Carryall backpack for civilians<br/>
				Added: Fish market to the boat shop near diamond trader<br/>
				Added: WIldlife Poacher up north<br/>
				Added: Police ranks will now appear next to the players name<br/>
				Added: Road barriers and cones for police<br/>
				Added: A few new outfits at Bruce’s<br/>
				Changed: Re-added Gas Station robberies.<br/>
				Changed: took away 5 cop slots and added them to EMS slots<br/>
				Changed: Turtle Dealer name changed to Wildlife Poacher<br/>
				Changed: You no longer lose your Rebel License when you are sent to jail<br/>
				Changed: Bleedout timer set to 10 minutes<br/>
				Changed: Cops now lose their gear on death and respawn with a default class set<br/>
				Changed: Now using the arma ATM machines<br/>
				Changed: must wait 10 seconds before you can log out<br/>
				Changed: Cop shops will now only display what you are able to buy at your rank<br/>
				Changed: Moved gas station robbery locations<br/>
				Changed: Police got a new shipment of uniforms - (may change in the future)<br/>
				Changed: When robbing someone, it no longer informs the police<br/>
				Changed: Wanted prices have been tweaked<br/>
				Changed: cop paychecks have been tweaked<br/>
				Changed: Bail prices have been tweaked<br/>
				Changed: You must wait half the time of your jail sentence before given the option to pay bail<br/>
				Changed: Tactical View disabled<br/>
				Changed: Cops can now unrestain people that are ziptied<br/>
				Changed: Surrender button changed to the number 2<br/>
				Changed: Processing times depend on how many items you are processing.<br/>
				Changed: Ziptie button is now Shift + R<br/>
				Changed: To pick up items on the ground, you use your left Windows key<br/>
				Fixed: ziptied civilians can now be put in a vehicle<br/>
				"
		]
	];

		player createDiaryRecord ["serverrules",
		[
			"Exploits", 
				"
				These are considered exploits, and you will not be kicked, but banned.<br/><br/>

				1. Getting out of jail via any method other than paying bail or escaping via helicopter.<br/>
				2. Killing yourself to get out of roleplay. Getting out of being tazed, restrained, arrested, jail, etc. If the log shows you got arrested, then you died, you will be banned. Do not pay bail and kill yourself for an easy ride home. Walk you lazy turd.<br/>
				3. Duping items and/or money. If someone sends you an unobtainable amount of money right at the start of the game, report to an admin IMMEDIATELY and transfer said money to an admin. Do this ASAP or an admin could ban you if they see that much on you without question.<br/>
				4. Using clearly hacked items. If a hacker comes in and spawns unobtainable items, you could be banned for using said items. Report the items to the admins immediately and stay away from them.<br/>
				5. Abusing bugs or game mechanics for gain. Is there a replicating gun somewhere? Report it and leave it alone. If an admin catches you abusing the glitch, ban.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["safezones",
		[
			"Safe Zones",
				"
					If bombing (bombing can be intentionally exploding a vehicle), robbing, or killing occurs around these or in these areas it is punishable by ban.<br/><br/>
					
					Rebel Outposts<br/>
					Donor Shops<br/><br/>
				"
		]
	];
					
	
	player createDiaryRecord ["serverrules",
		[
			"Bannable Offenses", 
				"
				Consider this your one and only warning.<br/><br/>
				
				1. Hacking<br/>
				2. Cheating<br/>
				3. Exploiting (See 'Exploits')<br/>
				4. Being kicked 3 or more times.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Safe Zones", 
				"
				Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>
				
				1. Roleplay scenarios cannot be INITIATED in safezones, however aggressors or defenders may pursue those and only those into a safezone area as long as they are involved in an ongoing roleplay scenario.<br/>
				1a. For example, police chasing a wanted criminal. The police must only deal with the one individual that they previous initiated roleplay with, and must ignore any other persons in the area regardless of wanted level or illegal items.<br/><br/>
				2. Safe zone rule applies to the following area(s):<br/>
				2a. Rebel Outposts<br/>
				2b. Donator Shops<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Vehicles", 
				"
				Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>
				
				1. VDM (Vehicular Deathmatching) is our most common ban reason and is strictly forbidden.<br/>
				2. Pushing a boat with the intention of hurting or killing someone. This is not RP, it is just a flaw in the mechanics.<br/><br/>
				3. The following actions are forbidden:<br/>
				3a. Deliberately running people over, except in cases where it cannot be avoided.<br/>
				3b. Deliberately positioning yourself to get run over.<br/>
				3c. Ramming another vehicle or structure in order to cause an explosion.<br/>
				3d. Stealing a vehicle purely to damage it.<br/>
				3e. Exploiting the lock/unlock system to get into a vehicle before the owner can prevent it.<br/>
				3f. Deliberately shooting at another's vehicle with an aim to destroy rather than disable.<br/>
				3g. Repeatedly flying aircraft below 150m AGL in built up areas.<br/>
				3h. Abusing the Push Boat function to grief or cause damage.<br/><br/>

				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Communication", 
				"
				1. The preferred method of communication to begin roleplay is via phone message as this is the most obvious. Voice or text chat are also acceptable but can sometimes be missed in noisy or spammy situations.<br/><br/>
				2. The following actions are forbidden:<br/>
				2a. Excessive usage of voice chat in Side Channel.<br/>
				2b. Spamming of text on any channel or via phone messaging system.<br/>
				2c. Misuse of the text message system sending useless messages to admins, police or medics. An example would be taunting police because you got away via text message.<br/><br/>

				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Combat", 
				"
				Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>
				
				1. RDM (Random Deathmaching) is strictly forbidden.<br/>
				2. You may not engage in combat with anyone without first establishing a roleplay scenario.<br/>
				3. Rebellion, terrorism, claiming to be a mass murderer, etc. are not viable reasons.<br/>
				4. You must contact your victim and convey demands (robbery, kidnapping, etc.) before shooting.<br/>
				5. Warning shots are acceptable as a method to say 'go away' but are done at your own risk. If you accidentally hit anything it becomes RDM.<br/>
				6. Police and civilians may only engage one another if they pose an immediate threat or are engaged in an on-going roleplay scenario.<br/><br/>

				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"New life Rule", 
				"
				
				1. New Life Rule is to be followed by all players.<br/>
				2. If under the effects of NLR, you may not return to the general location of your death or involve yourself in any roleplay scenarios or events related to your death in any way, including observation, until 15 minutes have passed or roleplay has been completely resolved.<br/><br/>
				4. NLR applies if any of the following are TRUE:<br/>
				4a. You have completely died in-game and have respawned.<br/>
				4b. You have been revived by a medic from a CRITICALLY WOUNDED state, when not involved in an on-going RP scenario.<br/>
				4c. You have been sent to jail, and have completed your full sentence OR posted bail.<br/><br/>

				5. NLR does NOT apply if any of the following are TRUE:<br/>
				5a. A downed civilian has been transported by a fellow civilian to a hospital and has paid a doctor to revive and heal the player back to a functioning state.<br/>
				5b. A downed police officer has been transported by a fellow police officer and has paid a doctor to revive and heal the player back to a functioning state.<br/>
				5c. A downed civilian has been transported by a police officer to a hospital and has paid a doctor to revive and heal the player back to a functioning state.<br/>
				5d. A downed police officer has been transported by a civilian to a hospital and has paid a doctor to revive and heal the player back to a functioning state.<br/><br/>

				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"General", 
				"
				Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>
				
				1. The following actions are forbidden:<br/>
				1a. Stealing from another player's backpack without permission.<br/>
				1b. Usage of any items or vehicles not normally obtainable within the mission except with the permission of a senior moderator or above.<br/>
				1c. Abuse of any game or mission exploits or usage of cheats or foreign scripts.<br/>
				1d. Disconnecting or aborting in order to avoid roleplay. This includes being restrained/arrested or having crimes committed against you.<br/>
				1e. Possession of cheated/exploited money. If you receive any suspicious money transfers contact an admin immediately.<br/>
				1f. Abusing arma or life bugs to gain an advantage over other players, e.g. picking up a replicating weapon and selling it over and over to gain easy cash.<br/>
				1g. Harassing of players outside of a roleplay scenario.<br/>
				1h. Camping any hospital to have seemingly infinite numbers and/or lives.<br/><br/>
				
				"
		]
	];
	player createDiaryRecord ["serverrules",
		[
			"Teamspeak", 
				"
				1. Each faction must stick to their own designated teamspeak channels at all times.<br/><br/>

				2. The only exceptions to this rule are:<br/>
				2a. ALE may join the Rescue Dept. channels if a situation calls for it.<br/>
				2b. Rescue Dept. members may join ANY teamspeak channel if a situation calls for it.<br/><br/>

				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Meta-Gaming & Power-Gaming", 
				"
				1. Meta-gaming is using an out-of-character action to gain advantage in-game, or using knowledge that the out-of-character person knows, but their in-game character should not. The only exception to this rule is using teamspeak for your gang, group or squad. Using teamspeak to meta-game other groups by joining their channel is not acceptable.<br/><br/>

				2. Power-gaming is using extreme roleplay or unrealistic ideas to benefit your character, to which it is overly hard or near impossible for others to counter. Some examples follow:<br/>
				2a. All members of your gang have brain implants for player tracking<br/>
				2b. Having comms equipment in places such as your rectum.<br/><br/>

				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Civilian General",
				"
				1. Civilians must not initiate any aggression towards a Rescue Dept. member. This includes robbing, murdering and kidnapping.<br/>
				2. Civilians must not wear any cop uniforms or vests. Uniforms and vests may be stored as “trophies” inside storage and/or persistent storage, but must never be worn.<br/>
				3. Civilians ARE allowed to steal all other police equipment and use and/or store them as they see fit.<br/><br/>

				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"ALE General",
				"
				1. All ALE members are to be on teamspeak at all times when playing as a police officer in the STS Life Server.<br/>
				2. Use of lethal force must be limited to situations where a life is in imminent danger. Use of lethal force just because you feel on edge about someone will result in appropriate punishment.<br/><br/>

				3. Non-lethal Force can be used to safely incapacitate any non-compliant persons. Misfiring of non-lethal weapons on purpose will result in removal from ALE. Non-lethal weapons are currently:<br/>
				3a. P07 (silenced) pistol<br/>
				3b. SDAR rifle<br/><br/>

				4. Random firearm discharges are disallowed and will be punished with confiscation of the weapon and the offending officer reported to the Chief of Police. Repeat offences will result in admin intervention.<br/>
				5. ALE officers are only to buy and keep any weapons and/or items that is appropriate to their rank.<br/>
				6. ALE officers are to wear their correct uniforms at all times.<br/>
				7. ALE officers must NOT share any weaponry, items, or clothing with civilians.<br/>
				8. ALE officers may not arrest a person after giving them an option to pay a fine, UNLESS they decline the fine.<br/>
				9. Before arresting any persons, ALE officers must tell the suspect why they are being arrested, and for how long.<br/>
				10. ALE officers must not abuse the ticketing system and give unwarranted or large tickets.<br/>
				11. ALE officers must not ticket players for $0 to remove them from the wanted list; contact a CORPORAL or above.<br/>
				12. Officers may not idle around built up areas without cause.<br/><br/>

				"

		]
	];

	player createDiaryRecord ["serverrules",
		[
			"ALE Operations",
				"
				1. Area Raids:<br/>
				1a. A raid is a group (squad) of 4 or more police officers with an officer of at least the rank SERGEANT in charge and calling any shots.<br/>
				1b. Persons (civs) in the raid area can only be restrained or searched if there is probable cause that they are doing something illegal.<br/>
				1c. Lethal force (Section 3/b) must always be in place when performing any raids.<br/>
				1d. Once a raid is complete, the general area cannot be raided again for 20 minutes.<br/>
				1e. If all police officers die within the raid area, the raid is considered a failure and cannot be raided again for 20 minutes.<br/>
				1d. Officers may call for backup to a raid as long as there is at least 1 officer still alive in the area.<br/><br/>

				2. Housing Raids/Warrants:<br/>
				2a. In order to raid a house, officers must request and await a warrant in the appropriate forum. If the home owner is online, the officer in charge of the house search/raid must link the home owner the warrant post. If the home owner is offline, the home owner must be sent a forum PM with a link to the search warrant if possible. The ONLY exception to a warrant is the following:<br/>
				2a:i. Police may follow an individual into a player owned house if the player has a bounty and police have previously (within the last 10 minutes) been in pursuit of the player.<br/><br/>

				3. Camping:<br/>
				3a. Camping is the prolonged presence of police officers in a location other than any police buildings/checkpoints/headquarters, cities, towns and villages.<br/>
				3b. Police officers are to maintain an adequate distance from any known “illegal” areas unless performing a raid.<br/><br/>

				4. Checkpoints:<br/>
				4a. In order for a checkpoint to be legal, there must be at least 3 officers within the vicinity of the checkpoint.<br/>
				4b. Custom checkpoints may be set up, as long as they abide by the following:<br/>
				4b:i. Are at least 500 meters away from any known “illegal” areas.<br/>
				4b:ii. All  rules stated in Section 'ALE General Rules & Information'.<br/>
				4b:iii. Have at least 2 ALE vehicles present.<br/><br/>

				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Altis Rescue Department",
				"
				1. All Rescue Dept. members are to be on teamspeak at all times when playing as a Medic when in the STS Life Server.<br/>
				2. Medics must wait until a roleplay scenario is over before treating patients.<br/>
				3. If there is a roleplay scenario between groups, medics must treat the winning party FIRST before the losing party. Please ask for more information from players involved before starting any treatment.<br/>
				4. Medics may only stabilize patients in the middle of a firefight if given permission from both sides.<br/>
				5. Medics must not carry any firearm or object that could be considered a deadly weapon.<br/><br/>

				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Contraband",
				"
				1. Illegal Vehicles, Items and Weapons:<br/><br/>

				1a. Illegal Vehicles are listed below:<br/>
				1b. Ifrit<br/>
				1c. Offroad (Armed)<br/>
				1d. ANY police skinned vehicle<br/><br/>

				2. Illegal Weapons are listed below:<br/>
				2a. MX Series<br/>
				2b. TRG Series<br/>
				2c. Katiba Series<br/>
				2d. MK Series<br/>
				2e. SDAR rifle<br/>
				2f. Vermin SMG<br/>
				2g. Sting SMG<br/>
				2h. P07 Police issue pistol<br/><br/>

				3. Illegal Items are listed below:<br/>
				3a. Spike strip<br/>
				3b. Flashbang<br/>
				3c. Lethal Injection<br/>
				3d. Lock picks<br/>
				3e. Any item of Police Officer uniform<br/>
				3g. Cocaine (processed and unprocessed)<br/>
				3h. Heroin (processed and unprocessed)<br/>
				3i. Weed (processed and unprocessed)<br/>
				3j. Moonshine (processed)<br/><br/>

				"
		]
	];

// Police Section
	player createDiaryRecord ["policerules",
		[
			"Crisis Negotiation",
				"
				Crisis Negotiation must be handled by a Sergeant. If one is not available, the person with the next highest rank must handle the situation.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"The Federal Reserve",
				"
				1. The Federal Reserve is illegal for civilians to enter, unless they have been given authorization. If civilians enter without authorization they are to be escorted off-site or arrested if they persist.
				2. Helicopters flying over the Federal Reserve may be asked to leave and disabled if they refuse.<br/>
				2. If the Federal Reserve is getting robbed, it is encouraged that all available officers move in to stop it.<br/>
				3. Nearby officers should immediately head to the Federal Reserve to assist. Petty crimes can be dropped during a robbery.<br/>
				4. Lethal force on bank robbers may be used if no other alternative is available. Every option to taze and arrest the person should be made first.<br/>
				5. Police may not fire blindly into the building.<br/>
				6. The police should evacuate the civilians from the building during a robbery.<br/>
				7. Any civilian who actively makes an attempt to block the police from entering the building may be treated as an accomplice.<br/>
				8. Supervisory officers may hire individuals or contract a group of people to work as security guards for the bank. See 'Contracting' section for more information.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Aviation",
				"
				1. No helicopter can land within city limits without authorization from the highest ranking officer online. (Exceptions being what is listed below.)<br/>
				Kavala: The hospital helipad (037129) or docks (031128).<br/>
				Athira: The sports field (138185) or behind the DMV (140188).<br/>
				Pyrgos: The fields North/East of DMV (170127)<br/>
				Sofia: Opposite the car shop (258214) or the fields Southeast of the garage (257212)<br/>
				Small towns: An appropriate location may be chosen. This is to be judged by officers on a case by case basis.<br/><br/>
				
				2. Helicopters may not land on roads.<br/>
				3. Police may temporarily forbid landing at  but it cannot remain closed for a long period of time.<br/>
				4. Helicopters cannot fly below 150m over the city without authorization.<br/>
				5. Helicopters cannot hover over the city. Cops may only hover over the city if there is an active police operation going on.<br/><br/>

				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Illegal Areas", 
				"
				1. Gang areas are not considered illegal. Thus a cop may enter without a raid, but may not restrain or stop anyone inside without probable cause/illegal activity. (Talking to the gang NPC is NOT probable cause/illegal activity.)<br/>
				2. Do not enter an illegal area unless it is part of a raid. see Raiding/Camping.<br/>
				3. If you chase someone into an illegal area, call for backup.<br/>
				4. Under no circumstances is an officer allowed to camp any illegal area.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Patrolling", 
				"
				1. Police may patrol the island's roads and towns searching for abandoned vehicles and criminal activity.<br/>
				2. Patrols can be done on foot inside of a town, or in a vehicle when outside.<br/>
				3. Patrols do not include illegal areas. See Raiding/Camping.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Checkpoints", 
				"
				Cops are encouraged to setup checkpoints in strategic areas to help combat illegal activity and promote safety on the road.<br/><br/>
				
				1. A checkpoint must consist of 3 or more officers, utilizing 2 or more vehicles. An ATV does not count as one of the required vehicles, but may still be used.<br/>
				2. A checkpoint can not be setup within 300m of an illegal area. Basically, you cannot set one up on top of an illegal area.<br/>
				3. Checkpoints may only be setup on roads, but it does not have to be on a crossroad.<br/>
				4. Checkpoints do not have to be marked on the map.<br/><br/>


				Proper Checkpoint Procedure:<br/>
				1. Have the driver stop the vehicle at a safe distance and turn off the engine.<br/>
				2. Ask the driver and any passengers if they have any weapons.<br/>
				3. Ask the driver and any passengers to exit the vehicle. If they have weapons, do not immediately restrain them when they get out, tell them to lower their weapons and given them a reasonable amount of time to do so.<br/>
				4. Ask them where they are headed to and from.<br/>
				5. Ask if they will submit to a search.<br/>
				6. If they allow a search, you may restrain them and search them.<br/>
				7. If they do not submit to a search, you must let them go, unless there is probable cause.<br/>
				8. After the search is done, you may allow them to re-enter their vehicle and drive away.<br/>
				9. In case anything illegal is found, the person may be ticketed or arrested depending on the crime.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Speed Limits", 
				"
				The following speeds are to be enforced by the Altis Police Force for the absolute safety of the citizens of Kavala and all travelling beyond the city.<br/><br/>
				
				Inside town(normal roads): 50km/h<br/>
				Inside town(main roads): 65km/h<br/>
				300 meters outside towns/cities(normal roads): 70km/h<br/>
				300 meters outside towns/cities(main roads) 120km/h<br/><br/>

				"
		]
	];	
	
	player createDiaryRecord ["policerules",
		[
			"Vehicles", 
				"
				1. Vehicles in the parking lot, or are reasonably parked elsewhere should be left alone.<br/>
				2. Vehicles that look abandoned, broken, with no driver, can be impounded.<br/>
				3. Boats should be parked reasonably on shore.<br/>
				4. Any vehicle that hasn't moved in a significant amount of time may be impounded.<br/>
				5. Impounding is an essential job for a cop, it helps keep the server clean and less laggy.<br/>
				6. If in doubt, always search the vehicle and message the owner(s) before impounding.<br/>
				7. Police speedboats or Hunter HMGs may be used to assist in apprehending criminals. The weapon should be used to disable vehicles, not to blow them up.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Speed Limits", 
				"
				The following speeds are to be enforced by the Altis Police Force for the absolute safety of the citizens of Kavala and all travelling beyond the city.<br/><br/>
				
				Inside town(normal roads): 50km/h<br/>
				Inside town(main roads): 65km/h<br/>
				300 meters outside towns/cities(normal roads): 70km/h<br/>
				300 meters outside towns/cities(main roads) 120km/h<br/><br/>

				"
		]
	];	
	
	player createDiaryRecord ["policerules",
		[
			"City Protocol", 
				"
				1. Officers may patrol major cities - Kavala, Athira, Pyrgos and Sofia.<br/>
				2. Officers may stop by the car shop to make sure there are no cars that need to be impounded.<br/>
				3. Officers may not stand around or loiter in the centre of town.<br/>
				4. Officers may enter the town in a large number should a rebellious act occur. After the area is clear, they need to leave the town again.<br/>
				5. Martial law may not be declared at any time.<br/>
				6. The Police HQ buildings are illegal for civilians to enter without authorization, however it is NOT illegal for civilians to be nearby unless they are causing a nuisance.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Arresting and Ticketing",
				"
				Arresting should be done to criminals who are considered a danger to themselves or others.<br/><br/>

				1. You may not arrest someone if you have given them a ticket and they paid it.<br/>
				2. You must tell the suspect why they are being arrested before you arrest them.<br/>
				3. If a civilian is wanted, you may arrest them. Do not kill them, unless the situation falls under the 'Use of Lethal Force' section.<br/><br/>


				Ticketing a civilian is considered a warning for the civilian. If they break a law, but do not pose a threat to anyone, you may ticket a civilian.<br/><br/>

				1. Tickets must be a reasonable price.<br/>
				2. Ticket prices should be based off of the crimes committed.<br/>
				3. Refusal to pay a legit ticket is grounds for arrest.<br/>
				4. Giving a civilian and illegitimate ticket, such as $100k for speeding, etc., is not allowed and will result in your removal from the police department.<br/><br/>
				
				A complete list of all crimes and the appropriate punishments should be given to officers during training. If in doubt, or if you have not been trained, ask a higher ranking officer what to do.<br/><br/>
				
				The list is available at crime.sealteamsloth.com<br/><br/>
				"
		]
	];
		
	player createDiaryRecord ["policerules",
		[
			"Weapons", 
				"
				A cop is NEVER allowed to supply civilians with weapons. This will get you banned from the server and removed from being a cop.<br/><br/>

				Legal Weapons for Civilians to carry with a permit:<br/>
				1. P07<br/>
				2. Rook<br/>
				3. ACP-C2<br/>
				4. Zubr<br/>
				5. 4-five<br/>
				6. PDW2000<br/><br/>

				Any other weapon (Including Silenced P07 [Considered a Police Weapon]) is illegal.<br/><br/>

				1. Civilians are not allowed to have a weapon out within the town limits.<br/>
				2. Civilians may have a gun out when they are not in the town. However they should submit to a license search if confronted by an officer and should have the gun lowered (Press Ctrl Twice).<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Use of Non-Lethal Force",
				"
				At this time the Taser (Silenced P07) is the only form of Non-Lethal Force.<br/><br/>

				1. Taser should be used to incapacitate non complying civilians in order to restrain them.<br/>
				2. Do not discharge your Taser unless you intend to incapacitate a civilian, randomly discharging your weapon will result in your suspension.<br/>
				3. Only use your Taser in compliance with the laws and the rules, do NOT enforce your will on others.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Raiding/Camping",
				"
				Raiding is defined as a squad of police officers invading an area of high criminal activity in order to stop the criminals in illegal acts.<br/><br/>

				1. In order to raid an area, the cops must have at least 4 officers involved, one of which must be a Sergeant or above.<br/>
				2. All civilians in a raid area may be restrained and searched. If nothing illegal is found, you must let them go.<br/>
				3. If illegals are found during a search, you may proceed to arrest or fine as usual.<br/>
				5. Lethal force is only authorized as described under 'Use of Lethal Force'.<br/>
				6. After the area is secure, the officers must leave the area.<br/>
				7. An area cannot be raided again for 20 minutes after a previous raid.<br/>
				8. If the raid is a failure (All officers die), the 20 minute timer still applies to those officers.<br/>
				9. Backup may be called in, but it may not consist of fallen officers (see 'New Life Rule').<br/><br/>

				Camping is defined as the prolong stay of an officer in an area.<br/><br/>

				1. Checkpoints are not considered camping. See Checkpoint section for a definition of proper checkpoint procedures.<br/>
				2. See Bank Robbery and Agia Marina Protocol sections for more info on camping in the main town.<br/>
				3. Camping of illegal areas is staying longer than needed after a raid, or if officers do not conduct a raid but continue to watch and take action against civilians entering the area.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Chain of Command",
				"
				The highest ranking officer on duty is in charge of the police force outside of admins currently online. The high ranking officer is expected to follow the rules and guidelines of his/her rank, and must report to the admin in case any action need be taken.<br/><br/>

				Police Chain of Command:<br/>
				1. Chief<br/>
				2. Deputy Chief<br/>
				3. Superintendent<br/>
				4. Captain<br/>
				5. Lieutenant<br/>
				6. Sergeant<br/>
				7. Senior Patrol Officer<br/>
				8. Patrol Officer<br/>
				9. Cadet<br/><br/>

				Cops in game who are not enrolled/accepted into the SPD are the lowest tier and have no say in police operations.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Use of Lethal Force",
				"
				1. Use of Lethal force is only permitted for the protection of your life, another officers life, or a civilians life, if and only if non-lethal force would not be effective.<br/>
				2. Discharging of a weapon when not under threat or not during training exercises is not allowed. Officers caught in violation of this rule will be removed from the server and suspended from the SPD.<br/>
				3. Failure to follow proper weapons discipline and procedure will get you removed from the server and suspended from the SPD.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Teamspeak Rule",
				"
				1. All cops must be on Teamspeak 3 in a designated cop channel. Failure to be on Teamspeak during an admin check will result in your immediate dismissal from the server.<br/>
				2. Please join Teamspeak BEFORE you spawn in as a cop, heck, join Teamspeak before you even join the server.<br/><br/>
				"
		]
	];
	
	
	
// Illegal Items Section
	player createDiaryRecord ["illegalitems",
		[
			"Rebel Rules",
				"
				A rebel is one who rises in armed resistance against a government. In this case it would be the police. However, due to the small amount of police compared to the possible amount of rebels, do not attack the police without a reason, please be civil and use common sense, and don't take the word rebel literally, but instead how it will make this server fun for all.<br/><br/>
				1. A rebel must first form a gang, and then declare intentions.<br/>
				2. Resistance does not excuse RDMing (See RDMing in General Rules)<br/>
				3. Resistance roleplay should be conducted in more ways than constantly robbing the bank or shooting police officers.<br/>
				4. Resistance must be coordinated.<br/>
				5. A PROPER reason must be behind each and every attack.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Gang Rules",
				"
				1. Being in a gang is not illegal. Only when illegal crimes are committed.<br/>
				2. Being in a gang area is not illegal. Only when partaking in illegal activities.<br/>
				3. Gangs may hold and control gang areas. Other gangs may attack a controlling gang to compete for control of a gang area.<br/>
				4. To declare war on another gang, the leader must announce it in global and all gang members of both gangs must be notified. For a more long term gang war, a declaration should be made on the forums.<br/>
				5. Gangs may not kill unarmed civilians, unless said civilian is part of a rival gang and in your gangs controlled area.<br/>
				6. Gangs may not kill civilians, unless they are under threat. Killing unarmed civilians because they do not comply is considered RDM, but you can injure/damage.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegal Vehicles",
				"
				A civilian in control of the following prohibited vehicles is subject to the consequences defined in the unauthorized control of a prohibited vehicle law.<br/><br/>

				1. Ifrit<br/>
				2. Speedboat<br/>
				3. Hunter<br/>
				4. Police Offroad<br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegal Weapons",
				"
				A civilian in possession of the following is subject to the consequences as defined in the illegal possession of a firearm law.<br/><br/>

				1. MX Series<br/>
				2. Katiba Series<br/>
				3. TRG Series<br/>
				4. Mk.20 Series<br/>
				5. Mk.18 ABR<br/>
				6. SDAR Rifle<br/>
				7. Sting SMG<br/>
				8. Silenced P07 (Taser)<br/>
				9. Any explosives<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegal Items",
				"
				The following items are illegal to posses:<br/><br/>
				1. Turtle<br/>
				2. Cocaine<br/>
				3. Heroin<br/>
				4. Cannabis<br/>
				5. Marijuana<br/><br/>
				"
		]
	];

	
// Controls Section

	player createDiaryRecord ["controls",
		[
			"",
				"
				1: Open Wanted List<br/>
				2: Surrender<br/>
				Y: Open Player Menu<br/>
				U: Lock and unlock cars<br/>
				F: Cop Siren (if cop)<br/>
				T: Vehicle Trunk<br/>
				Left Shift + R: Restrain / Ziptie<br/>
				Left Shift + G: Knock out / stun (Civ Only, used for robbing them)<br/>
				Left Windows: Main Interaction key which is used for picking up items/money, interacting with cars (repair,etc) and for cops to interact with civilians. Can be rebound to a single key like H by pressing ESC->Configure->Controls->Custom->Use Action 10<br/>
				Left Shift + L: Activates cop siren lights (as a cop).<br/>
				"
		]
	];