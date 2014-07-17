		private["_item", "_house", "_houseId", "_owners", "_uid", "_maxCount", "_count", "_handle", "_box", "_containers", "_containerId", "_pos", "_storageData"];


		_box= "Land_Box_AmmoOld_F" createVehicle [0,0,0];
		_box attachTo[player,[0,2,0]];
		_box setDir 90;

		_pos = position _box;
		_pos = [(_pos select 0), (_pos select 1), (_pos select 2) + 1];
			
 		life_action_storageBoxDeploy = player addAction["Place Storage Box",{if(!isNull life_storage1_box) then {detach life_storage1_box; life_storage1_box = ObjNull;}; player removeAction life_action_storageBoxDeploy; life_action_storageBoxDeploy = nil;},"",999,false,false,"",'!isNull life_storage1_box'];
		life_storage1_box = _box;
		hint "Placing storage container...";
		waitUntil {life_storage1_box == ObjNull;};
		if(!isNil life_action_storageBoxDeploy) then {player removeAction life_action_storageBoxDeploy;};

		_box setPosATL [_pos select 0, (_pos select 1), _pos select 2];	
		_box setVariable["owner", getPlayerUID player, true];

		clearWeaponCargoGlobal _box; 
		clearMagazineCargoGlobal _box;
		clearItemCargoGlobal _box;
		clearBackpackCargoGlobal _box;


		_house = getPos player nearestObject "House_F"; 
		_owners = _house getVariable["life_homeOwners", []];
		_uid = getPlayerUID player;
		_item = [_this,0,"",[""]] call BIS_fnc_param;
		_containers = _house getVariable ["containers", []];
		_count = count _containers;
		_houseId = [_house] call life_fnc_getBuildID;
		_containerId = format ["%1_%2", _houseId, _count];
		_storageData = [_containerId, _item, typeOf _box];
		_containers set [count _containers, _storageData];
		_house setVariable ["containers", _containers, true];
		_box setVariable["owner", getPlayerUID player, true];
		
		_handle = [] spawn life_fnc_sessionUpdate;
		[[_house, _containers, playerSide, [[],0]],"BRUUUDIS_fnc_updateHouseStorage",false,false] spawn BIS_fnc_MP;
