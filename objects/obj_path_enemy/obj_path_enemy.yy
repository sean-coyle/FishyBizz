{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_path_enemy",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_basic_enemy","path":"objects/obj_basic_enemy/obj_basic_enemy.yy",},"propertyId":{"name":"score","path":"objects/obj_basic_enemy/obj_basic_enemy.yy",},"value":"5",},
  ],
  "parent": {
    "name": "Enemies",
    "path": "folders/Objects/Enemies.yy",
  },
  "parentObjectId": {
    "name": "obj_basic_enemy",
    "path": "objects/obj_basic_enemy/obj_basic_enemy.yy",
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
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"lock_on_distance","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"100","varType":0,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_enemy_down",
    "path": "sprites/spr_enemy_down/spr_enemy_down.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}