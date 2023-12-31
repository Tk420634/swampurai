/obj/item/projectile/ion
	name = "ion bolt"
	icon_state = "ion"
	damage = 28
	damage_type = BURN
	flag = "energy"
	impact_effect_type = /obj/effect/temp_visual/impact_effect/ion
	var/emp_radius = 2

/obj/item/projectile/ion/on_hit(atom/target, blocked = FALSE)
	..()
	empulse_using_range(target, emp_radius)
	return BULLET_ACT_HIT

/obj/item/projectile/ion/weak
	emp_radius = 1
	damage = 20
