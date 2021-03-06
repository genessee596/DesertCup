/*
Town access doors
Sheriff/Deputy, Gatehouse etc: 62 ACCESS_GATEWAY
General access: 25 ACCESS_BAR
Clinic surgery/storage: 68 ACCESS_CLONING
Shopkeeper: 34 ACCESS_CARGO_BOT
here's a tip, go search DEFINES/access.dm
*/

/*
Mayor
*/

/datum/job/den/f13mayor
	title = "Mayor"
	flag = F13MAYOR
	department_flag = DEN
	faction = "Town"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the people of the town"
	description = "The liason for the town for the deputies and land owners, you pass laws, policies based around the law and commerce that effect those local or passing through. Meanwhile with outsiders you engage in diplomatic meetings and make deals with the powers present within the Region."
	selection_color = "#d7b088"
	exp_requirements = 1080
	exp_type = EXP_TYPE_DEN

	outfit = /datum/outfit/job/den/f13mayor
	access = list(ACCESS_BAR, ACCESS_CLONING, ACCESS_GATEWAY, ACCESS_CARGO_BOT)
	minimal_access = list(ACCESS_BAR, ACCESS_CLONING, ACCESS_GATEWAY, ACCESS_CARGO_BOT)

/datum/outfit/job/den/f13mayor
	name = "Mayor"
	jobtype = /datum/job/den/f13mayor

	ears = 			/obj/item/radio/headset/headset_den
	id =            /obj/item/card/id/silver/mayor
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	l_pocket = /obj/item/storage/bag/money/small/settler
	r_pocket = /obj/item/flashlight/flare
	belt = /obj/item/gun/ballistic/revolver/colt357
	shoes = 		/obj/item/clothing/shoes/f13/tan
	uniform = /obj/item/clothing/under/f13/gentlesuit
	suit = /obj/item/clothing/suit/armor/f13/town/mayor
	head = /obj/item/clothing/head/f13/town/mayor
	backpack_contents = list(
		/obj/item/clothing/head/f13/town/big, \
		/obj/item/storage/box/citizenship_permits, \
		/obj/item/ammo_box/a357=2, \
		/obj/item/pen/fountain/captain)

/*--------------------------------------------------------------*/

/datum/job/den/f13sheriff
	title = "Sheriff"
	flag = F13SHERIFF
	department_flag = DEN
	head_announce = list("Security")
	faction = "Town"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the mayor"
	description = "Seems like you're Johnny Law these days. Outside of the more obvious day to day tasks in dealing with local disputes and keeping the peace, you're main trade is in corpses - dead or alive... doesn't matter much to the town. Whether you obtain these bounties yourself or through the means of notorious gunslingers is up to you, just as long as you keep the road safe and your people alive."
	selection_color = "#d7b088"
	exp_requirements = 720
	exp_type = EXP_TYPE_DEN

	outfit = /datum/outfit/job/den/f13sheriff
	access = list(ACCESS_BAR, ACCESS_CLONING, ACCESS_GATEWAY, ACCESS_CARGO_BOT)
	minimal_access = list(ACCESS_BAR, ACCESS_CLONING, ACCESS_GATEWAY, ACCESS_CARGO_BOT)

/datum/outfit/job/den/f13sheriff
	name = "Sheriff"
	jobtype = /datum/job/den/f13sheriff

	id = /obj/item/card/id/dogtag/sheriff
	belt = null
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer

	ears = 			/obj/item/radio/headset/headset_den
	uniform =  		/obj/item/clothing/under/f13/sheriff
	shoes = 		/obj/item/clothing/shoes/f13/cowboy
	suit = 			/obj/item/clothing/suit/armor/f13/town/sheriff
	head = 			/obj/item/clothing/head/f13/town/sheriff
	glasses =		/obj/item/clothing/glasses/sunglasses
	l_hand = 		/obj/item/gun/ballistic/shotgun/automatic/hunting/brush
	l_pocket =		/obj/item/storage/bag/money/small/den
	backpack_contents = list(
		/obj/item/storage/box/deputy_badges=1, \
		/obj/item/ammo_box/tube/c4570=2, \
		/obj/item/ammo_box/m44=2, \
		/obj/item/restraints/handcuffs=1)
	r_pocket = /obj/item/flashlight/flare
	belt = /obj/item/gun/ballistic/revolver/m29/peacekeeper

/datum/job/den/f13sheriff/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Hard Yards")

/*--------------------------------------------------------------*/

/datum/job/den/f13deputy
	title = "Deputy"
	flag = F13DEPUTY
	department_flag = DEN
	faction = "Town"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the sheriff and the mayor"
	description = "Working alongside the Sheriff you've known them for a while, having worked with them under the previous Sheriff - you bagged many a bandit and raider together on the road. These days you patrol the areas outside of town, tracking down bounties on the run and keeping the settlers safe from harm."
	selection_color = "#dcba97"
	exp_requirements = 360
	exp_type = EXP_TYPE_DEN

	outfit = /datum/outfit/job/den/f13deputy
	access = list(ACCESS_BAR, ACCESS_GATEWAY)
	minimal_access = list(ACCESS_BAR, ACCESS_GATEWAY)

/datum/outfit/job/den/f13deputy
	name = "Deputy"
	jobtype = /datum/job/den/f13deputy

	ears = 			/obj/item/radio/headset/headset_den
	id =            /obj/item/card/id/dogtag/deputy
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	l_pocket = /obj/item/storage/bag/money/small/settler
	r_pocket = /obj/item/flashlight/flare
	r_hand = /obj/item/gun/ballistic/shotgun/automatic/hunting/trail
	suit = 			/obj/item/clothing/suit/armor/f13/town/deputy
	head =	/obj/item/clothing/head/f13/town/deputy
	belt = /obj/item/gun/ballistic/revolver/colt357
	shoes = 		/obj/item/clothing/shoes/f13/explorer
	uniform = /obj/item/clothing/under/f13/cowboyb
	backpack_contents = list(
		/obj/item/ammo_box/a357=2, \
		/obj/item/ammo_box/tube/m44=2, \
		/obj/item/restraints/handcuffs=1)

/*--------------------------------------------------------------*/

/datum/job/den/f13farmer
	title = "Farmer"
	flag = F13FARMER
	department_flag = DEN
	faction = "Town"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the sheriff and the mayor"
	description = "A local settler of Yuma, you know a thing or two about cultivation and husbandry, making you a vital backbone of the town in growing medicines, crops and raising livestock in the service of the townsfolk."
	selection_color = "#dcba97"


	outfit = /datum/outfit/job/den/f13farmer
	access = list(ACCESS_BAR)
	minimal_access = list(ACCESS_BAR)

/datum/outfit/job/den/f13farmer
	name = "Farmer"
	jobtype = /datum/job/den/f13farmer

	id = /obj/item/card/id/dogtag/town
	ears = 			/obj/item/radio/headset/headset_den
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	l_pocket = /obj/item/storage/bag/money/small/settler
	r_pocket = /obj/item/flashlight/flare
	belt = /obj/item/storage/bag/plants
	backpack_contents = list(
		/obj/item/cultivator=1, \
		/obj/item/hatchet=1,
		/obj/item/shovel/spade=1)
	shoes = 		/obj/item/clothing/shoes/workboots

/datum/outfit/job/den/f13settler/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(
		/obj/item/clothing/under/f13/settler, \
		/obj/item/clothing/under/f13/brahminm, \
		/obj/item/clothing/under/f13/machinist, \
		/obj/item/clothing/under/f13/lumberjack, \
		/obj/item/clothing/under/f13/roving)

/*--------------------------------------------------------------*/

/datum/job/den/f13prospector
	title = "Prospector"
	flag = F13PROSPECTOR
	department_flag = DEN
	faction = "Town"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the sheriff and the mayor"
	description = "Prospecting is a complicated business, some call it scrounging or looting but there is more to it then sifting through rubble - few can boast the skills you posess in mining and delving through the ruins of pre-war America. Not many survive this line of business and the pay has always been uncertain, but perhaps today you'll find strike gold."
	selection_color = "#dcba97"
	exp_requirements = 180
	exp_type = EXP_TYPE_DEN

	outfit = /datum/outfit/job/den/f13prospector
	access = list(ACCESS_BAR)
	minimal_access = list(ACCESS_BAR)

/datum/outfit/job/den/f13prospector
	name = "Prospector"
	jobtype = /datum/job/den/f13prospector

	id = /obj/item/card/id/dogtag/town
	ears = /obj/item/radio/headset/headset_den
	suit = /obj/item/clothing/suit/armor/f13/raider/iconoclast/
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	l_pocket = /obj/item/storage/bag/money/small/settler
	r_pocket = /obj/item/flashlight/flare
	r_hand = /obj/item/pickaxe
	belt = /obj/item/storage/bag/ore
	shoes = /obj/item/clothing/shoes/workboots
	backpack_contents = list(
		/obj/item/mining_scanner=1, \
		/obj/item/shovel=1)

/datum/outfit/job/den/f13settler/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(
		/obj/item/clothing/under/f13/machinist, \
		/obj/item/clothing/under/f13/roving, \
		/obj/item/clothing/under/f13/cowboyt)

/*--------------------------------------------------------------*/

/datum/job/den/f13dendoc
	title = "Doctor"
	flag = F13DENDOC
	department_flag = DEN
	faction = "Town"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the sheriff and the mayor"
	description = "Handy with a scalpel and a scanner, your expertise in the practice of medicine makes you an indespesnbile asset to the town. How you play your trade and whether it be for profit or the fortune of others rests entirely upon your shoulders."
	selection_color = "#dcba97"
	exp_requirements = 540
	exp_type = EXP_TYPE_DEN

	outfit = /datum/outfit/job/den/f13dendoc
	access = list(ACCESS_BAR, ACCESS_CLONING)
	minimal_access = list(ACCESS_BAR, ACCESS_CLONING)

/datum/outfit/job/den/f13dendoc
	name = "Doctor"
	jobtype = /datum/job/den/f13dendoc
	chemwhiz = TRUE
	uniform = /obj/item/clothing/under/f13/medic
	ears = /obj/item/radio/headset/headset_den
	neck = /obj/item/clothing/neck/stethoscope
	suit = /obj/item/clothing/suit/toggle/labcoat
	backpack = /obj/item/storage/backpack/medic
	satchel = /obj/item/storage/backpack/satchel/med
	shoes = /obj/item/clothing/shoes/sneakers/white
	id = /obj/item/card/id/dendoctor
	l_pocket = /obj/item/storage/bag/money/small/settler
	r_pocket = /obj/item/flashlight/flare
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak=2, \
		/obj/item/storage/firstaid/regular,
		/obj/item/clothing/accessory/armband/medblue  \
		)

/*--------------------------------------------------------------*/

/datum/job/den/f13preacher
	title = "Preacher"
	flag = F13PREACHER
	department_head = list("Captain")
	department_flag = DEN
	head_announce = list("Security")
	faction = "Town"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Your Master(s)."
	description = "You are a beacon of faith in this godless Mojave wasteland, answering only to the higher beings past the plain of the mortal realm. Spread the beliefs of your divine masters through this land by any means necessary."
	selection_color = "#dcba97"
	exp_requirements = 0
	minimal_player_age = 0

	outfit = /datum/outfit/job/den/f13preacher

	loadout_options = list(
	/datum/outfit/loadout/standardpreacher, //Robes, Book
	/datum/outfit/loadout/atompreacher, //Atoms Judgement, Followers Robes
	)

	access = list(ACCESS_BAR)
	minimal_access = list(ACCESS_BAR)

/datum/outfit/loadout/atompreacher
	name = "Atom's Devout"
	l_hand = /obj/item/twohanded/sledgehammer/atomsjudgement
	backpack_contents = list(
		/obj/item/clothing/under/f13/atombeliever=1,
		/obj/item/clothing/under/f13/atomfaithful=3,
		/obj/item/clothing/head/helmet/f13/atombeliever=1
		)

/datum/outfit/loadout/standardpreacher
	name = "Protector of the Faith"
	l_hand = /obj/item/nullrod
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak=2
		)

/datum/job/den/f13preacher/after_spawn(mob/living/H, mob/M)
	if(H.mind)
		H.mind.isholy = TRUE

	var/obj/item/storage/book/bible/booze/B = new

	if(SSreligion.religion)
		B.deity_name = SSreligion.deity
		B.name = SSreligion.bible_name
		B.icon_state = SSreligion.bible_icon_state
		B.item_state = SSreligion.bible_item_state
		to_chat(H, "There is already an established religion onboard the station. You are an acolyte of [SSreligion.deity]. Defer to the Chaplain.")
		H.equip_to_slot_or_del(B, SLOT_IN_BACKPACK)
		var/nrt = SSreligion.holy_weapon_type || /obj/item/nullrod
		var/obj/item/nullrod/N = new nrt(H)
		H.put_in_hands(N)
		return

	var/new_religion = "Christianity"
	if(M.client && M.client.prefs.custom_names["religion"])
		new_religion = M.client.prefs.custom_names["religion"]

	var/new_deity = "Jesus"
	if(M.client && M.client.prefs.custom_names["deity"])
		new_deity = M.client.prefs.custom_names["deity"]

	B.deity_name = new_deity

	switch(lowertext(new_religion))
		if("christianity")
			B.name = pick("The Holy Bible","The Dead Sea Scrolls")
		if("satanism")
			B.name = "The Unholy Bible"
		if("cthulhu")
			B.name = "The Necronomicon"
		if("islam")
			B.name = "Quran"
		if("scientology")
			B.name = pick("The Biography of L. Ron Hubbard","Dianetics")
		if("chaos")
			B.name = "The Book of Lorgar"
		if("imperium")
			B.name = "Uplifting Primer"
		if("science")
			B.name = pick("Principle of Relativity", "Quantum Enigma: Physics Encounters Consciousness", "Programming the Universe", "Quantum Physics and Theology", "String Theory for Dummies", "How To: Build Your Own Warp Drive", "The Mysteries of Bluespace", "Playing God: Collector's Edition")
		else
			B.name = "The Holy Book of [new_religion]"

	SSreligion.religion = new_religion
	SSreligion.bible_name = B.name
	SSreligion.deity = B.deity_name

	H.equip_to_slot_or_del(B, SLOT_IN_BACKPACK)

	SSblackbox.record_feedback("text", "religion_name", 1, "[new_religion]", 1)
	SSblackbox.record_feedback("text", "religion_deity", 1, "[new_deity]", 1)

/datum/outfit/job/den/f13preacher
	name = "Preacher"
	jobtype = /datum/job/den/f13preacher
	ears = /obj/item/radio/headset/headset_den
	belt = null

	id = /obj/item/card/id/dogtag/town
	uniform = /obj/item/clothing/under/rank/chaplain
	backpack_contents = list(/obj/item/camera/spooky = 1)
	backpack = /obj/item/storage/backpack/cultpack
	satchel = /obj/item/storage/backpack/cultpack
	gloves =		/obj/item/clothing/gloves/fingerless
	shoes = 		/obj/item/clothing/shoes/jackboots
	backpack = 		/obj/item/storage/backpack/cultpack
	satchel = 		/obj/item/storage/backpack/cultpack
	r_hand = 		/obj/item/gun/ballistic/revolver/m29/alt
	r_pocket = /obj/item/flashlight/flare
	backpack_contents = list(
		/obj/item/ammo_box/m44=2, \
		/obj/item/reagent_containers/food/drinks/flask=1, \
		/obj/item/storage/fancy/candle_box, \
		/obj/item/storage/bag/money/small/settler)

/*--------------------------------------------------------------*/

/*/datum/job/den/f13faithful
	title = "Faithful"
	flag = F13FAITHFUL
	department_head = list("Captain")
	department_flag = DEN
	head_announce = list("Security")
	faction = "Town"
	total_positions = 3
	spawn_positions = 3
	supervisors = "The Preacher."
	description = "You are a acolyte of the true faith in this godless Mojave wasteland, answering only to the Preacher and higher beings past the plain of the mortal realm. Spread the beliefs of your divine masters through this land by any means necessary."
	selection_color = "#dcba97"

	outfit = /datum/outfit/job/den/f13faithful

	access = list(ACCESS_BAR)
	minimal_access = list(ACCESS_BAR)

/datum/outfit/job/den/f13faithful
	name = "Faithful"
	jobtype = /datum/job/den/f13faithful
	ears = /obj/item/radio/headset/headset_den
	belt = null
	id = /obj/item/card/id/dogtag/town
	uniform = /obj/item/clothing/under/f13/atombeliever
	gloves = /obj/item/clothing/gloves/f13/handwraps
	shoes = /obj/item/clothing/shoes/f13/rag
	backpack = /obj/item/storage/backpack/satchel/explorer
	r_pocket = /obj/item/flashlight/flare
	backpack_contents = list(
		/obj/item/reagent_containers/food/drinks/flask=1, \
		/obj/item/storage/fancy/candle_box, \
		/obj/item/storage/bag/money/small/settler)*/

/*--------------------------------------------------------------*/
/datum/job/den/f13settler
	title = "Citizen"
	flag = F13SETTLER
	department_flag = DEN
	faction = "Town"
	total_positions = 8
	spawn_positions = 8
	supervisors = "the sheriff and the mayor"
	description = "Much of the wasteland is filled with conflict and strife, as a local settler to Yuma you benefit in that you have a claim to the land and the opportunities that unfold."
	selection_color = "#dcba97"
	exp_requirements = 0
	minimal_player_age = 0

	outfit = /datum/outfit/job/den/f13settler

	loadout_options = list(
	/datum/outfit/loadout/provisioner,
    /datum/outfit/loadout/bum,
    /datum/outfit/loadout/properlady,
    /datum/outfit/loadout/propergent,
    /datum/outfit/loadout/hombre,
	)
	access = list(ACCESS_BAR)
	minimal_access = list(ACCESS_BAR)

/datum/outfit/loadout/provisioner
	name = "Provisioner"
	neck = /obj/item/clothing/neck/scarf/cptpatriot
	suit = /obj/item/clothing/suit/jacket/miljacket
	uniform = /obj/item/clothing/under/f13/merca
	gloves = /obj/item/clothing/gloves/f13/leather
	shoes = /obj/item/clothing/shoes/f13/explorer
	backpack_contents = list(/obj/item/reagent_containers/food/drinks/flask)

/datum/outfit/loadout/bum
	name = "Bum"
	mask = /obj/item/clothing/mask/facewrap
	suit = /obj/item/clothing/suit/poncho
	uniform = /obj/item/clothing/under/f13/rag
	gloves = /obj/item/clothing/gloves/f13/handwraps
	shoes = /obj/item/clothing/shoes/f13/rag
	backpack_contents = list(/obj/item/storage/bag/trash, /obj/item/reagent_containers/food/drinks/bottle/whiskey)

/datum/outfit/loadout/properlady
	name = "Proper Lady"
	head = /obj/item/clothing/head/beret/black
	suit = /obj/item/clothing/under/sailordress
	gloves = /obj/item/clothing/gloves/f13/lace
	shoes = /obj/item/clothing/shoes/f13/fancy
	backpack_contents = list(/obj/item/reagent_containers/food/drinks/bottle/wine)

/datum/outfit/loadout/propergent
	name = "Respectable Gent"
	head = /obj/item/clothing/head/f13/beaver
	suit = /obj/item/clothing/suit/fluff/cowboybvest
	uniform = /obj/item/clothing/under/f13/bartenderalt
	shoes = /obj/item/clothing/shoes/f13/fancy
	backpack_contents = list(/obj/item/storage/box/matches, /obj/item/storage/fancy/cigarettes/cigars)

/datum/outfit/loadout/hombre
	name = "Hombre"
	head = /obj/item/clothing/head/f13/cowboy
	suit = /obj/item/clothing/suit/f13/duster
	uniform = /obj/item/clothing/under/f13/cowboyb
	gloves = /obj/item/clothing/gloves/f13/leather
	shoes = /obj/item/clothing/shoes/f13/cowboy
	backpack_contents = list()

/datum/outfit/job/den/f13settler
	name = "Citizen"
	jobtype = /datum/job/den/f13settler
	ears = /obj/item/radio/headset/headset_den
	belt = null
	id = /obj/item/card/id/dogtag/town
	ears = /obj/item/radio/headset/headset_den
	uniform = /obj/item/clothing/under/f13/settler
	shoes = /obj/item/clothing/shoes/jackboots
	backpack = /obj/item/storage/backpack/satchel/explorer
	r_pocket = /obj/item/flashlight/flare
	backpack_contents = list(/obj/item/storage/bag/money/small/settler)

/*--------------------------------------------------------------*/

/datum/job/den/f13shopkeeper
    title = "Shopkeeper"
    flag = F13SHOPKEEPER
    department_flag = DEN
    faction = "Town"
    total_positions = 2
    spawn_positions = 2
    supervisors = "the sheriff and the mayor"
    description = "The capitalist economy of pre-war america survived alongside its people. Now it's your job to continue its survival so make some caps!"
    selection_color = "#dcba97"
    exp_requirements = 180
    exp_type = EXP_TYPE_DEN

    outfit = /datum/outfit/job/den/f13shopkeeper
    access = list(ACCESS_BAR, ACCESS_CARGO_BOT)
    minimal_access = list(ACCESS_BAR, ACCESS_CARGO_BOT)

/datum/outfit/job/den/f13shopkeeper
    name = "Shopkeeper"
    jobtype = /datum/job/den/f13shopkeeper

    id = /obj/item/card/id/dogtag/town
    uniform = /obj/item/clothing/under/f13/roving
    ears = /obj/item/radio/headset/headset_den
    backpack = /obj/item/storage/backpack
    satchel = /obj/item/storage/backpack/satchel
    duffelbag = /obj/item/storage/backpack/duffelbag
    gloves = /obj/item/clothing/gloves/fingerless
    l_pocket = /obj/item/storage/bag/money/small/den
    r_pocket = /obj/item/flashlight/flare
    shoes = /obj/item/clothing/shoes/f13/explorer
    backpack_contents = list()
