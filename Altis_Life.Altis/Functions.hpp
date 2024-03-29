class Life_Client_Core
{
	tag = "life";

	class Master_Directory
	{
		file = "core";
		class setupActions {};
		class setupEVH {};
		class initCiv {};
		class initCop {};
		class initMedic {};
		class welcomeNotification {};
	};

	class Admin
	{
		file = "core\admin";
		class admininfo {};
		class adminid {};
		class admingetID {};
		class adminMenu {};
		class adminQuery {};
		class adminSpectate {}; 
		class adminTeleport {};
		class adminTpHere {}; 
		class adminDebugCon {};
		class adminCompensate {};
		class adminAuthenticate {};
		class adminCheckAuth {};
		class adminKick {};
		class adminRepairBuild {};
		class adminBan {};
	};

	class Actions
	{
		file = "core\actions";
		class civPullOut {};
		class civPutInCar {};
		class buyLicense {};
		class chemlightUse {};
		class restrainCiv {};
		class unzip {};
		class zipTieAction {};
		class heal {};
		class drugeffect_alc {};
		class drugeffect_coc {};
		class drugeffect_her {};
		class drugeffect_mar {};
		class healHospital {};
		class pushVehicle {};
		class repairTruck {};
		class serviceChopper {};
		class serviceTruck {};
		class catchFish {};
		class catchTurtle {};
		class dpFinish {};
		class dropFishingNet {};
		class gatherApples {};
		class gatherCannabis {};
		class gatherHeroin {};
		class gatherOil {};
		class getDPMission {};
		class postBail {};
		class processAction {};
		class robBankAction {};
		class sellOil {};
		class suicideBomb {};
		class arrestAction {};
		class escortAction {};
		class impoundAction {};
		class pulloutAction {};
		class putInCar {};
		class stopEscorting {};
		class restrainAction {};
		class searchAction {};
		class searchVehAction {};
		class unrestrain {};
		class pickupItem {};
		class pickupMoney {};
		class ticketAction {};
		class gatherCorn {};
		class gatherPeaches {};
		class gatherCocaine {};
		class pumpRepair {};
		class packupSpikes {};
		class packupRoadcones {};
		class packupRoadblock {};
		class robFederal {};
		class storeVehicle {};
		class robAction {};
		class sellTurtle {};
		class payrepair {};
		class robStation {};
		class nclights {};
		class ncLightsOn {};
		class ncmusic {};
		class ncstage {};
		class ncsmoke {};
		class ncflash {};
		class fuel_consumption {};
		class reviveHospital {};
		class confirm {};
	};

	class Config
	{
		file = "core\config";
		class licensePrice {};
		class vehicleColorCfg {};
		class vehicleColorStr {};
		class vehicleListCfg {};
		class vehicleWeight {};
		class licenseType {};
		class eatFood {};
		class varHandle {};
		class varToStr {};
		class copDefault {};
		class impoundPrice {};
		class itemWeight {};
		class taxRate {};
		class virt_shops {};
		class vehShopLicenses {};
		class vehicleAnimate {};
		class weaponShopCfg {};
	    
        class houseContainers {};
        class housePrice {};
    

		//Clothing Store Configs
		class clothing_cop {};
		class clothing_bruce {};
		class clothing_reb {};
		class clothing_dive {};
		class clothing_copdive {};
	};

	class session
	{
		file = "core\session";
		class sessionSetup {};
		class houseSession {};
		class houseWeaponInformation {};
		class sessionReceive {};
		class sessionUpdate {};
		class quickSync {};
		class sessionCreate {};
		class sessionHandle {};
		class syncData {};
	};

	class Player_Menu
	{
		file = "core\pmenu";
		class wantedList {};
		class wantedInfo {};
		class wantedMenu {};
		class pardon {};
		class giveItem {};
		class giveMoney {};
		class p_openMenu {};
		class p_updateMenu {};
		class removeItem {};
		class useItem {};
		class cellphone {};
		class keyMenu {};
		class keyGive {};
		class keyDrop {};
		class s_onSliderChange {};
		class updateViewDistance {};
		class settingsMenu {};
		class settingsInit {};
	};

	class Functions
	{
		file = "core\functions";
		class calWeightDiff {};
		class fetchCfgDetails {};
		class handleInv {};
		class hudSetup {};
		class intro {};
		class playsound {};
		class setUniform {};
		class hudUpdate {};
		class fetchGear{};
		class tazeSound {};
		class animSync {};
		class equipGear {};
		class simDisable {};
		class keyHandler {};
		class dropItems {};
		class handleDamage {};
		class numberText {};
		class handleItem {};
		class accType {};
		class onDeath {};
		class onRespawn {};
		class receiveItem {};
		class giveDiff {};
		class receiveMoney {};
		class playerTags {};
		class clearVehicleAmmo {};
		class pulloutVeh {};
		class nearUnits {};
		class fedSuccess {};
		class holsterWeapon {};
		class abortEnabled {};
		class handleFlashbang {};
		class actionKeyHandler {};
		class unconsciousMarker {};
		class autoSave {};
		class updateCash {};
        class vehicleGarage {};
		class unconscious {};
		class enablecollisionwith {};
		class disablecollisionwith {};
		class enableActions {};
		class actionUpdate {};
		class kart {};
		class kart2 {};
	};

	class Network
	{
		file = "core\functions\network";
		class broadcast {};
		class MP {};
		class MPexec {};
		class netSetVar {};
	};

	class Civilian
	{
		file = "core\civilian";
		class civInteractionMenu {};
		class jailMe {};
		class jail {};
		class tazed {};
		class civFetchGear {};
		class civLoadGear {};
		class robReserve {};
		class knockedOut {};
		class knockoutAction {};
		class robReceive {};
		class robPerson {};
		class removeLicenses {};
		class zoneCreator {};
		class surrender {};
		class execute {};
		class executeAction {};
		class jailFeed {};
	};

	class Vehicle
	{
		file = "core\vehicle";
		class colorVehicle {};
		class openInventory {};
		class lockVehicle {};
		class vehicleOwners {};
		class vehStoreItem {};
		class vehTakeItem {};
		class vehInventory {};
		class vInteractionMenu {};
	};

	class Cop
	{
		file = "core\cop";
		class copMarkers {};
		class copLights {};
		class loadGear {};
		class saveGear {};
		class vehInvSearch {};
		class copSearch {};
		class bountyReceive {};
		class searchClient {};
		class restrain {};
		class ticketGive {};
		class ticketPay {};
		class ticketPrompt {};
		class copHorn {};
		class copSiren {};
		class spikeStripEffect {};
		class seizeObjects {};
		class seizePlayerWeapon {};
		class seizePlayerWeaponAction {};
		class radar {};
		class questionDealer {};
		class questionGasStation {};
		class copInteractionMenu {};
		class sirenLights {};
		class licenseCheck {};
		class licensesRead {};
		class jailDialog {};
		class jailPre {};
		class copOpener {};
		class houseOwnerSearch {};
        class houseInvSearch {};
        class raidHouse {};
		class takeLeader {};
		class trackBounty {};
	};

	class Medic
	{
		file = "core\medic";
		class medicLoadGear {};
		class medicMarkers {};
		class medicInteractionMenu {};
		class mediclights {};
		class medicSiren {};
		class medicSirenLights {};
		class revive {};
		class reviveAction {};
		class drag {};
		class stabilise {};
		class stabiliseAction {};
	};

	class Gangs
	{
		file = "core\gangs";
		class createGang {};
		class gangBrowser {};
		class gangManagement {};
		class gangMenu {};
		class joinGang {};
		class kickGang {};
		class leaveGang {};
		class setGangLeader {};
		class lockGang {};
		class unlockGang {};
	};

	class Shops
	{
		file = "core\shops";
		class atmMenu {};
		class buyClothes {};
		class changeClothes {};
		class clothingMenu {};
		class clothingFilter {};
		class vehicleShop {};
		class vehicleColorList {};
		class vehicleShopBuy {};
		class vehicleShopBuySave {};
		class weaponShopFilter {};
		class weaponShopMenu {};
		class weaponShopSelection {};
		class weaponShopBuySell {};
		class virt_buy {};
		class virt_menu {};
		class virt_update {};
		class virt_sell {};
		class chopShopMenu {};
		class chopShopSelection {};
		class chopShopSell {};
		class donatorLevel {};
	};

	class Items
	{
		file = "core\items";
		class pickaxeUse {};
		class lockpick {};
		class crowbar {};
		class spikeStrip {};
		class zipTie {};
		class jerryRefuel {};
		class crabpot {};
		class chainsaw {};
		class RoadBlockWood {};
		//class RoadCone {};
		class RoadConeStrip {};
		class lethal {};
	};

	class Dialog_Controls
	{
		file = "dialog\function";
		class setMapPosition {};
		class displayHandler {};
		class spawnConfirm {};
		class spawnMenu {};
		class spawnPointCfg {};
		class spawnPointSelected {};
		class progressBar {};
		class impoundMenu {};
		class unimpound {};
		class sellGarage {};
		class houseMenu {};
	};
	class Housing
    {
        file = "core\housing";
        class houseInteractionMenu {};
        class buyHouse {};
        class sellHouse {}; 
        class createMarkers {};
        class deleteMarkers {};
        class getBuildID {};
        class initHouses {};
        class lockHouse {};
        class lockStorage {};
        class countBuildingPositions {};
        class houseStoreItem {};
        class houseTakeItem {};
        class houseInventory {};
        class openStorage {};
        class placeStorage {};
        class preCloseHouseStorage {};
        class calcGarageSpawn {};
        class onPut {};
        class onTake {};
        class breakingin {};
        class findBuildID {};
    };
};
