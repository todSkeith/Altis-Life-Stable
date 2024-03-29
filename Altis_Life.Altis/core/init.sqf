/*
	Master client initialization file
*/
life_firstSpawn = true;
private["_handle","_timeStamp"];
cutText["Setting up client, please wait...","BLACK FADED"];
0 cutFadeOut 9999999;
_timeStamp = diag_tickTime;
diag_log "------------------------------------------------------------------------------------------------------";
diag_log "--------------------------------- Starting Stratis Life Client Init ----------------------------------";
diag_log "------------------------------------------------------------------------------------------------------";

waitUntil {!isNull player && player == player}; //Wait till the player is ready
//Setup initial client core functions
_handle = [] spawn compile PreprocessFileLineNumbers "core\configuration.sqf";
diag_log "::Life Client:: Initialization Variables";
waitUntil {scriptDone _handle};
diag_log "::Life Client:: Variables initialized";
//[player] execVM "core\client\disable_respawn.sqf";
_handle = [] spawn life_fnc_setupEVH;
diag_log "::Life Client:: Setting up Eventhandlers";
waitUntil {scriptDone _handle};
diag_log "::Life Client:: Eventhandlers completed";
//_handle = [] spawn life_fnc_setupActions;
//diag_log "::Life Client:: Setting up user actions";
//waitUntil {scriptDone _handle};
//diag_log "::Life Client:: User actions completed";
diag_log "::Life Client:: Waiting for server functions to transfer..";
waitUntil {(!isNil {clientGangLeader})};
diag_log "::Life Client:: Received server functions.";
[] call life_fnc_sessionSetup;
waitUntil {life_session_completed};
cutText["Finishing client setup procedure","BLACK FADED"];
0 cutFadeOut 9999999;
//[] execVM "core\client\group_base_respawn.sqf";
//diag_log "::Life Client:: Group Base Execution";
//_handle = [] spawn compile PreprocessFileLineNumbers "core\config_housing.sqf"; Housing not in yet
//diag_log "::Life Client:: Housing Variables";
//waitUntil {scriptDone _handle};
//diag_log "::Life Client:: Housing Variables initialized";
//waitUntil {(!isNil {life_fnc_wounded})}; DOES NOT EXIST!!!!! DO NOT SET A WAITUNTIL FOR SOMETHING THAT DOES NOT EXIST!!!!!
diag_log "::Life Client:: Received server functions.";

switch (playerSide) do
{
	case west:
	{
		_handle = [] spawn life_fnc_initCop;
		waitUntil {scriptDone _handle};
	};

	case civilian:
	{
		//Initialize Civilian Settings
		_handle = [] spawn life_fnc_initCiv;
		waitUntil {scriptDone _handle};
	};

	case independent:
	{
		//Initialize Medic Settings
		_handle = [] spawn life_fnc_initMedic;
		waitUntil {scriptDone _handle};
	};
};


player setVariable["restrained",false,true];
player setVariable["Escorting",false,true];
player setVariable["transporting",false,true];
player setVariable["zipTie",false,true];
player setVariable["surrender",false,true];
player setVariable["kidnapped",false,true];

diag_log "Past Settings Init";
[] execFSM "core\fsm\client.fsm";
diag_log "Executing client.fsm";
waitUntil {!(isNull (findDisplay 46))};
diag_log "Display 46 Found";
(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call life_fnc_keyHandler"];
(findDisplay 46) displayAddEventHandler ["MouseZChanged", "_this spawn life_fnc_enableActions"];
player addRating 99999999;
//[] execVM "core\client\init_survival.sqf";
diag_log "------------------------------------------------------------------------------------------------------";
diag_log format["                End of Stratis Life Client Init :: Total Execution Time %1 seconds ",(diag_tickTime) - _timeStamp];
diag_log "------------------------------------------------------------------------------------------------------";
life_sidechat = true;
[[player,life_sidechat,playerSide],"TON_fnc_managesc",false,false] spawn life_fnc_MP;
cutText ["","BLACK IN"];
[] call life_fnc_hudSetup;
//[player] execVM "core\client\intro.sqf";
LIFE_ID_PlayerTags = ["LIFE_PlayerTags","onEachFrame","life_fnc_playerTags"] call BIS_fnc_addStackedEventHandler;
[] call life_fnc_settingsInit;
life_fnc_moveIn = compileFinal
"
	player moveInCargo (_this select 0);
";

[] execVM "core\init_survival.sqf";

setPlayerRespawnTime life_respawn_timer; //Set our default respawn time.
[] spawn life_fnc_autoSave;
[] execVM "core\monitor_esc.sqf";
//[] call life_fnc_setupActions;
life_abort_enabled = false;
[] spawn life_fnc_abortEnabled; // Monitor for restrain and modify UI menus accordingly