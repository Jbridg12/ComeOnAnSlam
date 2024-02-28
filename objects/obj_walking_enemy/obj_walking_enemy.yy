{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_walking_enemy",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_pausable_object","path":"objects/obj_pausable_object/obj_pausable_object.yy",},"propertyId":{"name":"platform_transparent","path":"objects/obj_pausable_object/obj_pausable_object.yy",},"value":"False",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"detection_radius","path":"objects/obj_enemy/obj_enemy.yy",},"value":"50",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"path_action","path":"objects/obj_enemy/obj_enemy.yy",},"value":"reverse",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_pausable_object","path":"objects/obj_pausable_object/obj_pausable_object.yy",},"propertyId":{"name":"use_gravity","path":"objects/obj_pausable_object/obj_pausable_object.yy",},"value":"True",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_pausable_object","path":"objects/obj_pausable_object/obj_pausable_object.yy",},"propertyId":{"name":"weight","path":"objects/obj_pausable_object/obj_pausable_object.yy",},"value":"5",},
  ],
  "parent": {
    "name": "Entities",
    "path": "folders/Objects/Entities.yy",
  },
  "parentObjectId": {
    "name": "obj_walking_entity",
    "path": "objects/obj_walking_entity/obj_walking_entity.yy",
  },
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [],
  "solid": false,
  "spriteId": {
    "name": "Man",
    "path": "sprites/Man/Man.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}