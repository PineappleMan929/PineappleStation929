/obj/effect/non_mentor_blocker
	name = "nerd only barrier"
	desc = "\"mentors only\" is printed below it."
	icon = 'goon/icons/obj/meteor_shield.dmi'
	icon_state = "shieldw"
	color = COLOR_PINK
	mouse_opacity = MOUSE_OPACITY_TRANSPARENT
	anchored = TRUE

/obj/effect/gun_check_blocker/CanPass(atom/movable/mover, border_dir)
	for(var/object in mover.get_all_contents())
		if(!client?.is_mentor)
			return FALSE
	return ..()
