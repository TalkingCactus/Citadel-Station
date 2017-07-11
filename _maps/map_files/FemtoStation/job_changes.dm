/datum/job/New()
	..()
	MAP_JOB_CHECK
	supervisors = "the Captain and the Head of Personnel"

/datum/outfit/job/New()
	..()
	MAP_JOB_CHECK
	box = /obj/item/weapon/storage/box/survival/radio

//Command

/datum/job/captain/New()
	..()
	MAP_JOB_CHECK
	supervisors = "Nanotrasen and Central Command"

/datum/job/hop/New()
	..()
	MAP_JOB_CHECK
	supervisors = "the captain and Central Command"

/datum/job/hop/get_access()
	MAP_JOB_CHECK_BASE
	return get_all_accesses()

//Medical
/datum/job/cmo/config_check()
	return 0

/datum/job/doctor/New()
	..()
	MAP_JOB_CHECK
	total_positions = 4
	spawn_positions = 4

/datum/job/chemist/New()
	..()
	MAP_JOB_CHECK
	total_positions = 1
	spawn_positions = 1

//removed jobs
MAP_REMOVE_JOB(hos)
MAP_REMOVE_JOB(chief_engineer)
MAP_REMOVE_JOB(atmos)
MAP_REMOVE_JOB(qm)
MAP_REMOVE_JOB(cmo)
MAP_REMOVE_JOB(geneticist)
MAP_REMOVE_JOB(virologist)//remove once viro is added
MAP_REMOVE_JOB(rd)
MAP_REMOVE_JOB(warden)
MAP_REMOVE_JOB(lawyer)
MAP_REMOVE_JOB(clown)
MAP_REMOVE_JOB(mime)
MAP_REMOVE_JOB(atmos)
MAP_REMOVE_JOB(roboticist)
MAP_REMOVE_JOB(curator)