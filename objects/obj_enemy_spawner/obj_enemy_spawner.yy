{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_enemy_spawner",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":2,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [],
  "parent": {
    "name": "Enemies",
    "path": "folders/Objects/Enemies.yy",
  },
  "parentObjectId": null,
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
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"spawn_rate","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"200","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"enemy_per_level","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":100.0,"rangeMin":1.0,"value":"10","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"enemy_type1","filters":[
        "GMObject",
      ],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"obj_basic_enemy","varType":5,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"enemy_type2","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"obj_ranged_enemy","varType":5,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"melee_percentage","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":100.0,"rangeMin":0.0,"value":"70","varType":1,},
  ],
  "solid": false,
  "spriteId": null,
  "spriteMaskId": null,
  "visible": true,
}