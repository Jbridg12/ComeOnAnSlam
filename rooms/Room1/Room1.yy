{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "Room1",
  "creationCodeFile": "rooms/Room1/RoomCreationCode.gml",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_7F9AE0F2","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_3D3A29E6","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_60F8F17F","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_5FDCE97F","path":"rooms/Room1/Room1.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRLayer","resourceVersion":"1.0","name":"Render_Above_Instance","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[
        {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Platforms","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":45,"SerialiseWidth":160,"TileCompressedData":[
-3731,-2147483648,1,195,-11,-2147483648,1,199,-147,-2147483648,1,216,-11,218,1,220,-3296,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"TileSet1","path":"tilesets/TileSet1/TileSet1.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
        {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Collision","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":45,"SerialiseWidth":160,"TileCompressedData":[
-3136,-2147483648,-3,0,-157,-2147483648,-3,0,-915,-2147483648,-5,0,-155,-2147483648,-5,0,-471,-2147483648,51,7,8,9,7,8,9,7,8,9,7,8,9,7,8,9,7,8,9,7,8,9,7,8,9,7,8,9,7,8,9,7,8,9,7,8,9,7,8,9,7,8,9,7,8,9,7,8,9,7,8,9,-109,-2147483648,51,28,29,30,28,29,30,28,29,30,28,29,30,28,29,30,28,29,30,28,29,30,28,29,30,28,29,30,28,29,30,28,29,30,28,29,30,28,29,30,28,29,30,28,29,30,28,29,30,28,29,30,-2139,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"TileSet1","path":"tilesets/TileSet1/TileSet1.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
      ],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7F9AE0F2","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"Player","path":"objects/Player/Player.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1120.0,"y":448.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3D3A29E6","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_game_manager","path":"objects/obj_game_manager/obj_game_manager.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1184.0,"y":512.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_60F8F17F","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"test_enemy","path":"objects/test_enemy/test_enemy.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_looping_path_enemy","path":"objects/obj_looping_path_enemy/obj_looping_path_enemy.yy",},"propertyId":{"name":"follow_path","path":"objects/obj_looping_path_enemy/obj_looping_path_enemy.yy",},"value":"path_flying_circle",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":704.0,"y":160.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5FDCE97F","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"test_enemy","path":"objects/test_enemy/test_enemy.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_looping_path_enemy","path":"objects/obj_looping_path_enemy/obj_looping_path_enemy.yy",},"propertyId":{"name":"follow_path","path":"objects/obj_looping_path_enemy/obj_looping_path_enemy.yy",},"value":"path_flying_circle",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_looping_path_enemy","path":"objects/obj_looping_path_enemy/obj_looping_path_enemy.yy",},"propertyId":{"name":"absolute_path","path":"objects/obj_looping_path_enemy/obj_looping_path_enemy.yy",},"value":"True",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":672.0,"y":160.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Collidable_Instances","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRLayer","resourceVersion":"1.0","name":"Render_Below_Instance","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[
        {"resourceType":"GMRLayer","resourceVersion":"1.0","name":"Enemy_Paths","depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[
            {"resourceType":"GMRPathLayer","resourceVersion":"1.0","name":"path_flying_circle","colour":4278190335,"depth":700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"pathId":{"name":"path_flying_circle","path":"paths/path_flying_circle/path_flying_circle.yy",},"properties":[],"userdefinedDepth":false,"visible":true,},
          ],"properties":[],"userdefinedDepth":false,"visible":true,},
        {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"BG_TIles","depth":800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":45,"SerialiseWidth":160,"TileCompressedData":[
-2011,-2147483648,-4,0,-156,-2147483648,-4,0,-156,-2147483648,-4,0,-143,-2147483648,8,268435460,268435459,268435458,268435457,1,2,3,4,-5,-2147483648,-4,0,-143,-2147483648,8,268435481,268435480,268435479,268435478,22,23,24,25,-5,-2147483648,-4,0,-143,-2147483648,8,268435502,268435501,268435500,268435499,43,44,45,46,-5,-2147483648,-4,0,-143,-2147483648,8,268435523,268435522,268435521,268435520,64,65,66,67,-5,-2147483648,-4,0,-143,-2147483648,8,268435544,268435543,268435542,268435541,85,86,87,88,-5,-2147483648,-4,0,-143,-2147483648,8,268435565,268435564,268435563,268435562,106,107,108,109,-5,-2147483648,-4,0,-143,-2147483648,8,268435586,268435585,268435584,268435583,127,128,129,130,-5,-2147483648,-4,0,-143,-2147483648,8,268435607,268435606,268435605,268435604,148,149,150,151,-5,-2147483648,-4,0,-143,-2147483648,8,268435628,268435627,268435626,268435625,169,170,171,172,-5,-2147483648,-4,0,-143,-2147483648,8,268435649,268435648,268435647,268435646,190,191,192,193,-5,-2147483648,
-4,0,-143,-2147483648,8,268435670,268435669,268435668,268435667,211,212,213,214,-5,-2147483648,-4,0,-143,-2147483648,13,268435691,268435690,268435689,268435688,232,233,234,235,-2147483648,-2147483648,195,199,-2147483648,-4,0,-143,-2147483648,13,268435712,268435711,268435710,268435709,253,254,255,256,-2147483648,-2147483648,216,220,-2147483648,-4,0,-143,-2147483648,8,268435733,268435732,268435731,268435730,274,275,276,277,-147,-2147483648,13,599,600,601,-2147483648,-2147483648,268435754,268435753,268435752,268435751,295,296,297,298,-147,-2147483648,13,620,621,622,-2147483648,-2147483648,268435775,268435774,268435773,268435772,316,317,318,319,-2314,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"TileSet1","path":"tilesets/TileSet1/TileSet1.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
        {"resourceType":"GMRAssetLayer","resourceVersion":"1.0","name":"Assets","assets":[],"depth":900,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
        {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"BG_Img","animationFPS":15.0,"animationSpeedType":0,"colour":4278190080,"depth":1000,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
      ],"properties":[],"userdefinedDepth":false,"visible":true,},
  ],
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 5.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 720,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 2560,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":720,"hspeed":-1,"hview":720,"inherit":false,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":1280,"wview":1280,"xport":0,"xview":560,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": true,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}