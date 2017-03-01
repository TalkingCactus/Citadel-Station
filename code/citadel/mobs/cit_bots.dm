/mob/living/simple_animal/bot/sexbot
	name = "\improper Sexbot"
	desc = "A robot used to perform several sexual acts on a patient. These are used to increase productivity by reducing the time employees spend distracted by sexual urges."
	icon = 'code/citadel/icons/mobs.dmi'
	icon_state = "sexbot"
	density = 0
	anchored = 0
	health = 20
	maxHealth = 20
	pass_flags = PASSMOB

	bot_type = SEX_BOT
	model = "Sexbot"
	bot_core_type = /obj/machinery/bot_core/sexbot
	window_id = "sexbot"
	window_name = "Sexbot Version 1.0"

	var/obj/item/weapon/reagent_containers/glass/reagent_glass = null //Can be set to draw from this for reagents.
	var/mob/living/carbon/patient = null
	var/mob/living/carbon/oldpatient = null
	var/oldloc = null
	var/last_found = 0
	var/last_newpatient_speak = 0 //Don't spam the "HEY I'M COMING" messages
	var/injection_amount = 15 //How much reagent do we inject at a time?
	var/stationary_mode = 0 //If enabled, the Medibot will not move automatically.
	var/shut_up = 0 //self explanatory :)

/obj/machinery/bot_core/sexbot
	req_one_access =list(access_robotics)

/mob/living/simple_animal/bot/sexbot/update_icon()
	overlays.Cut()
	if(on)
		if(stationary_mode)

		else
			add_overlay()

/mob/living/simple_animal/bot/sexbot/New()
	..()
	update_icon()

/mob/living/simple_animal/bot/sexbot/get_controls(mob/user)
	var/dat
	dat += hack(user)
	dat += showpai(user)
	dat += "<TT><B>Sexbot Controls v1.0</B></TT><BR><BR>"
	dat += "Status: <A href='?src=\ref[src];power=1'>[on ? "On" : "Off"]</A><BR>"
	dat += "Maintenance panel panel is [open ? "opened" : "closed"]<BR>"
	dat += "<br>Behaviour controls are [locked ? "locked" : "unlocked"]<hr>"
	if(!locked || issilicon(user) || IsAdminGhost(user))
		dat += "The speaker switch is [shut_up ? "off" : "on"]. <a href='?src=\ref[src];togglevoice=[1]'>Toggle</a><br>"
		dat += "Patrol Station: <a href='?src=\ref[src];operation=patrol'>[auto_patrol ? "Yes" : "No"]</a><br>"
		dat += "Stationary Mode: <a href='?src=\ref[src];stationary=1'>[stationary_mode ? "Yes" : "No"]</a><br>"

	return dat