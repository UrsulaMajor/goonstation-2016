
/obj/item/reagent_containers/food/drinks/noodlecup
	name = "Discount Dan's Quik-Noodles"
	desc = "A self-heating cup of noodles. There's enough sodium in these to put the Dead Sea to shame."
	icon_state = "noodlecup"
	heal_amt = 1
	var/activated = 0
	initial_volume = 60

	New()
		..()

		//ensure_reagent_holder()
		var/datum/reagents/R = reagents
		R.add_reagent("chickensoup", 10)
		if (prob(75))
			R.add_reagent("grease", 1)
		else
			R.add_reagent("badgrease",1)
		R.add_reagent("msg",9)
		R.add_reagent("salt",10)
		R.add_reagent("nicotine",8)
		switch( rand(1, 14))
			if (1)
				name = "Discount Dan's Quik-Noodles - Gamer Grubs Flavor"
				R.add_reagent("yuck", 10)
				R.add_reagent("potassium",5)

			if (2)
				name = "Discount Deng's Quik-Noodles - Teriyaki TVP Flavor"
				R.add_reagent("synthflesh",5)
				R.add_reagent("msg",5)

			if (3)
				name = "Discount Dan's Quik-Noodles - Macaroni and Imitation Processed Cheese Product Flavor"
				R.add_reagent("fakecheese",2)
				R.add_reagent("grease",8)

			if (4)
				name = "Comrade Dan's Quik-Noodles - Beef Perestroikanoff Flavor"
				R.add_reagent("milk",3)
				R.add_reagent("denatured_enzyme",3)
				R.add_reagent("beff",4)

			if (5)
				name = "Pirate Dan's Quik-Noodles - Spicy Imitation Crab Meat Paste Flavor"
				R.add_reagent("synthflesh",3)
				R.add_reagent("saltpetre",3)
				R.add_reagent("capsaicin",14)

			if (6)
				name = "Frycook Dan's Quik-Noodles - Mushroom-Swiss Burger-Bake Flavor"
				R.add_reagent("beff",2)
				R.add_reagent("gcheese",2)
				R.add_reagent("psilocybin",6)

			if (7)
				name = "Discount Deng's Quik-Noodles - Sweet and Sour Lo Mein Flavor"
				R.add_reagent("acid",3)
				R.add_reagent("VHFCS",7)

			if (8)
				name = "Descuento Danito's Quik-Noodles - Tuna Melt Taco Fiesta Flavor"
				R.add_reagent("fakecheese",3)
				R.add_reagent("mercury",3)
				R.add_reagent("capsaicin",4)

			if (9)
				name = "Sconto Danilo's Quik-Noodles - Italian Strozzapreti Lunare Flavor"
				R.add_reagent("juice_tomato",4) //I guess the lunar style of pasta is with a tomato wine red sauce
				R.add_reagent("wine",2)
				R.add_reagent("water_holy",2)
				R.add_reagent("venom",2)

			if (10)
				name = "Rabatt Dan's Snabb-Nudlar - Inkokt Lax Smörgåsbord Smak"
				R.add_reagent("cleaner",2)
				R.add_reagent("mercury",2)
				R.add_reagent("swedium",6)

			if (11)
				name = "Frycook Dan's Quik-Noodles - Curly Fry Ketchup Hoedown Flavor"
				R.add_reagent("juice_tomato",3)
				R.add_reagent("mugwort",3)
				R.add_reagent("capsaicin",3)
				R.add_reagent("mashedpotatoes",3)

			if (12)
				name = "Morning Dan's Quik-Noodles - Mechanically Reclaimed Sausage Biscuit Flavor"
				R.add_reagent("ammonia",3)
				R.add_reagent("gravy",4)
				R.add_reagent("badgrease",3)
				R.add_reagent("coffee",3)
				if (prob(5))
					R.add_reagent("prions",2.5)

			if (13)
				name = "Devil Dan's Quik-Noodles - Brimstone BBQ Flavor"
				R.add_reagent("sulfur",5)
				R.add_reagent("beff",5)
				R.add_reagent("ghostchilijuice",5)

			if (14)
				name = "Dessert Dan's Quik-Noodles - Sweet Sundae Noodle Flavor"
				R.add_reagent("VHFCS", 10)
				R.add_reagent("chocolate", 5)
				R.add_reagent("vanilla", 2)
				R.add_reagent("milk", 3)


	attack_self(mob/user as mob)
		if (activated)
			return

		src.activated = 1
		if (reagents)
			reagents.add_reagent("thalmerite",2)
			reagents.add_reagent("oxygen", 2)
			reagents.handle_reactions()
			spawn(100)
				reagents.del_reagent("thalmerite")
		boutput(user, "The cup emits a soft clack as the heater triggers.")
		return

/obj/item/reagent_containers/food/snacks/burrito
	name = "Descuento Danito's Burritos"
	desc = "A self-heating convenience reinterpretation of Mexican cuisine. The exact mechanism used to heat it is probably best left to speculation."
	icon = 'icons/obj/foodNdrink/food_snacks.dmi'
	icon_state = "burrito"
	amount = 3
	heal_amt = 2
	doants = 0 //Ants aren't dumb enough to try to eat these.
	var/activated = 0
	initial_volume = 50

	New()
		..()

		//ensure_reagent_holder()
		var/datum/reagents/R = reagents
		if (prob(75))
			R.add_reagent("grease", 3)
		else
			R.add_reagent("badgrease",3)
		R.add_reagent("msg",9)
		switch(rand(1, 9))
			if (1)
				src.name = "Descuento Danito's Burritos - Beff and Bean Flavor"
				R.add_reagent("uranium", 2)
				R.add_reagent("beff", 4)
				R.add_reagent("fakecheese",4)
				R.add_reagent("refried_beans", 10)

			if (2)
				src.name = "Descuento Danito's Burritos - Strawberrito Churro Flavor"
				desc = "There is no way anyone could possibly justify this."
				R.add_reagent("VHFCS", 8)
				R.add_reagent("oil", 2)

			if (3)
				src.name = "Descuento Danito's Burritos - Spicy Beans and Wieners Ole! Flavor"
				R.add_reagent("lithium", 4)
				R.add_reagent("capsaicin", 6)
				R.add_reagent("refried_beans", 10)

			if (4)
				src.name = "Descuento Danito's Burritos - Pancake Sausage Brunch Flavor"
				desc = "A self-heating breakfast burrito with a buttermilk pancake in lieu of a tortilla. A little frightening."
				R.add_reagent("porktonium", 4)
				R.add_reagent("VHFCS", 2)
				R.add_reagent("coffee", 4)

			if (5)
				src.name = "Descuento Danito's Burritos - Homestyle Comfort Flavor"
				desc = "A self-heating burrito just like Mom used to make, if your mother was a souless, automated burrito production line."
				R.add_reagent("mashedpotatoes", 5)
				R.add_reagent("gravy", 3)
				R.add_reagent("diethylamine", 2)

			if (6)
				src.name = "Spooky Dan's BOO-ritos - Texas Toast Chainsaw Massacre Flavor"
				desc = "A self-heating burrito.  Isn't that concept scary enough on its own?"
				R.add_reagent("fakecheese",3)
				R.add_reagent("space_drugs",3)
				R.add_reagent("bloodc",4)

			if (7)
				src.name = "Spooky Dan's BOO-ritos - Nightmare on Elm Meat Flavor"
				desc = "A self-heating burrito that purports to contain elm-smoked meat. Of some sort. Probably from an animal."
				R.add_reagent("beff",3)
				R.add_reagent("synthflesh",2)
				R.add_reagent("tongueofdog",5)

			if (8)
				src.name = "Sconto Danilo's Burritos - 50% Real Mozzarella Pepperoni Pizza Party Flavor"
				desc = "A self-heating pizza burrito."
				R.add_reagent("fakecheese",3)
				R.add_reagent("cheese",3)
				R.add_reagent("pepperoni",3)

			if (9)
				src.name = "Descuento Danito's Burritos - Inside Out Burrito"
				desc = "You're not even really sure how to eat this."
				icon_state = "burrito_rev"
				R.add_reagent("reversium",5)
				R.add_reagent("refried_beans", 10)
				R.add_reagent("beff",3)
				R.add_reagent("fakecheese",3)
	attack_self(mob/user as mob)
		if (activated)
			return

		if (prob(10) || user.bioHolder.HasEffect("hulk"))
			user.visible_message("<span style=\"color:red\"><b>[user]</b> snaps the burrito in half!</span>", "<span style=\"color:red\">You accidentally snap the burrito apart. Fuck!</span>")
			src.splat()
			return

		src.activated = 1
		if (reagents)
			reagents.add_reagent("thalmerite",2)
			reagents.add_reagent("oxygen", 2)
			reagents.handle_reactions()
		boutput(user, "You crack the burrito like a glow stick, activating the heater mechanism.")
		return

	throw_impact(var/turf/T)
		if (prob(10) && T)
			src.splat()
		else
			..()

	proc/splat()
		var/turf/T = get_turf(src)
		if(!locate(/obj/decal/cleanable/vomit) in T)
			playsound(T, "sound/effects/splat.ogg", 50, 1)
			var/obj/decal/cleanable/vomit/filling = new /obj/decal/cleanable/vomit(src)
			var/icon/fillicon = icon(filling.icon, filling.icon_state)
			fillicon.MapColors(0.50, 0.25, 0)
			filling.icon = fillicon

			filling.name = "burrito filling"
			filling.desc = "The evacuated contents of a burrito."
			filling.reagents = src.reagents
			filling.set_loc(T)

		qdel(src)

/obj/item/reagent_containers/food/snacks/snack_cake
	name = "Little Danny's Snack Cake"
	desc = "A highly-processed miniature cake, coated with a thin layer of solid pseudofrosting."
	icon = 'icons/obj/foodNdrink/food_snacks.dmi'
	icon_state = "snackcake"
	amount = 2
	heal_amt = 2
	var/color_prob = 100
	initial_volume = 50

	golden
		name = "Little Danny's Legally-Distinct Creme-Filled Snack Loaf"
		desc = "A highly-processed miniature sponge cake, filled with some manner of creme."
		icon_state = "snackcake2"
		color_prob = 10

	New()
		..()
		reagents.add_reagent("badgrease",3)
		reagents.add_reagent("VHFCS",9)

		pixel_x = rand(-3,3)
		pixel_y = rand(-3,3)

		var/i = 3
		while(i-- > 0)
			reagents.add_reagent(pick("beff","sugar","eggnog","chocolate","vanilla","cleaner","luminol","poo","urine","nicotine","weedkiller","venom","jenkem","ethanol","ectoplasm"), 5)

		if (prob(color_prob))
			var/icon/newicon = icon(src.icon, src.icon_state)
			newicon.Blend( pick(rgb(0,0,255),rgb(204,0,102),rgb(255,255,0),rgb(51,153,0),rgb(219,161,40),rgb(84,32,0)) )
			src.icon= newicon

/obj/item/tvdinner
	name = "Hungry Dan's Self-Microwaving Meals"
	desc = "A box containing a self-heating TV dinner."
	icon = 'icons/obj/foodNdrink/food_snacks.dmi'
	icon_state = "tvdinnerc"
	w_class = 1
	throwforce = 2
	var/full = 1
	var/traytype = 0
	flags = ONBELT | TABLEPASS | FPRINT
	stamina_damage = 3
	stamina_cost = 3
	rand_pos = 1

	New()
		src.traytype = rand(1,9)
		switch(src.traytype)
			if (1)
				src.name = "Hungry Dan's Self-Microwaving Meals - Seven Layer Salisbury Steak Flavor"
				src.desc = "A box containing a self-heating TV dinner. There's a picture of a tasty steak on the cover."
			if (2)
				src.name = "Hungry Dan's Self-Microwaving Meals - Partially Baked Spring Chicken Flavor"
				src.desc = "A box containing a self-heating TV dinner. Is this box shaking, or is it just you?"
			if (3)
				src.name = "Hungry Dan's Self-Microwaving Meals - Imported Lo Mein Lasagna Flavor"
				src.desc = "A box containing a self-heating TV dinner. You can't read any of the words on this box!"
			if (4)
				src.name = "Morning Dan's Self-Microwaving Meals - Grand Slam Breakfast Flavor"
				src.desc = "A box containing a self-heating TV dinner. There's a picture of a tasty looking egg, pancake, and sausage breakfast on it"
			if (5)
				src.name = "Corporal Dan's Self-Microwaving Meals - Last Meal Flavor"
				src.desc = "A box containing a self-heating TV dinner. Guaranteed to be your last meal, or else."
			if (6)
				src.name = "Hungry Dan's Self-Microwaving Meals - Macaroni and Cheese Chunks Flavor"
				src.desc = "A box containing a self-heating TV dinner. The bottom of the box says \"may contain research chemicals.\""
			if (7)
				src.name = "Gobbler Dan's Self-Microwaving Meals - Thanksgiving Dinner Flavor"
				src.desc = "A box containing a self-heating TV dinner. Just like your cloning pod used to make."
			if (8)
				src.name = "Hungry Dan's Self-Microwaving Meals - \"Pizza\" Party Flavor"
				src.desc = "A box containing a self-heating TV dinner. There's a picture of a scrumptious pizza on the cover"
			if (9)
				src.name = "Hungry Dan's Self-Microwaving Meals - BBQ Grill Alfredo Noodles Flavor"
				src.desc = "A box containing a self-heating TV dinner. Have \"fusion\" dishes gone too far?"
		return ..()

	attack_hand(mob/user as mob)
		if (user.find_in_hand(src))//r_hand == src || user.l_hand == src)
			if (src.full == 0)
				user.show_text("The box is empty you idiot.", "red")
				return
			else
				var/obj/item/reagent_containers/food/snacks/tvdinner/W = new /obj/item/reagent_containers/food/snacks/tvdinner(null, src.traytype)
				user.put_in_hand_or_drop(W)
				src.full = 0
				src.icon_state = "tvdinnero"
				src.desc = "An empty TV dinner box."
				return
		else
			return ..()
            
            

/obj/item/reagent_containers/food/snacks/tvdinner
	name = "Hungry Dan's Self-Microwaving Meals"
	desc = "A self-heating TV dinner. You should probably use a fork."
	icon = 'icons/obj/foodNdrink/food_snacks.dmi'
	icon_state = "tvdinnert"
	needfork = 1
	amount = 2
	heal_amt = 2
	doants = 0 //Ants aren't dumb enough to try to eat these.
	var/activated = 0
	initial_volume = 50

	New(loc, var/traytype = 0)
		..()
		var/datum/reagents/R = reagents
		if (prob(75))
			R.add_reagent("grease", 3)
		else
			R.add_reagent("badgrease",3)
		R.add_reagent("msg",9)
		R.add_reagent("nicotine",3)
		R.add_reagent("salt",5)
		if(!traytype)
			traytype = rand(1, 9)
		switch(traytype)
			if (1)
				src.name = "Hungry Dan's Self-Microwaving Meals - Seven Layer Salisbury Steak Flavor" //Seven layers of reconsituted meat product
				src.desc = "A self-heating TV dinner containing a squashed brown mess. You should probably use a fork."
				R.add_reagent("beff", 7)
				R.add_reagent("bread",2)
				R.add_reagent("juice_tomato",10)
				R.add_reagent("cornstarch",10)


			if (2)
				src.name = "Hungry Dan's Self-Microwaving Meals - Partially Baked Spring Chicken Flavor" //So spring it's an egg
				src.desc = "A self-heating TV dinner. Is... this still moving? You should probably use a fork."
				R.add_reagent("THC", 4.20)
				R.add_reagent("oil", 10)
				if (prob(25))
					R.add_reagent("flaptonium", 5) //the egg hatched
				else
					R.add_reagent("chickensoup",5)
					R.add_reagent("egg",5) //hadn't hatched yet
				R.add_reagent("chocolate", 10) //chocolate brownie


			if (3)
				src.name = "Hungry Dan's Self-Microwaving Meals - Imported Lo Mein Lasagna Flavor" //Imported from swede-land
				src.desc = "A self-heating TV dinner containing a well-travelled chinese lasagna. You should probably use a fork."
				R.add_reagent("juice_tomato", 5)
				R.add_reagent("swedium", 5)
				R.add_reagent("bread", 10)
				R.add_reagent("fakecheese",2)

			if (4)
				src.name = "Morning Dan's Self-Microwaving Meals - Grand Slam Breakfast Flavor" //A real knockout
				desc = "A self-heating TV dinner that'll knock you out of the park. You should probably use a fork."
				R.add_reagent("porktonium", 4)
				R.add_reagent("VHFCS", 2)
				R.add_reagent("coffee", 4)
				R.add_reagent("egg", 4)
				R.add_reagent("george_melonium", 1) //IT'S OUTTA THE PARK

			if (5)
				src.name = "Corporal Dan's Self-Microwaving Meals - Last Meal Flavor" //Your last meal, or else!
				src.desc = "A self-heating TV dinner that's guaranteed to be your last meal, or else. You should probably use a fork."
				R.add_reagent("gravy",10)
				R.add_reagent("beff",4)
				if (prob(5))
					R.add_reagent("curare", 2)
				else
					R.add_reagent("capulettium", 5)
                
                
			if (6)
				src.name = "Hungry Dan's Self-Microwaving Microwaveable Meals - Macaroni and Cheese Flavor"
				src.desc = "A self-heating TV dinner containing a multicolored macaroni and cheese. You should probably use a fork."
				R.add_reagent("fakecheese",4)
				R.add_reagent("LSD",2)
				R.add_reagent("bread",3)


			if (7)
				src.name = "Gobbler Dan's Self-Microwaving Meals - Thanksgiving Dinner Flavor"
				src.desc = "A self-heating TV dinner that looks so filling you're yawning just thinking about it. You should probably use a fork."
				R.add_reagent("blood",4)
				R.add_reagent("synthflesh",3)
				R.add_reagent("sonambutril",1)
				R.add_reagent("VHFCS", 4)
				R.add_reagent("mashedpotatoes",5)
				R.add_reagent("gravy",5)

			if (8)
				src.name = "Hungry Dan's Self-Microwaving Meals - \"Pizza\" Party Flavor"
				src.desc = "A self-heating TV dinner containing a \"pizza\". You should probably use a fork."
				R.add_reagent("fakecheese",6)
				R.add_reagent("pepperoni",3)
				R.add_reagent("paper",3)
				R.add_reagent("mercury",1)

			if (9)
				src.name = "Hungry Dan's Self-Microwaving Meals - BBQ Grill Alfredo Noodles Flavor"
				src.desc = "A self-heating TV dinner saltier than Lot's wife. You should probably use a fork."
				R.add_reagent("salt", 20)
				R.add_reagent("ectoplasm",1) //Insert joke about deadchat here
				R.add_reagent("bread", 10)
				R.add_reagent("chickensoup",3)
				R.add_reagent("cheese",3)
				R.add_reagent("capsaicin",5)
				R.add_reagent("hydrogen",10)
                                
	attack_self(mob/user as mob)
		if (activated)
			return

		src.activated = 1
		if (reagents)
			reagents.add_reagent("thalmerite",2)
			reagents.add_reagent("oxygen", 2)
			reagents.add_reagent("radium", 1) //Self Microwaving?!
			reagents.handle_reactions()
		boutput(user, "You twist the tray, activating the heater mechanism.")
		return
