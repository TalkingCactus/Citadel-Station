/mob/living/simple_animal/hostile/megafauna/mantis
	name = "space mantis"
	desc = "A giant, mutated species of mantis which eats you from the inside out after cutting you in half with its huge clawed appendages. Your pokedex says to run."
	health = 1000
	maxHealth = 1000
	attacktext = "slices"
	attack_sound = 'sound/magic/demon_attack1.ogg'
	icon_state = "spacemantis"
	icon_living = "spacemantis"
	icon_dead = "spacemantis"
	friendly = "caresses"
	icon = 'code/citadel/mobs/cit_spacemantis.dmi'
	speak_emote = list("chitters")
	armour_penetration = 40
	melee_damage_lower = 40
	melee_damage_upper = 40
	speed = 1
	move_to_delay = 10
	ranged = 0
	flying = 0
	mob_size = MOB_SIZE_LARGE
	pixel_x = -22
	aggro_vision_range = 18
	idle_vision_range = 5
	loot = list()
	butcher_results = list(/obj/item/stack/sheet/sinew = 5, /obj/item/stack/sheet/bone = 30)
	var/obj/item/device/gps/internal
	deathmessage = "slumps to the ground, motionless and dead."
	death_sound = 'sound/magic/demon_dies.ogg'

/mob/living/simple_animal/hostile/megafauna/mantis/devour(mob/living/L)
	if(L.stat == DEAD)
		var/organs = 0
		var/blood = 0
		var/healed_amt = 0
		if(iscarbon(L))
			var/mob/living/carbon/C = L
			var/obj/item/organ/org
			for(org in C.internal_organs)
				if(istype(org, /obj/item/organ/brain))
					continue
				organs++
				org.Remove(C)//removes the organ from their body
				qdel(org)//then immediately deletes it
			if(C.blood_volume >= 1)//If they have any blood left...
				blood += C.blood_volume//suck it up
				C.blood_volume -= blood
			healed_amt = round((blood/2)+(organs*25))
			if(healed_amt >= 1)
				adjustBruteLoss(-healed_amt)
				src.visible_message(
					"<span class='danger'>[src] extends a tube-like tongue and sucks the innards from [L]!</span>",
					"<span class='userdanger'>You suck the innards from [L], restoring your health!</span>")
				playsound(get_turf(src), 'sound/magic/Demon_consume.ogg', 50, 0, 0)
			else

		else
			src.visible_message(
				"<span class='danger'>[src] extends a tube-like tongue and sucks the innards from [L]!</span>",
				"<span class='userdanger'>You suck the innards from [L], restoring your health!</span>")
			playsound(get_turf(src), 'sound/magic/Demon_consume.ogg', 50, 0, 0)
			adjustBruteLoss(-L.maxHealth/2)
			L.gib()

/mob/living/simple_animal/hostile/megafauna/mantis/AltClickOn(atom/movable/A)
	if(!istype(A))
		return
	if(istype(A, /mob/living))
		devour(A)
