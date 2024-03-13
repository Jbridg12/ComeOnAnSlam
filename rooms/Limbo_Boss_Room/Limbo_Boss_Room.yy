{
  "$GMRoom":"",
  "%Name":"Limbo_Boss_Room",
  "creationCodeFile":"rooms/rmParent/RoomCreationCode.gml",
  "inheritCode":true,
  "inheritCreationOrder":true,
  "inheritLayers":true,
  "instanceCreationOrder":[
    {"name":"inst_64C7D7D4","path":"rooms/Limbo_Boss_Room/Limbo_Boss_Room.yy",},
    {"name":"inst_6F346B9F","path":"rooms/Limbo_Boss_Room/Limbo_Boss_Room.yy",},
    {"name":"inst_7B7D40C8","path":"rooms/Limbo_Boss_Room/Limbo_Boss_Room.yy",},
    {"name":"inst_48FBF562","path":"rooms/Limbo_Boss_Room/Limbo_Boss_Room.yy",},
    {"name":"inst_6308DDA8","path":"rooms/Limbo_Boss_Room/Limbo_Boss_Room.yy",},
    {"name":"inst_42CC4706","path":"rooms/Limbo_Boss_Room/Limbo_Boss_Room.yy",},
    {"name":"inst_50574177","path":"rooms/Limbo_Boss_Room/Limbo_Boss_Room.yy",},
    {"name":"inst_368EDAEF","path":"rooms/Limbo_Boss_Room/Limbo_Boss_Room.yy",},
    {"name":"inst_4054DDA2","path":"rooms/Limbo_Boss_Room/Limbo_Boss_Room.yy",},
    {"name":"inst_52FBD8AD","path":"rooms/Limbo_Boss_Room/Limbo_Boss_Room.yy",},
  ],
  "isDnd":false,
  "layers":[
    {"$GMRLayer":"","%Name":"Render_Above_Instances","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":true,"layers":[
        {"$GMRInstanceLayer":"","%Name":"Bouncy","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
            {"$GMRInstance":"","%Name":"inst_4054DDA2","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_4054DDA2","objectId":{"name":"obj_wall_bounce","path":"objects/obj_wall_bounce/obj_wall_bounce.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":85.0,"scaleY":1.0,"x":32.0,"y":736.0,},
            {"$GMRInstance":"","%Name":"inst_52FBD8AD","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_52FBD8AD","objectId":{"name":"obj_wall_bounce","path":"objects/obj_wall_bounce/obj_wall_bounce.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":-15.0,"scaleY":1.0,"x":256.0,"y":448.0,},
          ],"layers":[],"name":"Bouncy","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
        {"$GMRTileLayer":"","%Name":"Platforms","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Platforms","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":24,"SerialiseWidth":43,"TileCompressedData":[
              -253,-2147483648,1,61,-304,-2147483648,1,61,-15,-2147483648,-8,0,-4,-2147483648,3,72,73,73,-23,-2147483648,
              -3,0,-2,-2147483648,-8,0,-30,-2147483648,7,72,73,75,-2147483648,-2147483648,0,72,-4,73,2,74,75,-145,
              -2147483648,1,61,-16,-2147483648,4,72,73,74,75,-4,-2147483648,4,72,73,74,75,-14,-2147483648,1,61,-42,
              -2147483648,1,61,-42,-2147483648,1,61,-89,-2147483648,
            ],"TileDataFormat":1,},"tilesetId":{"name":"TileSet7","path":"tilesets/TileSet7/TileSet7.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
        {"$GMRTileLayer":"","%Name":"Collision","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Collision","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":24,"SerialiseWidth":43,"TileCompressedData":[
              14,10,11,10,11,10,11,10,11,10,11,10,11,10,12,-6,129,37,9,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,
              10,11,10,11,10,11,10,10,11,10,11,10,11,10,11,10,11,10,11,10,12,-6,129,37,9,11,10,11,10,11,10,11,10,11,
              10,11,10,11,10,11,10,11,10,11,10,11,10,10,11,10,11,10,11,10,11,10,11,10,11,10,12,-6,129,37,9,11,10,11,
              10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,10,11,10,11,10,11,10,11,10,11,10,11,10,12,-6,
              129,37,9,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,10,11,10,11,10,11,10,11,10,
              11,10,11,10,12,-6,129,24,9,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,10,-12,
              18,1,20,-6,129,1,17,-10,18,13,11,10,11,10,11,10,11,10,11,10,11,10,12,-14,-2147483648,-3,0,-12,-2147483648,
              14,9,11,10,11,10,11,10,11,10,11,10,11,10,12,-29,-2147483648,14,9,11,10,11,10,11,10,11,10,11,10,11,10,
              12,-29,-2147483648,14,9,11,10,11,10,11,10,11,10,11,10,11,10,20,-29,-2147483648,1,17,-12,18,1,129,-29,
              -2147483648,-14,129,-29,-2147483648,-14,129,-29,-2147483648,-14,129,-26,-2147483648,-3,0,1,1,-19,2,1,
              4,-22,-2147483648,21,9,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,12,-22,-2147483648,21,
              9,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,12,-22,-2147483648,12,9,11,10,11,10,11,10,
              11,10,11,10,11,-3,10,6,11,10,11,10,11,12,-22,-2147483648,14,9,11,10,11,10,11,10,11,10,11,10,11,10,41,
              -5,18,2,19,20,-22,-2147483648,1,17,-12,18,1,12,-42,-2147483648,1,12,-42,-2147483648,1,12,-42,-2147483648,
              1,12,-42,-2147483648,1,33,-42,2,
            ],"TileDataFormat":1,},"tilesetId":{"name":"TileSet7","path":"tilesets/TileSet7/TileSet7.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
      ],"name":"Render_Above_Instances","properties":[],"resourceType":"GMRLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"GUI","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"GUI","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Instances","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":false,"instances":[
        {"$GMRInstance":"","%Name":"inst_64C7D7D4","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":true,"inheritedItemId":{"name":"inst_64C7D7D4","path":"rooms/rmParent/rmParent.yy",},"inheritItemSettings":true,"isDnd":false,"name":"inst_64C7D7D4","objectId":{"name":"obj_room_BGM","path":"objects/obj_room_BGM/obj_room_BGM.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":736.0,"y":416.0,},
        {"$GMRInstance":"","%Name":"inst_6F346B9F","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_6F346B9F","objectId":{"name":"obj_room_entrance","path":"objects/obj_room_entrance/obj_room_entrance.yy",},"properties":[
            {"$GMOverriddenProperty":"","%Name":"","name":"","objectId":{"name":"obj_room_entrance","path":"objects/obj_room_entrance/obj_room_entrance.yy",},"propertyId":{"name":"entrance_id","path":"objects/obj_room_entrance/obj_room_entrance.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"1",},
          ],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1184.0,"y":672.0,},
        {"$GMRInstance":"","%Name":"inst_7B7D40C8","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_7B7D40C8","objectId":{"name":"obj_room_entrance","path":"objects/obj_room_entrance/obj_room_entrance.yy",},"properties":[
            {"$GMOverriddenProperty":"","%Name":"","name":"","objectId":{"name":"obj_room_entrance","path":"objects/obj_room_entrance/obj_room_entrance.yy",},"propertyId":{"name":"entrance_id","path":"objects/obj_room_entrance/obj_room_entrance.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"0",},
          ],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":-1.0,"x":1184.0,"y":672.0,},
        {"$GMRInstance":"","%Name":"inst_48FBF562","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_48FBF562","objectId":{"name":"obj_gate","path":"objects/obj_gate/obj_gate.yy",},"properties":[
            {"$GMOverriddenProperty":"","%Name":"","name":"","objectId":{"name":"obj_obstacle","path":"objects/obj_obstacle/obj_obstacle.yy",},"propertyId":{"name":"room_index","path":"objects/obj_obstacle/obj_obstacle.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"3",},
            {"$GMOverriddenProperty":"","%Name":"","name":"","objectId":{"name":"obj_obstacle","path":"objects/obj_obstacle/obj_obstacle.yy",},"propertyId":{"name":"active","path":"objects/obj_obstacle/obj_obstacle.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"True",},
          ],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":2.0,"x":1248.0,"y":608.0,},
        {"$GMRInstance":"","%Name":"inst_6308DDA8","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_6308DDA8","objectId":{"name":"obj_boss_trigger","path":"objects/obj_boss_trigger/obj_boss_trigger.yy",},"properties":[
            {"$GMOverriddenProperty":"","%Name":"","name":"","objectId":{"name":"obj_boss_trigger","path":"objects/obj_boss_trigger/obj_boss_trigger.yy",},"propertyId":{"name":"tied_room_index","path":"objects/obj_boss_trigger/obj_boss_trigger.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"3",},
          ],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":2.0,"x":960.0,"y":608.0,},
        {"$GMRInstance":"","%Name":"inst_42CC4706","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_42CC4706","objectId":{"name":"obj_room_transition","path":"objects/obj_room_transition/obj_room_transition.yy",},"properties":[
            {"$GMOverriddenProperty":"","%Name":"","name":"","objectId":{"name":"obj_room_transition","path":"objects/obj_room_transition/obj_room_transition.yy",},"propertyId":{"name":"destination","path":"objects/obj_room_transition/obj_room_transition.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"Restroom_B4_Boss",},
            {"$GMOverriddenProperty":"","%Name":"","name":"","objectId":{"name":"obj_room_transition","path":"objects/obj_room_transition/obj_room_transition.yy",},"propertyId":{"name":"dest_entrance_id","path":"objects/obj_room_transition/obj_room_transition.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"1",},
          ],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":2.0,"x":1312.0,"y":608.0,},
        {"$GMRInstance":"","%Name":"inst_50574177","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_50574177","objectId":{"name":"obj_boss_limbo","path":"objects/obj_boss_limbo/obj_boss_limbo.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":128.0,"y":384.0,},
        {"$GMRInstance":"","%Name":"inst_368EDAEF","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_368EDAEF","objectId":{"name":"obj_gate","path":"objects/obj_gate/obj_gate.yy",},"properties":[
            {"$GMOverriddenProperty":"","%Name":"","name":"","objectId":{"name":"obj_obstacle","path":"objects/obj_obstacle/obj_obstacle.yy",},"propertyId":{"name":"room_index","path":"objects/obj_obstacle/obj_obstacle.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"3",},
            {"$GMOverriddenProperty":"","%Name":"","name":"","objectId":{"name":"obj_obstacle","path":"objects/obj_obstacle/obj_obstacle.yy",},"propertyId":{"name":"active","path":"objects/obj_obstacle/obj_obstacle.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"False",},
          ],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":2.0,"x":224.0,"y":480.0,},
      ],"layers":[],"name":"Instances","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRLayer":"","%Name":"Render_Below_Instances","depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":true,"layers":[
        {"$GMRLayer":"","%Name":"Enemy_Paths","depth":700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Enemy_Paths","properties":[],"resourceType":"GMRLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
        {"$GMRAssetLayer":"","%Name":"Assets","assets":[],"depth":800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Assets","properties":[],"resourceType":"GMRAssetLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
        {"$GMRTileLayer":"","%Name":"BG_Tiles","depth":900,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"BG_Tiles","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":0,"SerialiseWidth":0,"TileSerialiseData":[],},"tilesetId":null,"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
        {"$GMRBackgroundLayer":"","%Name":"Background","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":1000,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Background","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"sBGLimbo4_Boss","path":"sprites/sBGLimbo4_Boss/sBGLimbo4_Boss.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
      ],"name":"Render_Below_Instances","properties":[],"resourceType":"GMRLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
  ],
  "name":"Limbo_Boss_Room",
  "parent":{
    "name":"Limbo",
    "path":"folders/Rooms/Limbo.yy",
  },
  "parentRoom":{
    "name":"rmParent",
    "path":"rooms/rmParent/rmParent.yy",
  },
  "physicsSettings":{
    "inheritPhysicsSettings":true,
    "PhysicsWorld":false,
    "PhysicsWorldGravityX":0.0,
    "PhysicsWorldGravityY":10.0,
    "PhysicsWorldPixToMetres":0.1,
  },
  "resourceType":"GMRoom",
  "resourceVersion":"2.0",
  "roomSettings":{
    "Height":768,
    "inheritRoomSettings":true,
    "persistent":false,
    "Width":1366,
  },
  "sequenceId":null,
  "views":[
    {"hborder":400,"hport":720,"hspeed":-1,"hview":540,"inherit":false,"objectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"vborder":128,"visible":true,"vspeed":-1,"wport":1280,"wview":960,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings":{
    "clearDisplayBuffer":true,
    "clearViewBackground":false,
    "enableViews":true,
    "inheritViewSettings":true,
  },
  "volume":1.0,
}