/datum/round_event_control/antagonist/solo/wizard
	name = "Wizard"
	typepath = /datum/round_event/antagonist/solo/wizard
	antag_flag = ROLE_WIZARD
	antag_datum = /datum/antagonist/wizard
	restricted_roles = list(
		JOB_CAPTAIN,
		JOB_HEAD_OF_SECURITY,
	) // Just to be sure that a wizard getting picked won't ever imply a Captain or HoS not getting drafted
	maximum_antags = 1
	roundstart = TRUE
	weight = 2
	min_players = 35
	max_occurrences = 1

/datum/round_event_control/antagonist/solo/wizard/can_spawn_event(popchecks = TRUE, allow_magic, fake_check = FALSE)
	. = ..()
	if(!.)
		return
	if(GLOB.wizardstart.len == 0)
		return FALSE

/datum/round_event/antagonist/solo/wizard

/datum/round_event/antagonist/solo/wizard/add_datum_to_mind(datum/mind/antag_mind)
	. = ..()
	antag_mind.current.forceMove(pick(GLOB.wizardstart))
