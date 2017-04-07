//Research loot which spawns in the material storage room or wherever you want, really. Randomizes what the minimum level of research science can achieve per round without assistance from mining.
/obj/effect/spawner/lootdrop/research_mats
	name = "3x research loot spawner"
	loot = list(/obj/item/stack/sheet/mineral/plasma = 20,
			/obj/item/stack/sheet/metal/twenty = 20,
			/obj/item/stack/sheet/glass/twenty = 20,
			/obj/item/device/assembly/igniter = 5,
			/obj/item/device/assembly/prox_sensor = 5,
			/obj/item/device/assembly/signaler = 5,
			/obj/item/device/assembly/timer = 5,
			/obj/item/device/assembly/flash = 5,
			/obj/item/device/aicard = 5,
			/obj/item/stack/sheet/mineral/gold = 5,
			/obj/item/stack/sheet/mineral/silver = 5,
			/obj/item/bodypart/l_arm/robot = 2,
			/obj/item/bodypart/r_arm/robot = 2,
			/obj/item/bodypart/l_leg/robot = 2,
			/obj/item/bodypart/r_leg/robot = 2,
			/obj/item/device/unactivated_swarmer/deactivated = 1,
			/obj/item/organ/body_egg/alien_embryo = 1,
			/obj/item/organ/brain/alien = 2)
	lootcount = 3

//Specific items for this lootdrop:
/obj/item/stack/sheet/glass/twenty
	amount = 20
/obj/item/stack/sheet/metal/twenty
	amount = 20
