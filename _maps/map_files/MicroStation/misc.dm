// Override global variables here!

var/datum/map_config/MicroStation = new()

/datum/map_config/New()
	..()
	accessable_z_levels = list(1,4,5) // Restrict the map to the non-empty z levels, which were all combined in MiniStation

/obj/item/device/encryptionkey/heads/New()
	..()
	// Give all channels and turn everything on
	channels = list("Command" = 1, "Security" = 1, "Engineering" = 1, "Science" = 1, "Medical" = 1, "Supply" = 1, "Service" = 1)
