if not OP then OP = {} end
if not OP.Global then OP.Global = {} end
if not OP.Global.Locales then OP.Global.Locales = {} end
if not OP.Global.Locales.Languages then OP.Global.Locales.Languages = {} end

-- AUTO LOCALES: 32 (do not change)

OP.Global.Locales.Languages["et-EE"] = {
	-- configuration settings for language
	largeNumberSeparator = ",", -- with it set as ",", 1000000 -> 1,000,000 in a lot of labels
	floatSeparator = ".", -- with it set as ".", (25 + (1/5)) -> 25.2
	useMetric = false,

	-- locales shared between all resources
	shared = {
		system = "Süsteem",
		warning = "Hoiatus",
		invalid_input = "Vigane sisend.",
		missing_input = "Puudub sisend.",
		missing_or_invalid_input = "Puuduvad või vigased sisendid.",
		player_not_found = "Mängijat serveri ID-ga `${serverId}` ei leitud.",
		something_went_wrong = "Midagi läks valesti. Palun proovi uuesti.",
		yes = "Jah",
		no = "Ei",
		n_a = "Puudub",
		invalid_server_id = "Vigane serveri ID."
	},

	-- animations/*
	emotes = {
		get_in_trunk = "Vajuta ~INPUT_ENTER~, et minna pakiruumi.",
		put_boombox_in_trunk = "Vajuta ~INPUT_ENTER~, et panna boombox pakiruumi.",
		put_player_in_trunk = "Vajuta ~INPUT_ENTER~, et panna mängija pakiruumi.",
		put_player_in_seat = "[${VehicleEnterKey}] Istu istmele",
		putting_player_in_seat = "Istmele panemine",
		trunk_interaction_display = "[${VehicleEnterKey}] Välju sõidukist [${InteractionKey}] Ava/sulge pagasiruum",
		trunk_open_close_display = "[${InteractionKey}] Ava/sulge pagasiruum",
		trunk_get_out_display = "[${VehicleEnterKey}] Väljumine",
		boombox_already_in_trunk = "Pagasiruumis on juba helisüsteem.",
		the_trunk_is_occupied = "Pagasiruum on hõivatud.",
		unable_to_toggle_carry = "Palun oodake enne kandmise sisse/välja lülitamist.",
		carry_disabled_animal = "Lemmikloomad ei saa kanda.",

		trunk_hint = "Kasuta \"/door\" avamiseks või sulgemiseks pagasniku läheduses seistes.",

		cancel_piggyback = "Vajutage ~INPUT_FRONTEND_RRIGHT~, et loobuda selja tagant kandmisest.",
		piggyback_hop_on = "[${InteractionKey}] hüppa selga",
		stop_piggyback = "Vajuta ~INPUT_VEH_HEADLIGHT~, et lõpetada seljakotiga sõitmist.",

		lockpicking_cuffs = "Käeraua luku murdmine",
		lockpick_cuffs_too_fast = "Liigutad liiga kiiresti.",
		success_lockpick_cuffs = "Käearmude lukustuse murdmine õnnestus.",
		failed_lockpick_cuffs = "Käearmude lukustuse murdmine ebaõnnestus.",
		lockpick_lost = "Oled oma luku murtud.",

		not_cuffed = "Sind ei ole käeraudadega kinni pandud.",
		unable_to_lockpick = "Sa ei saa käeraudu lukustuse murtmist teha.",

		lockpick_cuffs_logs_title = "Murdetud käeraudade lukud",
		lockpick_cuffs_logs_details = "${consoleName} murdis oma käeraudu kasutades `${itemName}`.",

		you_are_not_being_carried = "Sa ei ole praegu üles tõstetud.",
		successfully_uncarried = "Üles tõstmine peatati edukalt.",
		failed_uncarried = "Üles tõstmise sunniviisilist peatamist ei õnnestunud läbi viia.",
		uncarry_missing_permissions = "Prooviti sundida kandmist lõpetama ilma õigete õigusteta.",

		uncarry_logs_title = "Jõuga peatatud üles tõstmine",
		uncarry_logs_details = "${consoleName} sundis ${targetName} end üles tõstmast.",

		failed_carry_npc = "NPC üles tõstmine ebaõnnestus.",
		carry_npc_something_wrong = "Midagi läks valesti, kui prooviti karakterit üles tõsta.",

		e_to_struggle = "Vajutage E võitluse alustamiseks",
		cant_struggle_dead = "Te ei saa surnuna võidelda",
		struggle_to_quick = "Pärast seda, kui olete just võidelnud, olete väsinud. Oodake veidi ja proovige uuesti.",
		struggle_logs_title = "Vabadusse pääsenud",
		struggle_logs_details = "${consoleName} sai vabadusse ${targetName} haardetest võitles",

		ragdolled_player = "Muudetud mängija ${displayName} ragdoll'iks."
	},

	-- base/*
	admin = {
		feature_toggle_activated_logs_title = "Kaugjuhtimisega aktiveeritud omadus",
		feature_toggle_activated_logs_details_state = "${consoleName} aktiveeris mängijale ${targetConsoleName} funktsiooni '${featureName}' olekuga '${newState}''.",
		feature_toggle_activated_all_logs_title = "Lülitas funktsiooni kõigile kaugjuhtimisega",
		feature_toggle_activated_all_logs_details = "${consoleName} lülitas funktsiooni '${featureName}' kõigile.",
		feature_toggle_activated_self_logs_title = "Lülitas funktsiooni endale",
		feature_toggle_activated_self_on_logs_details = "${consoleName} lülitas funktsiooni '${featureName}' endale sisse.",
		feature_toggle_activated_self_off_logs_details = "${consoleName} lülitas funktsiooni '${featureName}' endale välja.",
		feature_toggle_success = "`${featureName}` lülitatud sisse ${consoleName} jaoks.",
		feature_toggle_success_all = "`${featureName}` lülitatud sisse kõigile.",
		feature_toggle_failed = "Serveri ID ${serverId} jaoks `${featureName}` lülitamine ebaõnnestus.",
		feature_toggle_success_on = "`${featureName}` lülitatud sisse ${consoleName} jaoks.",
		feature_toggle_success_off = "`${featureName}` välja lülitatud ${consoleName} jaoks.",

		noclip_toggle_activated_self_logs_title = "Noclip lülitatud sisse",
		noclip_toggle_activated_self_on_logs_details = "${consoleName} lülitas Noclipi sisse asukohas  `x: ${xCoord}, y: ${yCoord}, z: ${zCoord}`. (Sõidukis: ${inVehicle})",
		noclip_toggle_activated_self_off_logs_details = "${consoleName} lülitas noclipi välja asukohas `x: ${xCoord}, y: ${yCoord}, z: ${zCoord}`.",

		model_name_not_provided = "Modeli nime ei esitatud.",
		model_name_invalid = "Mudeli nimi `${modelName}` on sobimatu.",
		model_name_not_a_vehilce = "Mudelinimi `${modelName}` pole sõiduk.",
		failed_to_spawn_vehicle = "Sõiduki loomine ebaõnnestus.",
		spawned_vehicle_for_player = "Edukalt loodi '${modelName}' mängijale ${displayName} sõiduk.",
		spawned_vehicle_for_everyone = "Edukalt ilmus '${modelName}' kõigile.",
		spawned_vehicle_for_self_title = "Sõiduki tekitamine",
		spawned_vehicle_for_self_details = "${consoleName} tekitas sõiduki mudelinimega `${modelName}`.",
		spawned_vehicle_for_player_title = "Sõiduki tekitamine mängijale",
		spawned_vehicle_for_player_details = "${consoleName} tekitas sõiduki mudelinimega `${modelName}` mängijale ${targetConsoleName}.",
		spawned_vehicle_for_everyone_title = "Sõiduki tekitamine kõigile",
		spawned_vehicle_for_everyone_details = "${consoleName} tekitas sõiduki mudelinimega `${modelName}` kõigile.",

		vehicle_created = "Sõiduk edukalt loodud.",
		failed_vehicle_creation = "Sõiduki loomine ebaõnnestus.",

		-- NOTE: `add_vehicle` command:
		add_vehicle_added_vehicle_for_everyone = "Lisati sõiduk mudelinimega `${modelName}` kõigile.",
		add_vehicle_added_vehicle_for_player = "Lisati sõiduk mudelinimega `${modelName}` kasutajale ${consoleName}.",
		add_vehicle_added_vehicle = "Lisati sõiduk mudelinimega `${modelName}`.",
		add_vehicle_character_not_loaded = "Valitud mängijal pole laetud ühtegi tegelast.",
		add_vehicle_target_user_not_found = "Sihtkasutajat ei leitud.",
		add_vehicle_invalid_input = "Vigane sisend.",
		add_vehicle_no_permissions = "Puuduvad õigused.",
		add_vehicle_user_not_found = "Kasutajat ei leitud.",
		add_vehicle_invalid_player = "Serveri ID-ga `${serverId}` ei leitud ühtegi mängijat.",
		add_vehicle_invalid_model_name = "Mudelinime `${modelName}` ei ole kehtiv mudel.",
		add_vehicle_no_model_name = "Mudeli nime ei lisatud.",

		added_vehicle_for_everyone_logs_title = "Lisas sõiduki kõigile",
		added_vehicle_for_everyone_logs_details = "${consoleName} lisas kõigi garaažidesse sõiduki mudelinimega `${modelName}`.",
		added_vehicle_for_player_logs_title = "Mängijale Lisatud Sõiduk",
		added_vehicle_for_player_logs_details = "${consoleName} lisas sõiduki mudeliga `${modelName}` ${targetConsoleName} garaaži.",
		added_vehicle_logs_title = "Lisatud Sõiduk",
		added_vehicle_logs_details = "${consoleName} lisas sõiduki mudeliga `${modelName}` oma garaaži.",

		vehicle_saved = "Sõiduk edukalt salvestatud mudelinimega `${modelName}`.",
		failed_to_save_vehicle = "Sõiduki salvestamine ebaõnnestus.",

		invalid_amount = "Vigane summa.",

		added_cash_title = "Raha lisatud",
		added_cash_details = "${consoleName} lisas $${amount} raha.",
		added_cash_to_player_title = "Mängijale raha lisatud",
		added_cash_to_player_details = "${consoleName} lisas $${amount} raha kasutajale ${targetConsoleName}.",
		added_cash_to_everyone_title = "Igaühele raha lisatud",
		added_cash_to_everyone_details = "${consoleName} lisas $${amount} raha kõigile.",

		removed_cash_title = "Eemaldatud sularaha",
		removed_cash_details = "${consoleName} eemaldas $${amount} sularaha.",
		removed_cash_from_player_title = "Eemaldatud sularaha mängijalt",
		removed_cash_from_player_details = "${consoleName} eemaldas $${amount} sularaha mängijalt ${targetConsoleName}.",
		removed_cash_from_everyone_title = "Eemaldatud sularaha kõigilt",
		removed_cash_from_everyone_details = "${consoleName} eemaldas $${amount} sularaha kõigilt.",

		added_bank_title = "Lisatud panka",
		added_bank_details = "${consoleName} lisas $${amount} pangakontole.",
		added_bank_to_player_title = "Lisatud panga raha mängijale",
		added_bank_to_player_details = "${consoleName} lisas ${targetConsoleName}'le $${amount} panga raha.",
		added_bank_to_everyone_title = "Lisatud panga raha kõigile",
		added_bank_to_everyone_details = "${consoleName} lisas $${amount} panga raha kõikidele.",

		removed_bank_title = "Eemaldatud panga raha",
		removed_bank_details = "${consoleName} eemaldas $${amount} panga raha.",
		removed_bank_from_player_title = "Eemaldatud panga raha mängijalt",
		removed_bank_from_player_details = "${consoleName} eemaldas ${targetConsoleName}'lt $${amount} panga raha.",
		removed_bank_from_everyone_title = "Eemaldatud kõigilt panga raha",
		removed_bank_from_everyone_details = "${consoleName} eemaldas kõigilt $${amount} panga raha.",

		added_cash = "Lisatud $${amount} sularaha.",
		added_cash_to_player = "Lisatud $${amount} sularaha mängijale ${targetConsoleName}.",
		added_cash_to_everyone = "Lisatud $${amount} sularaha kõigile.",

		removed_cash = "Eemaldatud $${amount} sularaha.",
		removed_cash_from_player = "Eemaldatud $${amount} sularaha mängijalt ${targetConsoleName}.",
		removed_cash_from_everyone = "Eemaldatud $${amount} sularaha kõigilt.",

		added_bank = "Lisati $${amount} panka.",
		added_bank_to_player = "Lisati $${amount} panka mängijale ${targetConsoleName}.",
		added_bank_to_everyone = "Lisati $${amount} panka kõigile.",

		removed_bank = "Eemaldati $${amount} panka.",
		removed_bank_from_player = "Eemaldati $${amount} panka mängijalt ${targetConsoleName}.",
		removed_bank_from_everyone = "Eemaldati $${amount} panka kõigilt.",

		spawned_item_title = "Tehti eseme spawnaus",
		spawned_item_details = "${consoleName} tegi endale ${amount}x `${itemName}`.",
		spawned_item_for_player_title = "Eseme spawnimine mängijale",
		spawned_item_for_player_details = "${consoleName} spawnis eseme nimega `${itemName}` ${amount} tk ${targetConsoleName}-ile.",
		spawned_item_for_everyone_title = "Esme spawnimine kõigile",
		spawned_item_for_everyone_details = "${consoleName} spawnis eseme nimega `${itemName}` ${amount} tk kõigile.",

		report_title = "TÄHELEPANU-${reportId}, ${reporterName} teatel",
		report_logs_title = "Teatis",
		report_logs_details = "${consoleName} loodud teatis (${reportId}) sisaldab järgnevat sõnumit: `${reportMessage}`",

		announcement_staff_title = "Töötaja teadaanne",
		announcement_server_title = "Serveri teadaanne",

		announcement_logs_title = "Serveriülene teadaanne",
		announcement_logs_details = "${consoleName} tegi järgmise teadaande kogu serverile: `${announcementMessage}`",

		new_player_revive_logs_title = "Uus mängija elustamine",
		new_player_revive_logs_details = "${consoleName} elustati, kuna uus mängija, kes teda tappis, sai bänni.",

		posted_announcement = "Teade postitatud.",
		posted_announcement_locale = "Teade postitatud valitud keeles.",
		failed_to_post_announcement = "Teate postitamine ebaõnnestus, sest sisu puudus.",
		failed_to_post_announcement_locale = "Teate postitamine ebaõnnestus, kuna valitud keelt ei toetata.",

		staff_title = "MEESKOND ${staffName}",
		staff_message_logs_title = "Meeskonna sõnumid",
		staff_message_logs_details = "${consoleName} saatis personali vestluses järgneva sõnumi: `${staffMessage}`",

		staff_pm_title = "PERSONALI VESTLUS ${transmissionTitle}",
		staff_pm_logs_title = "Personalivestlus",
		staff_pm_logs_details = "${senderConsoleName} saatis järgneva sõnumi vastuvõtjale ${recipientConsoleName}: `${staffPrivateMessage}`",
		staff_pm_not_logged_in = "Sa pole sisse logitud.",
		staff_pm_not_user_not_found = "Kasutajaga, kelle serveri ID on ${serverId}, ei leitud.",
		staff_pm_not_recipient_not_staff = "Mängijale, kellele üritad sõnumit saata, pole personali liige.",
		staff_pm_unable_to_message_self = "Sa ei saa iseendaga sõnumit vahetada.",
		staff_pm_warning = "Personaliga sõnumi hoiatus",
		staff_pm_first_time = "Näeme, et te pole varem personaliga sõnumeid vahetanud. Personaliga sõnumile vastamiseks kasutage käsku /staffpm.",

		important_staff_pm_title = "!STAFF PM Sinult -> ${recipient}",
		close_staffpm = "Sulge",
		staffpm_from = "StaffPM kasutajalt <i>${from}</i>",
		important_staff_pm_logs_title = "Oluline Staff PM",
		important_staff_pm_logs_details = "${senderConsoleName} saatis järgmise olulise sõnumi kasutajale ${recipientConsoleName}: `${message}`",

		external_staff_message = "Väline personali sõnum",
		external_staff_message_from_player = "Väline personali teade mängijalt ${playerName}",
		external_staff_message_content = "${staffMessage} (Te ei saa sellele sõnumile vastata.)",

		unable_to_staff_message_yourself = "Ei saa personali sõnumit endale saata.",
		message_sent = "Sõnum saadetud.",
		player_not_found = "Mängijat ei leitud.",
		missing_valid_target_source_parameter = "Puudub sobiv parameeter 'sihtmärgi allikas'.",
		missing_valid_message_parameter = "Puudub sobiv parameeter 'sõnum'.",

		invalid_coordinates = "Sisestatud koordinaadid x, y, z või w on sobimatud.",
		player_not_loaded_character = "Mängijal pole tegelast laetud.",
		teleport_successful = "Mängija teleporditi edukalt.",

		player_revived_success = "Mängija edukalt taaselustatud.",

		missing_valid_license_identifier_parameter = "Puudub kehtiv 'licenseIdentifier' parameeter.",

		wiped_entities = "Entiteedid kustutatud. Kustutatud ${deletedEntities} võrguühenduseta entiteeti.",
		wipe_entities_logs_title = "Kustutatud entiteedid",
		wipe_entities_logs_details = "${consoleName} käivitas entiteetide kustutamise järgmiste seadetega: kaugus = `${distance}`, ignoreeri kohalikke entiteete = `${ignoreLocalEntities}`, mudeli nimi = `${modelName}`",

		wipe_awaiting_confirmation = "Kustutamine ootab nüüd kinnitust. Kinnitamiseks või tühistamiseks sisesta 'jah' või 'ei' (aegub 60 sekundi pärast).\n\nValitud parameetrid on:\n- kaugus: `${distance}`\n- ignoreeri lokaalseid objekte: `${ignoreLocalEntities}`\n- mudeli nimi: `${modelName}`",
		wipe_awaiting_big_title = "Kustutamise hoiatus",
		wipe_awaiting_confirmation_big = "**Tähelepanu! Sa oled kustutamas väga suurt ala. Veendu, et see on sinu tahtmine!**\nKinnitamiseks või tühistamiseks sisesta 'jah' või 'ei' (aegub 60 sekundi pärast).\n\n- kaugus: `${distance}`\n- ignoreeri lokaalseid objekte: `${ignoreLocalEntities}`\n- mudeli nimi: `${modelName}`",
		cancelled_wipe = "Pühkimine on tühistatud.",

		there_is_people_nearby = "Läheduses on mängijaid, kes võivad näha, kui kasutad noclipi!",

		cant_while_spectating = "Te ei saa seda teha, kui olete vaatlejana.",

		you_have_been_kicked = "Sind on välja visatud ${kicker} poolt põhjusel `${reason}`.",
		you_have_been_kicked_no_reason = "Sind on välja visatud ${kicker} poolt põhjust märkimata.",

		logs_player_kicked_title = "Mängijat välja visatud",
		logs_player_kicked_system_title = "Mängija välja visatud süsteemi poolt",
		logs_player_kicked_details = "${consoleName} on visatud serverist välja ${kicker} poolt põhjusel `${reason}`.",
		logs_player_kicked_no_reason_details = "${consoleName} on visatud serverist välja ${kicker} poolt põhjust märkimata.",

		you_have_been_banned = "Te olete bannitud kasutaja ${banner} poolt põhjusel `${reason}`.",
		you_have_been_banned_no_reason = "Te olete bannitud kasutaja ${banner} poolt ilma tähenduseta põhjuseta.",

		banner_name_generic = "töötaja",

		ban_alert_title = "Serverist blokeeritud",
		ban_alert_description_banner = "Teid blokeeriti automaatselt kasutaja ${banner} poolt põhjusega `${reason}`.",
		ban_alert_description = "Süsteem on teid automaatselt banninud põhjusel `${reason}`.",

		logs_player_banned_title = "Mängija bannitud",
		logs_player_banned_system_title = "Mängija bannitud süsteemi poolt",
		logs_player_banned_details = "${consoleName} on bannitud serverist kasutaja ${banner} poolt põhjusel `${reason}`.",
		logs_player_banned_no_reason_details = "${consoleName} on keelatud serverist ${banner} poolt ilma põhjuseta.",

		player_kicked = "${consoleName} on eemaldatud serverist.",
		player_banned = "${consoleName} on keelatud serverist.",

		ban_double_kill = "Kahekordne tapmine!",
		ban_triple_kill = "😧 Kolmekordne tapmine!!!",
		ban_quadrouple_kill = "😨 NELIKORDNE TAPMINE!!!!!!",
		ban_killing_spree = "🤯 TAPMISE HOOG (${count})!!!!!!",

		logs_hide_staff_title = "Töötaja varjatud",
		logs_hide_staff_hidden_details = "${consoleName} varjas oma töötaja staatuse.",
		logs_hide_staff_shown_details = "${consoleName} muutis oma töötaja staatuse nähtavaks.",

		logs_toggle_staff_title = "Töötaja seisundi vahetus",
		logs_toggle_staff_off_details = "${consoleName} on keelatud oma personali kättesaadavus.",
		logs_toggle_staff_on_details = "${consoleName} on lubanud oma personali kättesaadavuse.",

		staff_hidden = "Teie personali staatus on nüüd peidetud.",
		staff_shown = "Teie personali staatus on nüüd nähtav.",
		staff_toggled_on = "Teie personali kättesaadavus on lubatud.",
		staff_toggled_off = "Teie personali kättesaadavus on keelatud.",

		staff_feature_unavailable = "See funktsioon pole saadaval, kui personali kättesaadavus pole lubatud.",

		headache_logs_title = "Pisaratekkitav peavalu",
		headache_logs_details = "${consoleName} vallandas peaajuvalu mängijale ${targetConsoleName}.",

		spawn_logs_title = "Teleportiti algsesse",
		spawn_logs_details = "${consoleName} teleportiti algsesse asukohta (personalitorni).",

		super_jump_logs_title = "Superhüppe lülitamine",
		super_jump_logs_details_on = "${consoleName} lülitas oma superhüppe sisse.",
		super_jump_logs_details_off = "${consoleName} lülitas oma superhüppe välja.",

		success_trigger_headache = "Te kitkutasite edukalt mängijale ${playerName} peavalu.",
		failed_trigger_headache = "Ebaõnnestus mängijale peavalu tekitamine.",

		no_item_name = "Eseme nime ei sisestatud.",
		invalid_item_name = "${itemName} ei ole sobiv esme nimi.",
		item_spawned = "Ese ${amount}x `${itemName}` loodi mängijale ${consoleName}.",
		item_spawned_for_everyone = "Kõigile on ilmunud ${amount}x `${itemName}`.",

		warning_message_set_to = "Hoiatussõnum on muudetud järgmiseks: `${warningMessage}`.",
		warning_message_removed = "Hoiatussõnum on eemaldatud.",
		warning_message_error = "Viga tekkis kui üritati muuta hoiatamis sõnumit.",
		warning_message_identical = "Te ei saa muuta hoiatussõnumit samaks mis see juba on.",
		warning_message_set_to_title = "Hoiatusteade määratud",
		warning_message_set_to_details = "${consoleName} on määranud hoiatusteate sõnumiga `${warningMessage}`.",
		warning_message_removed_title = "Hoiatusteade eemaldatud",
		warning_message_removed_details = "${consoleName} on eemaldanud hoiatusteate.",

		indestructibility_on = "'Vastupidavus' sisse lülitatud.",
		indestructibility_off = "'Vastupidavus' välja lülitatud.",
		speed_boost_on = "'Kiirendus' sisse lülitatud.",
		speed_boost_off = "'Kiirendus' välja lülitatud.",
		nitro_boost_on = "Lülitati sisse 'Nitro Boost'.",
		nitro_boost_off = "Lülitati välja 'Nitro Boost'.",
		no_nearby_vehicles_on = "Lülitati sisse 'No Nearby Vehicles'.",
		no_nearby_vehicles_off = "Lülitati välja 'No Nearby Vehicles'.",
		speed_up_progress_bar_on = "Lülitati sisse 'Speed Up Progress Bar'.",
		speed_up_progress_bar_off = "Lülitati välja 'Speed Up Progress Bar'.",
		aimbot_on = "Lülitas 'Aimbot'i' sisse.",
		aimbot_off = "Lülitas 'Aimbot'i' välja.",
		vehicle_smoke_on = "Lülitas 'Sõiduki suitsu' sisse.",
		vehicle_smoke_off = "Lülitas 'Sõiduki suitsu' välja.",

		peeking_on = "Lülitas piilumisrežiimi sisse.",
		peeking_off = "Lülitas piilumisrežiimi välja.",

		watching_on = "Lülitas vaatamisrežiimi sisse.",
		watching_off = "Lülitas vaatamisrežiimi välja.",
		watching_label = "Vaatab: ${nearby}",

		report_muted_no_reason = "Sul on keelatud kasutada teavituskäsku ilma põhjuseta.",
		report_muted = "Sul on keelatud kasutada teavituskäsku põhjusega `${reason}`.",

		already_sending_report = "Sa oled juba saatmas teadet. Palun oota.",
		unable_to_send_identical_report = "Te ei saa saata kahte identset raportit üksteise järel.",

		already_sending_staff_message = "Te saadate juba personali sõnumit. Palun oodake.",
		unable_to_send_identical_staff_message = "Te ei saa saata kahte identset personali sõnumit üksteise järel 30 sekundi jooksul.",

		population_density_set_to = "Rahvastiku tiheduse korrutatud väärtus on nüüd ${multiplierLabel}%.",
		population_density_set_off = "Rahvastiku tiheduse korrutaja tühistati.",
		population_density_is_not_on = "Rahvastiku tiheduse korrutaja ülekirjutus pole lubatud.",
		population_density_already_set_to = "Rahvastiku tiheduse korrutaja on juba seatud väärtusele ${multiplierLabel}%",

		enabled_features_list = "Lubatud funktsioonid:",
		aimbot_feature = "Aimbot",
		disabled_collisions_feature = "Kokkupõrgete väljalülitamine",
		disabled_recoil_feature = "Keelatud tagasilöök",
		evidence_view_feature = "Tõendite vaade",
		hit_indicator_feature = "Tabamuse indikaator",
		indestructibility_feature = "Pöördumatuse omadus",
		infinite_ammo_feature = "Lõpmatu tuli",
		invisibility_feature = "Nähtamatus",
		muted_sirens_feature = "Vaigistatud sireenid",
		nitro_boost_feature = "Nitro tõuge",
		no_nearby_vehicles_feature = "Puuduvad lähedal asuvad sõidukid",
		peeking_feature = "Piilumine",
		roll_control_feature = "Rulljuhtimine",
		speed_boost_feature = "Kiirendus tõuge",
		speed_up_progress_bar_feature = "Progressiriba kiirendus",
		sticky_feet_feature = "Kleepuv jalakäimine",
		wallhack_feature = "Seinte läbivaatamise funktsioon",
		watching_feature = "Jälgimine",
		fortnite_feature = "Fortnite",
		reflection_feature = "Kahju Peegeldamine",
		stable_cam_feature = "Stabiilne Kaamera",
		super_jump_feature = "Supihüpe",
		server_id_hidden_feature = "Serveri-ID varjatud",
		fake_disconnect_feature = "Vale lahtiühendus",
		brighter_nights_feature = "Heledamad ööd",

		you_are_not_in_a_vehicle = "Sa pole sõidukis.",
		repaired_vehicle = "Sõiduk parandatud.",
		player_not_in_vehicle = "See mängija ei ole sõidukis.",
		no_character = "Mängija on väljaspool võrku või tal pole laetud tegelast.",
		repaired_player_vehicle = "Parandati sõiduk, milles oli ${displayName}.",
		failed_player_repair = "Sõiduki parandamine ebaõnnestus.",

		repaired_player_vehicle_logs_title = "Parandati mängija sõiduk",
		repaired_player_vehicle_logs_details = "${consoleName} parandas sõiduki, milles oli ${targetConsoleName}.",

		success_nos_refill = "NOS täidetud edukalt.",
		failed_nos_refill = "NOS täitmine ebaõnnestus.",

		refill_nitro_missing_permissions = "Mängija üritas täita NOS ilma asjakohaste lubadeta.",

		register_invalid_character_id = "Vigane isiku ID.",
		register_invalid_slot = "Vigane inventari pesa.",
		register_weapon_success = "Relv pesas ${slotId} edukalt registreeritud tegelasel, kelle tegelase id on ${cid}.",
		no_serial_number = "Relv on registreerimata seerianumbriga.",
		unknown_character_id = "Tundmatu tegelaskuju ID.",
		register_weapon_failed = "Relva ei õnnestunud registreerida.",

		register_weapon_missing_permissions = "Mängija üritas relva registreerida, kuid tal ei ole selleks õigusi.",

		vehicle_smoke_invalid_class = "Sõiduki suitsu ei saa sellesse sõidukiklassi lubada.",

		repaired_vehicle_logs_title = "Parandatud sõiduk",
		repaired_vehicle_logs_details = "${consoleName} parandas sõidukit, milles nad viibisid.",

		unable_to_enter_vehicle_while_dead = "Surnuna ei saa sõidukisse siseneda.",
		the_closest_vehicle_had_no_free_seats = "Lähim sõiduk polnud vabade kohtadega.",
		there_are_no_nearby_vehicles = "Läheduses ei ole ühtegi sõidukit.",
		vehicle_not_found_network = "Sõidukit võrgu ID-ga ei leitud.",
		entered_vehicle = "Üritas sisse minna lähedalasuvasse sõidukisse ${vehicleName}.",

		set_vehicle_modifications_logs_title = "Määra sõiduki modifikatsioonid",
		set_vehicle_modifications_logs_details = "${consoleName} määras sõiduki modifikatsioonid tähisega `${vehiclePlate}`. Seatud modifikatsioonid olid: modTüüp-${modTüüp}, modIndeks-${modIndeks}, kohandatudRehvid-${kohandatudRehvid}.",

		set_vehicle_livery_logs_title = "Määra sõiduki kate",
		set_vehicle_livery_logs_details = "${consoleName} määras sõiduki kattena, mille numbrimärk on `${vehiclePlate}`, kate indeksiga `${liveryIndex}`.",

		set_vehicle_modification = "Määra sõiduki modifikatsioon sõidukile modifikatsiooni tüüpi `${modType}` indeksiga `${modIndex}`. (kohandatud rehvid: ${customTires})",
		mod_index_invalid_for_type = "Modi indeks `${modIndex}` ei ole sobiv modi tüübile `${modType}`.",
		mod_type_invalid = "Modi tüüp `${modType}` ei ole sobiv.",
		no_mod_type_set = "Modi tüüpi pole valitud.",

		set_vehicle_livery = "Vali sõiduki kujundus (livery) `${liveryIndex}`.",
		no_livery_index_set = "Kujundust (livery) ei ole valitud (Miinimum: 1).",
		you_are_not_the_driver = "Sina ei ole sõiduki juht.",
		vehicle_is_not_a_plane_or_heli = "Sõiduk ei ole lennuk või helikopter.",
		livery_index_invalid = "Vigane kujunduse (livery) indeks (Maksimum: ${maxLiveries}).",
		vehicle_has_no_liveries = "Sõidukil pole reklaame",

		invalid_plate_number = "Vigane numbrimärk",
		set_fake_plate_number = "Sisestatud numbrimärk sõidukile on `${plateNumber}`.",

		invalid_dirt_level = "Vigane mustuse tase",
		set_dirt_level = "Sõiduki mustuse tase on nüüd `${dirtLevel}`.",

		already_fake_disconnecting = "Sa püüad juba võlts väljalogimist. Palun oota.",
		started_fake_disconnect = "Alustati võlts väljalogimist. Käsku korrata, et peatada.",
		stopped_fake_disconnect = "Võlts väljalogimine peatatud.",

		disabled_idle_cam = "Idle kaamera välja lülitatud.",
		enabled_idle_cam = "Idle kaamera uuesti sisse lülitatud.",

		created_vehicle_smoke_for_player_logs_title = "Loodud sõiduki suits",
		created_vehicle_smoke_for_player_logs_details = "${consoleName} lõi sõidukile suitsu.",

		player_info_title = "${consoleName}",
		player_info = "${fullName} #${characterId}\nMängitud aeg: ${playtime}.\n${jobName}, ${departmentName}, ${positionName}\n\n${backstory}",

		inventory_name_missing = "Puudub inventari nimi.",

		auto_driving_engaged = "Automaatjuhtimine on aktiveeritud (Stiil: ${style}).",
		auto_driving_updated = "Autojuhtimise kiirus/asukoht on uuendatud.",
		auto_driving_disengaged = "Autojuhtimine on peatatud.",
		not_auto_driving = "Sa ei kasuta autojuhtimist.",
		invalid_auto_drive_speed = "Vigane või puudu autojuhtimise kiirus.",
		reset_auto_drive_speed = "Lähtesta autojuhtimise kiirus vaikimisi.",
		set_auto_drive_speed = "Määra autojuhtimise kiirus ${speed} miili tunnis.",

		disabled_recoil_on = "Püstolirekli keelatud.",
		disabled_recoil_off = "Püstolirekli lubatud.",

		attachment_missing = "Puudub lisavarustuse parameeter.",
		no_weapon_equipped = "Relv pole välja valitud.",
		attachment_invalid = "See lisavarustus pole relvale sobilik või ei ole olemas.",
		attachment_failed_toggle = "Viga lisavarustuse lülitamisel sellele relvale.",
		attachment_on = "'${attachment}' lisavarustus on edukalt lülitatud sisse.",
		attachment_off = "'${attachment}' lisavarustus on edukalt välja lülitatud.",

		tint_invalid = "Sobimatu relva värviskeem.",
		tint_index_invalid = "Vigane relva tooni indeks.",
		tint_failed_set = "Relva värvi muutmine ebaõnnestus.",
		tint_removed = "Relva värv edukalt eemaldatud.",
		tint_set = "Relva värv edukalt muudetud `${tint}` (${tintIndex}).",
		no_weapon_tint = "Sellel relval pole värve.",

		no_attachments = "Ühtegi lisavarustust pole saadaval.",
		available_attachments = "Saadaolevad lisandid",
		current_attachments = "Praegused lisandid",
		no_attachments = "Ühtegi lisavarustust pole saadaval.",
		attachments_list = "Lisandid:",
		tint_label = "Toon: \"${tintLabel}\" (${tintIndex})",

		item_name_failed_set = "Toote ümbernimetamine ebaõnnestus.",
		item_name_removed = "Toote ümbernimetamine eemaldatud.",
		item_name_set = "Toote ümbernimetamine edukalt muudetud '${itemName}'-ks.",
		item_name_invalid_slot = "Vigane või puuduv toote pesa",

		cleaned_ped = "${consoleName} tegelane on edukalt puhastatud.",
		cleaned_ped_self = "Teie tegelaskuju on edukalt puhtaks tehtud.",
		clean_ped_failed = "Teie tegelaskuju puhastamine ebaõnnestus.",
		cleaned_ped_for_all = "Kõigi tegelaskujude puhastamine oli edukas.",
		clean_ped_no_permission = "Üritati puhastada mängija tegelaskuju ilma korralike õigusteta.",

		item_durability_set_success = "Eseme kulumistaset on edukalt määratud ${amount}% ja pesasse ${slotId}.",
		item_durability_set_failed = "Eseme kulumistase määramine ebaõnnestus.",
		item_durability_invalid_amount = "Kehtetu kulumise tase (0 <> 100).",
		item_durability_set_no_permission = "Katsetasite eseme vastupidavust seada ilma korralike õigusteta.",

		item_metadata_set_no_permission = "Katsetasite eseme metaandmeid seada ilma korralike õigusteta.",
		item_metadata_set_success = "Eseme ${slotId} metaandmed on edukalt määratud.",
		item_metadata_set_failed = "Metaandmete määramine ebaõnnestus.",
		item_metadata_missing_key = "Puuduvad metaandmete võtmed.",

		advanced_metagame_on = "Lülitatud sisse võimalus edasijõudnud metamänguks.",
		advanced_metagame_off = "Lülitatud välja võimalus edasijõudnud metamänguks.",

		identity_set = "Identiteet on edukalt määratud kasutajale ${displayName}: `${name}`.",
		identity_reset = "Identiteet on edukalt lähtestatud kasutajal ${displayName}.",
		identity_set_failed = "Ebaõnnestus kasutaja ${displayName} identiteedi määramine.",
		identity_hud = "Identiteet: ${playerName}",

		set_identity_no_permission = "Mängija üritas määrata enda mängijanime ilma õigete õigusteta.",

		invalid_range_parameter = "Vigane vahemiku parameeter.",
		wipe_first_owned_success = "Kõik ${amount} eset, mis on esmalt mängija `${serverId}` omaduses, on edukalt kustutatud.",
		wipe_first_owned_success_range = "Kõik ${amount} eset, mis on esmalt mängija `${serverId}` omaduses ja mille kaugus on ${range} meetrit, on edukalt kustutatud.",
		wipe_first_owned_failed = "Ebaõnnestus kustutada esmalt serveri ID-ga '${serverId}' seotud mängijate entiteete.",

		invalid_radius_parameter = "Kehtetu raadius (1 ja 500 vahel).",
		scooped_up_players = "Korjasid üles ${amount} mängijat.",
		scoop_invalid = "Sa pole veel ühtegi mängijat korjanud.",
		unscooped_players = "Laskid lahti ${amount} ${total} mängijast.",
		unscoop_failed = "Ebaõnnestus mängijaid lahti lasta.",

		toggle_collisions_missing_permissions = "Mängija üritas oma kokkupõrgete seadeid muuta ilma vastava õiguseta.",
		wipe_first_owned_missing_permissions = "Mängija üritas kustutada omal võimu esimesi omandatud objekte, kuid tal puudusid selleks õigused.",

		freeze_missing_permissions = "Mängija üritas külmutada või avakülmutada teist mängijat, kuid tal puudusid selleks õigused.",

		freeze_success = "Mängija ${consoleName} on edukalt külmutatud.",
		failed_freeze = "Mängija külmutamine ebaõnnestus.",
		unfreeze_success = "Mängija ${consoleName} on edukalt avakülmutatud.",
		failed_unfreeze = "Mängija avakülmutamine ebaõnnestus.",

		freeze_logs_title = "Mängija külmutamine",
		freeze_logs_details = "${consoleName} külmutas mängija ${targetName}.",
		unfreeze_logs_title = "Mängija sulatati lahti",
		unfreeze_logs_details = "${consoleName} sulatas lahti ${targetName}.",

		slap_kill_reason = "Pohmell",
		slap_success = "Õnnestus pohmellitada mängijat ${consoleName}.",
		slap_failed = "Ei õnnestunud mängijat pohmellitada.",
		slap_logs_title = "Mängijat on pohmellitatud",
		slap_logs_details = "${consoleName} pohmellitas ${targetName}.",
		slap_missing_permissions = "Mängija üritas teist mängijat pohmellitada ilma korralike õigusteta.",

		damaged_player = "Edukalt kahjustati mängijat ${consoleName} ${damage} elupunktiga.",
		damage_player_failed = "Ei õnnestunud mängijat kahjustada.",
		damage_player_logs_title = "Mängija vigastamine",
		damage_player_logs_details = "${consoleName} vigastas ${targetConsoleName} ${damage} tervist.",
		damage_player_missing_permissions = "Mängija üritas teist mängijat vigastada ilma vajalike õigusteta.",

		refill_nitro_logs_title = "Lisati nitro",
		refill_nitro_logs_details = "${consoleName} lisas oma autole nitro.",

		character_data_logs_title = "Karakteri Andmed",
		character_data_logs_details = "${consoleName} vaatas ${targetName}'i karakteerandmeid (CID: ${characterId}).",

		item_name_logs_title = "Nime Eiramine",
		item_name_logs_details = "${consoleName} muutis ${slot}'nda sloti nimeks `${nameOverride}`.",

		toggle_attachment_logs_title = "Kinnitus Lülitatud",
		toggle_attachment_logs_details = "${consoleName} lülitas `${attachment}` kinnituse sisse/välja.",

		tint_logs_title = "Tindi Seadmine",
		tint_logs_details = "${consoleName} seadis enda relval tindi indeksiks ${tintIndex}.",

		population_multiplier_logs_title = "Rahvaarvu kordistaja",
		population_multiplier_logs_details = "${consoleName} seadis rahvaarvu kordistaja väärtuseks ${populationMultiplier}.",

		fake_disconnect_logs_title = "Vale lahutamine",
		fake_disconnect_on_logs_details = "${consoleName} lülitas oma võltslahutamise sisse.",
		fake_disconnect_off_logs_details = "${consoleName} lülitas oma võltslahutamise välja.",

		identity_logs_title = "Identiteedi ülekirjutus",
		identity_on_logs_details = "${consoleName} määras kasutajale ${targetConsoleName} identiteedi: `${playerName}`.",
		identity_off_logs_details = "${consoleName} lähtestas kasutaja ${targetConsoleName} identiteedi.",

		clean_ped_logs_title = "Ped-i puhastamine",
		clean_ped_logs_details = "${consoleName} puhastas ${targetName} ped-i.",

		invalid_job_search = "Vigane töökoha otsing (peab olema vähemalt 3 tähemärki).",
		failed_job_search = "Töökohtade otsimine ebaõnnestus.",
		job_search_no_results = "Töökohti ei leitud.",
		job_search_results = "Määratud ${consoleName} töökoht positsiooniga „${positionName}, ${departmentName}, ${jobName}“ (Tulemus: ${score}).",
		job_no_character = "Sihtmängijal pole laaditud tegelast.",

		job_reset_success = "${consoleName} töökoht edukalt nullitud.",
		failed_job_reset = "Töökohta ei õnnestunud nullida.",

		create_vehicle_logs_title = "Loodud Sõiduk",
		create_vehicle_logs_details = "${consoleName} lõi sõiduki mudeliga `${modelName}`.",

		replace_vehicle_logs_title = "Asendatud sõiduk",
		replace_vehicle_logs_details = "${consoleName} asendas oma `${oldModelName}` sõiduki `${modelName}` vastu.",

		set_durability_logs_title = "Seadista eseme vastupidavus",
		set_durability_logs_details = "${consoleName} seadis esemes oleva pesa ${slot} vastupidavuseks ${durability}.",

		set_metadata_logs_title = "Seadista eseme metaandmed",
		set_metadata_logs_details = "${consoleName} seadis esemes oleva pesa ${slot} metaandmeteks `${metadata}`.",

		registered_weapon_logs_title = "Registreeritud relv",
		registered_weapon_logs_details = "${consoleName} registreeris relva seerianumbriga `${serialNumber}` tegelasele karakteri ID-ga `${characterId}`.",

		wipe_first_owned_logs_title = "Eemaldati esimesed omad",
		wipe_first_owned_logs_details = "${consoleName} eemaldas ${amount} esimest omavara, mida omab mängija serveri ID-ga `${serverId}`, vahemikuga ${range} meetrit.",

		unscoop_logs_title = "Mängijad ilma järelevalveta",
		unscoop_logs_details = "${consoleName} eemaldas ${amount} mängija(d) asukohas `${coords}`.",

		set_job_logs_title = "Seadista amet",
		set_job_logs_details = "${consoleName} seadis ${targetConsoleName} (#${characterId}) tööks `${jobName}, ${departmentName}, ${positionName}` (Skoor: ${score}, Otsing: `${search}`).",

		reset_job_logs_title = "Töö lähtestamine",
		reset_job_logs_details = "${consoleName} lähtestas ${targetConsoleName} (#${characterId}) töö."
	},

	anti_cheat = {
		bad_entity_title = "Vigane entiteet loodi",
		bad_entity_message = "${consoleName} lõi entiteedi mille mudeli nimi on `${modelName}`.",
		detected_entity_title = "Avastatud entiteet loodi",
		detected_entity_message = "${consoleName} lõi entiteedi mille mudeli nimi on `${modelName}`.",
		added_model_to_list = "Lisati mudel `${modelName}` (${modelHash}) avastamise nimekirja.",
		model_already_added_to_list = "Mudel `${modelName}` (${modelHash}) on juba avastamise nimekirjas.",
		removed_model_to_list = "Eemaldati mudel `${modelName}` (${modelHash}) avastamise nimekirjast.",
		model_not_in_list = "Mudel ${modelName} (${modelHash}) pole avastamisloendisse lisatud.",
		detection_area_close = "[${InteractionKey}] Eemalda avastuse piirkond (${areaId})",
		detection_area = "Avastuse piirkond (${areaId})",

		suspicious_transfer_title = "Kahtlane ülekanne",
		suspicious_transfer_message = "${from} kandis hiljuti üle $${amount} kasutajale ${to}.",

		failed_toggle_strict_mode = "Viga rangeda range režiimi.",
		strict_mode_enabled = "Range režiim edukalt sisse lülitatud.",
		strict_mode_disabled = "Range režiim edukalt välja lülitatud.",

		ban_notification_title = "Anti-Cheat",
		ban_notification = "Keelatud ${consoleName} põhjusel `${banReason}`.",

		suspicious_transfer_title = "Kahtlane ülekanne",
		suspicious_transfer_details = "${consoleName} kandis üle $${amount} kasutajale ${targetConsoleName}.",

		-- GPT-4 generated ban messages
		bad_entity_spawn = "Ah, proovite välja kutsuda ajaloolist artefakti nimega `${modelName}`? See ei ole Agonii näitus ega selle reliikvia jääb pangakeldrisse.",
		bad_screen_word_ban = "Me kuulsime avatud raamatukogu eksamitest, kuid see on naeruväärne.",
		blacklisted_command_ban = "Vabandust, kuid Sinul ei ole selle käsu käivitamiseks õigusi. Palun võta ühendust serveri administraatoritega, kui arvad, et see on viga.",
		clear_tasks_ban = "See pole Jedide meelt koolitav keskus. Sinu katseid teiste vaba tahte mõjutada on märgatud... ja tagasi lükatud.",
		damage_modifier_ban = "Sinu võimusaste ei saa olla üle 9000.",
		distance_taze_ban = "Teie hämmastav esitus kaugelt ei olnud hinnatud.",
		fast_movement_ban = "Lennata ei ole sellel serveril lubatud.",
		freecam_ban = "Tundub, et teil oli kehaväline kogemus.",
		honeypot_ban = "Te üritasite sisse lülitada loomeolekut, kuid teil ei olnud selleks õigusi.",
		illegal_client_event = "Ah, proovite häälestuda kinnisele sagedusele nimega `${eventName}`? See ei ole salajane raadiojaam ega see lugu ei ole meie esitusloendis.",
		illegal_damage_ban = "Võimu tasakaal on liiga kallutatud sinu kasuks, rikkudes meie kuningriigi tasakaalu.",
		illegal_freeze_ban = "Kuigi hinged võivad rännata vabalt, oleme meie surelikud seotud füüsikaseadustega. Hr. Isaac Newton ei võtaks midagi muud.",
		illegal_global_ban = "Proovisid siseneda maatriksisse, eks ju? Neo võib olla muljetatud, kuid meie mitte.",
		illegal_native_ban = "Proovisime vestelda digitaalse rea vaimudega, eksperimentile ei andnud õnnestu. Parimad soovid eetriplaanis.",
		illegal_ped_change_ban = "Isiku vargus pole nali, Jim! Miljonid tegelased kannatavad igal aastal.",
		illegal_server_event = "Soovisime tantsida kuuldu võrratu rütmi saatel `${eventName}`, eks ole? See pole salajane tantsusaal ja need tantsuliigutused? Rängalt keelatud.",
		illegal_spectating_ban = "Kummituslikud vaime on reserveeritud kummituslikesse mõisadesse, mitte siia. Märgati teie astraae projektsiooni oskusi, kuid need ei olnud teretulnud.",
		illegal_vehicle_modifier_ban = "Erinevalt Dom Torettost kiired ja vihased filmidest, me siin perekond ei ole.",
		infinite_ammo_ban = "Populaarse arvamusele vaatamata kehtivad siin konservatsiooniseadused. Maagiline laskemoonakott on konfiskeeritud.",
		invalid_health_ban = "Sinu terviseindikaator tundub olevat natuke liiga suur, Popeye",
		invincibility_ban = "Te ei ole Must rüütel, nii et te ei saa olla surematu.",
		ped_spawn_ban = "Ah, lootsite meelitada esile tema legendaarse kuju `${modelName}`, eks ole? See pole Hollywoodi näitlemise proov ja too staar jääb lavataguseks.",
		player_blips_ban = "Õhuruum on täis, UAV pole saadaval.",
		runtime_texture_ban = "Mod menüü teil on, kuid mitte kasutada seda, te ei tohiks.",
		semi_godmode_ban = "Teie tungimine igavese nooruse allikale on häirinud aja loomulikku voolu. Igavik pole nii lõbus, kui see kõlab.",
		suspicious_explosion_ban = "Vabandust, aga see pole Michael Bay film. Liiga palju plahvatusi pole lubatud.",
		text_entry_ban = "Inspect Element'i kasutamine selles brauseris pole lubatud.",
		thermal_night_vision_ban = "Heledama öövaate kasutamine pole lubatud.",
		underground_ban = "Tundub, et olete langenud jänesepessa.",
		vehicle_modification_ban = "Sa ei leidnud oma auto esitulede vedelikku.",
		vehicle_spawn_ban = "Ah, unistate sõidust koos `${modelName}`-ga, kas pole? See pole näidisteruum ja see konkreetne mudel? Sellel on igavene ootenimekiri!",
		weapon_spawn_ban = "Igatsused `${weaponName}` järele, kas pole? See pole relvahoidla ja see ese? Ikka sepikojas.",
		advanced_noclip_ban = "Proovib salaja libiseda märkamatutesse koridoridesse? See pole kummituste valss ja see liigutus? Pole meie tantsukaardil.",
		illegal_local_vehicle_ban = "Paistab, et sa oled leidnud Lord Mirage'i nähtamatu ratsu! Kahjuks on see müstiline sõit reserveeritud aastasele nähtamatule paraadile.",
		handling_field_ban = "Tundub, et proovisite füüsikaseadusi tuunida. Ilus katse, kuid selles maailmas hoiame oma rattad reaalsuses maas.",

		type_aimbot = "Eesmärkbot",
		type_bad_creation = "Halb loomine",
		type_bad_screen_word = "Halb ekraani sõna",
		type_blacklisted_command = "Mustas nimekirjas olev käsk",
		type_clear_tasks = "Kustuta ülesanded",
		type_damage_modifier = "Kahju muutja",
		type_distance_taze = "Kaugus taserdamine",
		type_fast_movement = "Kiire liikumine",
		type_freecam_detected = "Freecam tuvastatud",
		type_honeypot = "Meemianum",
		type_illegal_damage = "Keelatud kahjustus",
		type_illegal_event = "Ebaseaduslik Kliendi Sündmus",
		type_illegal_freeze = "Ebaseaduslik Külmumine",
		type_illegal_global = "Keelatud ülemaailmne kasutus",
		type_illegal_handling_field = "Ebaseadusliku käsitlemise väli",
		type_illegal_native = "Ebaseaduslik Native-kutse",
		type_illegal_ped_spawn = "Loomistatud Ped",
		type_illegal_server_event = "Ebaseaduslik Serveri Sündmus",
		type_illegal_vehicle_modifier = "Sõiduki Muutuja",
		type_illegal_vehicle_spawn = "Loomistatud Sõiduk",
		type_illegal_weapon = "Relva Loomine",
		type_infinite_ammo = "Lõputu laskemoon",
		type_advanced_noclip = "Täpsem noclipping",
		type_invalid_health = "Vigane Tervis",
		type_invincibility = "Surematuse Seadistamine",
		type_modified_fov = "Muudetud Vaateväli",
		type_ped_change = "Ped Muutus",
		type_player_blips = "Mängija Kaardimärgid",
		type_runtime_texture = "Käiguaegne tekstuur",
		type_semi_godmode = "Pooljumalus",
		type_spawned_object = "Loodud objekt",
		type_spectate = "Vaata",
		type_suspicious_explosion = "Kahtlane plahvatus",
		type_suspicious_transfer = "Kahtlane ülekanne",
		type_text_entry = "Teksti sisestamine",
		type_thermal_night_vision = "Termiline/öine nägemine",
		type_underground = "Maa-alune",
		type_vehicle_modification = "Sõiduki muutmine",
		type_illegal_local_vehicle = "Keelatud mittevõrgusõidukit kasutades",

		event_prefix = "Ei-tehing: ${type}",

		mp_f_freemode_01_label = "Vaba režiim (naine)",
		mp_m_freemode_01_label = "Vaba režiim (mees)",
		player_one_label = "Franklin",
		player_two_label = "Trevor",
		player_zero_label = "Michael",

		ig_orleans_label = "Sasquatch",
		u_m_m_jesus_01_label = "Jeesus",
		u_m_y_babyd_label = "Kulturist",
		u_m_y_imporage_label = "Superkangelane",
		a_m_m_bevhills_02_label = "Valge mees",
		a_m_m_fatlatin_01_label = "Paks mees",
		a_m_m_hasjew_01_label = "Juudist mees",
		a_m_m_beach_01_label = "Ülapool alasti mees rannas (must)",
		a_m_m_beach_02_label = "Ülapool alasti mees rannas (valge)",
		a_m_m_afriamer_01_label = "Paks must mees",
		ig_jimmydisanto_label = "Jimmy",
		ig_jimmydisanto2_label = "Jimmy 2",
		a_m_y_musclbeac_01_label = "Poolalasti rannamees",
		csb_ramp_marine_label = "Meremees",
		s_f_y_stripperlite_label = "Strippar",
		mp_f_stripperlite_label = "Strippar 2",
		mp_m_marston_01_label = "Puuduvate jäsemetega Marston",
		mp_m_niko_01_label = "Niko (GTA IV)",

		high_fov_warning = "Sinu vaatenurk on ebatavaliselt kõrge",
		high_fov_description = "Tõenäoliselt on see tingitud vaatenurga muutjast.",
		high_fov_debug = "Praegune: ${fov}",

		illegal_oxy_run = "Mängija täitis oxy jooksu kiiremini kui inimene võimalik oleks.",

		fov_warning = "Teie vaatenurk on ebatavaliselt kõrge",
		fov_warning_details = "See on tõenäoliselt põhjustatud vaatenurga muutjast. Praegune: ${fov}",

		stretched_res_warning = "Venitatud eraldusvõime (~r~${ratio}~w~)",

		fast_movement_warning = "Olete märgistatud liiga kiiresti liikumise eest! Palun teavitage arendajat ja öelge talle, mida tegite, et see juhtuks, kuna te ei tohiks selle vestlusakna sõnumi saamist teha.",
		invincibility_warning = "Oled märgistatud invinsibiliteedi kasutamise eest! Palun anna sellest arendajatele teada ning ütle, mida sa tegid, et see juhtuks. Sa ei tohiks sellest suvatseda chat sõnumist teada saada.",
		damage_modifier_warning = "Oled märgistatud vigase kahju modifikaatori kasutamise eest! Palun anna sellest arendajatele teada ning ütle, mida sa tegid, et see juhtuks. Sa ei tohiks sellest suvatseda chat sõnumist teada saada.",
		freeze_warning = "Oled märgistatud külmumise eest, kui see ei ole võimalik! Palun anna sellest arendajatele teada ning ütle, mida sa tegid, et see juhtuks. Sa ei tohiks sellest suvatseda chat sõnumist teada saada."
	},

	authentication = {
		waiting_for_server = "Ootame serveri valmisolekut...",
		authenticating_with_server = "Autentimine serveriga...",

		failed_to_get_global_user = "Ei õnnestunud global kasutajat saada.",
		failed_to_get_local_user = "Ei õnnestunud kohalikku kasutajat saada.",
		failed_to_get_local_ban = "Ei õnnestunud kohalikku keelumist saada.",

		global_ban = "Olete globaalselt bännitud kõigist OP-FW serveritest.\n\nBänni Hash: ${banHash}\nBänni Põhjus: ${reason}\n\nKui arvate, et see on ekslik bänn, siis palun liituge OP-FW Discord ühendusega edasise info ja kaebuse esitamise juhiste saamiseks aadressil ${frameworkDiscord}",
		local_ban = "Olete keelatud ${communityName}.\n\nKeeldumise räsi: ${banHash}\nKeelu põhjus: ${reason}\nKeelaja nimi: ${creatorName}\nAeg: ${timestamp}\n\n${indefiniteOrExpires}\n\nLiituge meie Discordi kogukonnaga, et saada teavet edasikaebamise kohta aadressil ${communityDiscord}",
		local_ban_no_creator = "Olete keelatud ${communityName}.\n\nKeeldumise räsi: ${banHash}\nKeelu põhjus: ${reason}\nAeg: ${timestamp}\n\n${indefiniteOrExpires}\n\nLiituge meie Discordi kogukonnaga, et saada teavet edasikaebamise kohta aadressil ${communityDiscord}",

		ban_indefinite = "See blokeering on määramata ajaks.",
		ban_expires = "See blokeering aegub ${timeLeft}.",

		pepega_moderate = "Oled igaveseks blokeeritud kõikidelt OP-FW serveritelt, põhjuseta.",
		pepega_ultimate = "Oled sellel serveril blokeeritud.",

		welcome_to = "Tere tulemast",

		connection_rejected_logs_title = "Ühendus tagasi lükatud",
		connection_rejected_logs_details = "${consoleName} ühendus lükati tagasi põhjusel `${rejectCode}`.",

		connection_accepted_logs_title = "Ühendus aktsepteeritud",
		connection_accepted_logs_details = "${consoleName} ühendus aktsepteeriti."
	},

	bans = {
		banned_no_permissions = "Üritati teha `${reason}` ilma asjakohaste õigusteta.",
		fraud_chargeback = "Petmine / Chargeback",
		none_provided = "Mitu ette antud.",
		you_stopped_streaming = "Lõpetasid striimimise."
	},

	characters = {
		character_refreshed = "Karakter värskendatud.",
		something_went_wrong = "Midagi läks valesti.",
		user_does_not_have_sent_character_loaded = "Kasutajal pole saatel olevat karakterit laetud.",
		user_has_no_character_loaded = "Kasutajal ei ole laetud ühtegi tegelast.",
		user_not_found = "Saadetud kasutajat ei leitud serveris.",
		invalid_character_id = "Vale tegelase id parameeter saadetud.",
		invalid_license_identifier = "Vale litsentsi identifikaatori parameeter saadetud.",

		your_character_refreshed = "Teie tegelane on värskendatud."
	},

	chat = {
		default = "Vaikimisi",

		chat_group_information = "Olete lisatud vestlusrühma. Vajutage **TAB**-i, et vahetada oma olemasolevate vestlusgruppide vahel.\n\nSõnumid, mis on saatmisel ilma '/'-i eesliitega, saadetakse sellesse gruppi kuuluvatele liikmetele."
	},

	commands = {
		command_unavailable = "See käsklus ei ole saadaval!",

		command_list = "${commands}",
		substitute_list = "${substitutes}",

		substitute_command_for = "See on asenduskäsklus `${command}` jaoks.",

		-- the "substitutes" is basically just a shortcut command, so if you do /lang, it'll execute /language.
		-- you can put as many substitutes as you'd like by doing "/lang, /lang2, /lang3", all these 3 commands will be valid substitutes
		-- the main difference between the _command and _command_substitutes is substitutes will not show as suggestions in the chat
		-- if no substitutes are wanted, simply leave an empty string with ""

		-- animations/carry
		carry_command = "kanna",
		carry_command_help = "Lülita kandmise režiim sisse/välja.",
		carry_command_substitutes = "",

		uncarry_command = "katkesta_kandmine",
		uncarry_command_help = "Sunni mängija, kes sind kannab, sul iseeneslikult maha panema.",
		uncarry_command_substitutes = "",

		piggyback_command = "kärbes",
		piggyback_command_help = "Kärbes teist mängijat.",
		piggyback_command_substitutes = "",

		pick_cuffs_command = "lukusta_lukud",
		pick_cuffs_command_help = "Murra käerauad lahti.",
		pick_cuffs_command_substitutes = "",

		struggle_command = "võitlusekatse",
		struggle_command_help = "Ürita kellegi kandjast lahti võidelda.",
		struggle_command_substitutes = "",

		handsup_command = "käedüles",
		handsup_command_help = "Pane käed üles (või alla).",
		handsup_command_substitutes = "käed, alistu, hu",

		-- animations/chairs
		sit_command = "istu",
		sit_command_help = "Ürita istuda lähedalasuva toolile.",
		sit_command_parameter_variation = "variatsioon",
		sit_command_parameter_variation_help = "Millist istumise animatsiooni esitada (1 - 6).",
		sit_command_substitutes = "tool",

		-- animations/couches
		sleep_command = "magama",
		sleep_command_help = "Ürita magada lähedal oleva diivani või maa peal.",
		sleep_command_parameter_variation = "varieerumine",
		sleep_command_parameter_variation_help = "Millist magamise animatsiooni esitada (1 - 2).",
		sleep_command_substitutes = "heida_maha",

		couch_offset_command = "diivan_offset",
		couch_offset_command_help = "Kopeeri konkreetsele diivanimudelile lähedal asuva diivani nihkekoefitsient.",
		couch_offset_command_parameter_model_name = "mudeli nimi",
		couch_offset_command_parameter_model_name_help = "Diivani mudeli nimi, mille nihkekoefitsienti soovid kopeerida.",
		couch_offset_command_substitutes = "",

		-- animations/emotes
		ragdoll_command = "nukk",
		ragdoll_command_help = "Lülita ragdoll sisse/välja.",
		ragdoll_command_parameter_server_id = "serveri id",
		ragdoll_command_parameter_server_id_help = "Määrake mängija ragdollimiseks serveri id.",
		ragdoll_command_substitutes = "",

		-- animations/walkstyles
		marathon_command = "maraton",
		marathon_command_help = "Lülitage sisse/välja 'maraton' silumisfunktsioon, et näha, milliseid käikuid tuleks parandada.",
		marathon_command_substitutes = "",

		-- base/admin
		report_command = "teade",
		report_command_help = "Saatke sõnum kõigile aktiivsetele personaliliikmetele.",
		report_command_parameter_message = "sõnum",
		report_command_parameter_message_help = "Sõnum, mida soovid saata. Lühikokkuvõte sellest, millest sa teavitad (Näide: \"Mind ründasid ja tapeti, nende ID oli...\").",
		report_command_substitutes = "llamaradmin",

		announce_command = "teadaanne",
		announce_command_help = "Edastage teade kõigile mängijatele.",
		announce_command_parameter_message = "sõnum",
		announce_command_parameter_message_help = "Sõnum, mida soovite edastada.",
		announce_command_substitutes = "",

		staff_pm_command = "staff_pm",
		staff_pm_command_help = "Saada sõnum töötajale või mängijale töötajana.",
		staff_pm_command_parameter_server_id = "serveri id",
		staff_pm_command_parameter_server_id_help = "Mängija serveri ID, keda soovite sõnumitada.",
		staff_pm_command_parameter_message = "sõnum",
		staff_pm_command_parameter_message_help = "Sõnum, mida soovite saata.",
		staff_pm_command_substitutes = "töötajasõnum",

		important_staff_pm_command = "oluline_staff_pm",
		important_staff_pm_command_help = "Saada oluline sõnum mängijale personaliliikmena.",
		important_staff_pm_command_parameter_server_id = "serveri id",
		important_staff_pm_command_parameter_server_id_help = "Mängija serveri ID, kellele soovite teate saata.",
		important_staff_pm_command_parameter_message = "teade",
		important_staff_pm_command_parameter_message_help = "Oluline teade, mida soovite saata.",
		important_staff_pm_command_substitutes = "!personalstpm, !personal_st_pm",

		staff_command = "töötajad",
		staff_command_help = "Edasta teade kõigile aktiivsetele töötajatele.",
		staff_command_parameter_message = "sõnum",
		staff_command_parameter_message_help = "Sõnum, mida soovid saata.",
		staff_command_substitutes = "",

		wipe_command = "puhastus",
		wipe_command_help = "Puhasta soovimatud entiteedid kaardilt.",
		wipe_command_parameter_distance = "kaugus",
		wipe_command_parameter_distance_help = "Kui soovite kustutada ainult teatud kauguses olevad üksused, sisestage siia kaugus. Kogu kaardi jaoks sisestage `-1`.",
		wipe_command_parameter_ignore_local_entities = "ignoreeri lokaalseid entiteede",
		wipe_command_parameter_ignore_local_entities_help = "Ignoreeri mittevõrgustatud entiteete? Kui puhastad petise tegevusest, siis soovitatakse see seade muuta `true` või `1` peale.",
		wipe_command_parameter_model_name = "mudeli nimi",
		wipe_command_parameter_model_name_help = "Kui soovite kustutada ainult teatud mudelinimega objekte, sisestage siia mudelinimi. Vastasel juhul jätke tühjaks, pange `false` või `0`. Võite ka määrata selle väärtuseks `vehicles`, `peds`, `objects` või `uksed`.",
		wipe_command_parameter_camera = "camara",
		wipe_command_parameter_camera_help = "Usa las coordenadas de tu cámara en lugar de las coordenadas de tu personaje. El valor predeterminado es no, `1` o `s` para sí.",
		wipe_command_substitutes = "",

		noclip_command = "läbimine läbi objektide",
		noclip_command_help = "Lülitage läbimine läbi objektide sisse või välja.",
		noclip_command_parameter_server_id = "serveri id",
		noclip_command_parameter_server_id_help = "Kui soovite kellegi teise puhul läbimist läbi objektide sisse või välja lülitada, sisestage siia tema serveri id.",
		noclip_command_substitutes = "",

		safe_noclip_command = "ohutu_noclip",
		safe_noclip_command_help = "Lülitab Noclipi sisse, kuid ainult siis, kui keegi läheduses ei näe sind seda tegemas (välistatud on töötajad, kellel on töötaja lüliti sisse lülitatud).",
		safe_noclip_command_substitutes = "onoclip",

		delete_vehicle_command = "kustuta_sõiduk",
		delete_vehicle_command_help = "Kustutab lähedal asuva sõiduki.",
		delete_vehicle_command_parameter_ignore_heading = "ignoreerige suunamist",
		delete_vehicle_command_parameter_ignore_heading_help = "Kas soovite ignoreerida oma mängija suunda? Tühjaks jätmisel töötab see nagu `ei`.",
		delete_vehicle_command_parameter_ignore_occupied = "ignoreerige hõivatud",
		delete_vehicle_command_parameter_ignore_occupied_help = "Kas soovite ignoreerida hõivatud sõidukeid? Tühjaks jätmise korral käitub see nagu 'ei'.",
		delete_vehicle_command_substitutes = "dv",

		delete_vehicle_interactively_command = "interaktiivse sõiduki kustutamise lüliti",
		delete_vehicle_interactively_command_help = "Lülitab sisse-välja interaktiivse sõidukite kustutamise.",
		delete_vehicle_interactively_command_substitutes = "dvi",

		kick_command = "viska",
		kick_command_help = "Viska mängija serverist välja.",
		kick_command_parameter_server_id = "serveri ID",
		kick_command_parameter_server_id_help = "Mängija serveri ID, keda soovid serverist välja visata.",
		kick_command_parameter_reason = "põhjus",
		kick_command_parameter_reason_help = "Mängija väljaviskamise põhjus. Seda saab tühjaks jätta.",
		kick_command_substitutes = "",

		ban_command = "bänn",
		ban_command_help = "Keela mängija serverist.",
		ban_command_parameter_server_id = "serveri id",
		ban_command_parameter_server_id_help = "Mängija serveri ID, keda proovite bännida.",
		ban_command_parameter_expire = "aegumine",
		ban_command_parameter_expire_help = "Mängija keelu pikkus. Seda saab tühjaks jätta väärtustega `0` või `false`, et keelata määramata ajaks. Aja pikkust saab väljendada w/d/h (näiteks: `3d2h` -> 3 päeva, 2 tundi).",
		ban_command_parameter_reason = "põhjus",
		ban_command_parameter_reason_help = "Mängija keeldumise taga olev põhjus. Seda võib tühjaks jätta.",
		ban_command_substitutes = "",

		staff_hidden_command = "staff_hidden",
		staff_hidden_command_help = "Lülitage sisse/välja võimalus teiste mängijate jaoks näidata teie personali staatust.",
		staff_hidden_command_substitutes = "",

		staff_toggle_command = "staff_toggle",
		staff_toggle_command_help = "Lülitage sisse/välja oma personali kättesaadavus. Väljalülitamine takistab aruannete, personali sõnumite ja saatjate sõnumite kuvamist.",
		staff_toggle_command_substitutes = "",

		spawn_vehicle_command = "tekita_sõiduk",
		spawn_vehicle_command_help = "Tekitab sõiduki.",
		spawn_vehicle_command_parameter_model_name = "mudeli nimi",
		spawn_vehicle_command_parameter_model_name_help = "Sõiduki mudelinimi, mida soovite ilmuma panna. (Vaikimisi `adder`)",
		spawn_vehicle_command_parameter_server_id = "serveri id",
		spawn_vehicle_command_parameter_server_id_help = "Mängija serveri id, kelle jaoks soovite sõiduki luua. Jätke see tühjaks või määrake `0` enda jaoks valimiseks.",
		spawn_vehicle_command_substitutes = "sv",

		create_vehicle_command = "loo_sõiduk",
		create_vehicle_command_help = "Väljastab sõiduki maa peale teie praeguse asukoha juurde ilma teid sinna sisse laskmata.",
		create_vehicle_command_parameter_model_name = "mudeli nimi",
		create_vehicle_command_parameter_model_name_help = "Sõiduki mudeli nimi, mida soovite tekitada.",
		create_vehicle_command_parameter_ground = "maapind",
		create_vehicle_command_parameter_ground_help = "Kas sõiduk peaks ilmuma maapinnale?",
		create_vehicle_command_substitutes = "cv",

		replace_vehicle_command = "asenda_sõiduk",
		replace_vehicle_command_help = "Asenda oma praegune sõiduk erineva sõidukiga.",
		replace_vehicle_command_parameter_model_name = "mudeli nimi",
		replace_vehicle_command_parameter_model_name_help = "Sõiduki mudelinimi, mida soovite ilmuda.",
		replace_vehicle_command_substitutes = "rv",

		add_vehicle_command = "add_vehicle",
		add_vehicle_command_help = "Lisa sõiduk kellegi garaaži.",
		add_vehicle_command_parameter_model = "mudel",
		add_vehicle_command_parameter_model_help = "Sõiduki mudeli nimi või mudeli hash, mida soovite lisada. Kui jätate tühjaks, lisatakse praeguses seisundis olev sõiduki mudel.",
		add_vehicle_command_parameter_server_id = "serveri id",
		add_vehicle_command_parameter_server_id_help = "Mängija serveri ID, kellele soovite sõiduki anda. Jättes selle tühjaks, valib see automaatselt teil endal.",
		add_vehicle_command_substitutes = "",

		save_vehicle_command = "salvesta_sõiduk",
		save_vehicle_command_help = "Salvestage oma hetkel asuva sõiduki koos selle modifikatsioonidega garaaži.",
		save_vehicle_command_substitutes = "",

		aimbot_command = "aimbot",
		aimbot_command_help = "Lülita sisse/välja 'aimbot'.",
		aimbot_command_parameter_server_id = "serveri ID",
		aimbot_command_parameter_server_id_help = "Kui soovite kellegi teise jaoks 'aimboti' sisse/välja lülitada, sisestage siia nende serveri ID.",
		aimbot_command_parameter_targets = "sihtmärgid",
		aimbot_command_parameter_targets_help = "Sihtmärkide serveri ID-d (toimib ainult siis, kui lülitate enda jaoks). (Võtab sihtmärkideks ainult nende serveri ID-ga mängijaid)",
		aimbot_command_substitutes = "",

		speed_boost_command = "kiirenduse_luliti",
		speed_boost_command_help = "Lülita sisse/välja 'kiirenduse'.",
		speed_boost_command_parameter_server_id = "serveri ID",
		speed_boost_command_parameter_server_id_help = "Kui soovite kellegi teise 'kiirenduse' lülitada, sisestage siia nende serveri ID.",
		speed_boost_command_substitutes = "",

		nitro_boost_command = "lämmastiku_luliti",
		nitro_boost_command_help = "Lülita sisse/välja 'lämmastiku'.",
		nitro_boost_command_parameter_server_id = "serveri ID",
		nitro_boost_command_parameter_server_id_help = "Kui soovid kellegi teise jaoks 'nitro boosti' sisse/välja lülitada, sisesta siia nende serveri ID.",
		nitro_boost_command_substitutes = "nitro",

		indestructibility_command = "vastupidavus",
		indestructibility_command_help = "Lülita 'vastupidavus' sisse/välja.",
		indestructibility_command_parameter_server_id = "serveri ID",
		indestructibility_command_parameter_server_id_help = "Kui soovid kellegi teise jaoks 'vastupidavus' sisse/välja lülitada, sisesta siia nende serveri ID.",
		indestructibility_command_parameter_ignore_vehicle = "ignorar vehículo",
		indestructibility_command_parameter_ignore_vehicle_help = "Si se establece en `1` o `s`, solo estarás invencible, no el vehículo en el que te encuentras.",
		indestructibility_command_substitutes = "ind, jumal, jumal režiim, jumalrežiim",

		no_nearby_vehicles_command = "lähedal pole sõidukeid",
		no_nearby_vehicles_command_help = "Lülita lähedal olevate sõidukite välja või sisse.",
		no_nearby_vehicles_command_parameter_server_id = "serveri-ID",
		no_nearby_vehicles_command_parameter_server_id_help = "Kui soovite kellegi teise jaoks lähedal asuvaid sõidukeid välja või sisse lülitada, sisestage siia nende serveri-ID.",
		no_nearby_vehicles_command_substitutes = "",

		job_command = "töö",
		job_command_help = "Uuenda kellegi tööd otsingu põhjal.",
		job_command_parameter_server_id = "serveri id",
		job_command_parameter_server_id_help = "Mängija serveri id või 0, et valida iseennast.",
		job_command_parameter_search = "otsi",
		job_command_parameter_search_help = "Töö/departemangu/ameti nimi või selle osa, mida otsida, või 'none', et töö eemaldada.",
		job_command_substitutes = "",

		reset_job_command = "reset_job",
		reset_job_command_help = "Kustutab mängijalt töö, jättes ta töötuks.",
		reset_job_command_parameter_server_id = "serveri id",
		reset_job_command_parameter_server_id_help = "Mängija serveri id või 0, et valida ennast.",
		reset_job_command_substitutes = "",

		watching_command = "vaatlemine",
		watching_command_help = "Näitab kõiki mängijaid, kes jälgivad lähedal.",
		watching_command_substitutes = "",

		disable_recoil_command = "keela_rüse",
		disable_recoil_command_help = "Lülitab relva rüse välja.",
		disable_recoil_command_substitutes = "",

		infinite_ammo_command = "lõpmatu_laskemoon",
		infinite_ammo_command_help = "Vahetab lõpmatu laskemoona lülituse.",
		infinite_ammo_command_substitutes = "",

		trigger_headache_command = "põhjusta-peavalu",
		trigger_headache_command_help = "Põhjustab määratud mängijale lühiajaliselt viivituse.",
		trigger_headache_command_parameter_server_id = "serveri id",
		trigger_headache_command_parameter_server_id_help = "Mängija serveri id, kellele soovite peavalu põhjustada.",
		trigger_headache_command_substitutes = "peavalu",

		super_jump_command = "super_jump",
		super_jump_command_help = "Lülitab sisse/välja ülihüppe.",
		super_jump_command_substitutes = "",

		spawn_command = "spawn",
		spawn_command_help = "Teleporteerib teid personalitorni.",
		spawn_command_substitutes = "",

		stick_command = "klammerdu",
		stick_command_help = "Klamberdu auto külge, mille peal viibid.",
		stick_command_substitutes = "",

		unstick_command = "eemalda klamber",
		unstick_command_help = "Eemalda klamber autosse, mille külge klammerdusid.",
		unstick_command_substitutes = "",

		clean_ped_command = "puhasta_tegelane",
		clean_ped_command_help = "Puhastab tegelase verd, kuuliauke, tolmu jne.",
		clean_ped_command_parameter_server_id = "Serveri ID",
		clean_ped_command_parameter_server_id_help = "Mängija serveri id, kelle pedi soovite puhastada.",
		clean_ped_command_substitutes = "",

		toggle_vehicle_smoke_command = "toggle_vehicle_smoke",
		toggle_vehicle_smoke_command_help = "Lülitage 'sõiduki suits' sisse/välja.",
		toggle_vehicle_smoke_command_parameter_server_id = "Serveri ID",
		toggle_vehicle_smoke_command_parameter_server_id_help = "Kui soovite kellegi teise jaoks 'sõiduki suitsu' sisse /välja lülitada, sisestage nende serveri ID siia.",
		toggle_vehicle_smoke_command_parameter_color_r = "värv r",
		toggle_vehicle_smoke_command_parameter_color_r_help = "Suitsevärv punase väärtus (0 - 255).",
		toggle_vehicle_smoke_command_parameter_color_g = "värv g",
		toggle_vehicle_smoke_command_parameter_color_g_help = "Suitsevärv rohelise väärtus (0 - 255).",
		toggle_vehicle_smoke_command_parameter_color_b = "värv b",
		toggle_vehicle_smoke_command_parameter_color_b_help = "Suitsevärv sinise väärtus (0 - 255).",
		toggle_vehicle_smoke_command_substitutes = "sõidukisuits, suits",

		speed_up_progress_bar_command = "kiirenda_edusammude_riba",
		speed_up_progress_bar_command_help = "Lülita sisse/välja 'kiirenda edusammude rida'.",
		speed_up_progress_bar_command_parameter_server_id = "serveri id",
		speed_up_progress_bar_command_parameter_server_id_help = "Kui soovite kellegi teise 'kiirenda edusammude rida' sisse või välja lülitada, sisestage tema serveri id siia.",
		speed_up_progress_bar_command_substitutes = "kiirenda",

		add_cash_command = "lisa_raha",
		add_cash_command_help = "Lisage kellegi tegelasele raha.",
		add_cash_command_parameter_amount = "summa",
		add_cash_command_parameter_amount_help = "Summa, mida soovite mängijale anda.",
		add_cash_command_parameter_server_id = "serveri ID",
		add_cash_command_parameter_server_id_help = "Mängija serversisene ID. Kui tühi, siis valitakse automaatselt iseennast.",
		add_cash_command_substitutes = "",

		remove_cash_command = "eemalda_raha",
		remove_cash_command_help = "Eemalda kellegi karakterilt sularaha.",
		remove_cash_command_parameter_amount = "summa",
		remove_cash_command_parameter_amount_help = "Summa, mida soovite mängijalt eemaldada.",
		remove_cash_command_parameter_server_id = "serversisene id",
		remove_cash_command_parameter_server_id_help = "Mängija serversisene ID. Kui tühi, siis valitakse automaatselt iseennast.",
		remove_cash_command_substitutes = "",

		add_bank_command = "lisa_panga_saldo",
		add_bank_command_help = "Lisa kellegi karakterile pangakontole raha.",
		add_bank_command_parameter_amount = "summa",
		add_bank_command_parameter_amount_help = "Raha summa, mida soovid mängijale anda.",
		add_bank_command_parameter_server_id = "serveri id",
		add_bank_command_parameter_server_id_help = "Mängija serveri ID. Kui jätad tühjaks, siis valitakse automaatselt iseend.",
		add_bank_command_substitutes = "",

		remove_bank_command = "eemalda_panga_saldo",
		remove_bank_command_help = "Eemalda kellegi karakteri pangakontolt raha.",
		remove_bank_command_parameter_amount = "summa",
		remove_bank_command_parameter_amount_help = "Pangakontolt eemaldava summa suurus.",
		remove_bank_command_parameter_server_id = "serveri id",
		remove_bank_command_parameter_server_id_help = "Mängija serveri ID. Kui jäetakse tühjaks, valitakse automaatselt iseennast.",
		remove_bank_command_substitutes = "",

		spawn_item_command = "spawn_item",
		spawn_item_command_help = "Kasutatakse esemete välja spawnimiseks.",
		spawn_item_command_parameter_item_name = "eseme nimi",
		spawn_item_command_parameter_item_name_help = "Eseme nimi, mida soovite spawnida. See peab olema *ese nimi*, kuna selle sildid ei tööta.",
		spawn_item_command_parameter_amount = "kogus",
		spawn_item_command_parameter_amount_help = "Eseme kogus, mida soovite tekitada. Kui jätate tühjaks, valitakse üks ese.",
		spawn_item_command_parameter_server_id = "serveri ID",
		spawn_item_command_parameter_server_id_help = "Mängija serveri ID, kellele soovite eseme tekitada. Kui jätate tühjaks, valitakse teie enda ID.",
		spawn_item_command_parameter_battle_royale_only = "ainult Battle Royale'is",
		spawn_item_command_parameter_battle_royale_only_help = "Tehke see ese ainult Battle Royale'i jaoks.",
		spawn_item_command_substitutes = "esi",

		warning_message_command = "hoiatus_sõnum",
		warning_message_command_help = "Lisage ülemaailmne serverisõnum kõigile mängijatele.",
		warning_message_command_parameter_message = "sõnum",
		warning_message_command_parameter_message_help = "Sõnum, mida soovite mängijatele kuvada. Võite selle parameetri jätta tühjaks, et eemaldada hoiatussõnum.",
		warning_message_command_substitutes = "",

		population_density_command = "rahvastiku_tihedus",
		population_density_command_help = "Muudab globaalset rahvastiku tiheduse kordajat.",
		population_density_command_parameter_multiplier = "kordaja",
		population_density_command_parameter_multiplier_help = "Rahvastiku tiheduse kordaja, mida soovite määrata. Kui jätate tühjaks, siis see lülitatakse välja. Kehtivad väärtused on vahemikus 0,0 kuni 1,0.",
		population_density_command_substitutes = "rahvastik, tihedus, pop",

		repair_vehicle_command = "paranda_sõiduk",
		repair_vehicle_command_help = "Parandab sõiduki, milles sa oled.",
		repair_vehicle_command_parameter_server_id = "serveri_id",
		repair_vehicle_command_parameter_server_id_help = "Sõiduki parandamiseks kasutatav serveri ID. (valikuline)",
		repair_vehicle_command_substitutes = "paranda",

		enter_vehicle_command = "sisse",
		enter_vehicle_command_help = "Sunnib teie mängijat sõidukisse sisenema, mis on teile lähim (teeb teid väljumiseks sõidukist, kui olete selles).",
		enter_vehicle_command_parameter_network_id = "võrgu ID",
		enter_vehicle_command_parameter_network_id_help = "Sõiduki võrgu ID, millele soovite siseneda. (valikuline)",
		enter_vehicle_command_substitutes = "sv",

		set_modification_command = "seadista_modifikatsioon",
		set_modification_command_help = "Määrake sõidukile modifikatsioonid, kus te parasjagu sees olete.",
		set_modification_command_parameter_mod_type = "mod tüüp",
		set_modification_command_parameter_mod_type_help = "Modifikatsioonitüübi ID, mida soovite seada.",
		set_modification_command_parameter_mod_index = "mod indeks",
		set_modification_command_parameter_mod_index_help = "Modifikatsiooni ID, mida soovite määrata.",
		set_modification_command_parameter_custom_tires = "kohandatud rehvid",
		set_modification_command_parameter_custom_tires_help = "Kas kasutada kohandatud rehve?",
		set_modification_command_substitutes = "sm",

		set_livery_command = "määrake_ümbris",
		set_livery_command_help = "Määrake sõiduki ümbris, milles te asute.",
		set_livery_command_parameter_livery_index = "ümbrise indeks",
		set_livery_command_parameter_livery_index_help = "Indeks, mis tähistab ümbrist, mida soovite määrata.",
		set_livery_command_substitutes = "",

		set_fake_plate_command = "võltsnumbrimärk",
		set_fake_plate_command_help = "Määrake võltsnumbrimärk sõidukile, milles te viibite.",
		set_fake_plate_command_parameter_plate_number = "numbrimärk",
		set_fake_plate_command_parameter_plate_number_help = "Numbrimärk, mida soovite määrata.",
		set_fake_plate_command_substitutes = "numbrimärk",

		set_dirt_level_command = "väliskihi_tase",
		set_dirt_level_command_help = "Puhastab sõiduki, milles te viibite.",
		set_dirt_level_command_parameter_dirt_level = "väliskihi tase",
		set_dirt_level_command_parameter_dirt_level_help = "Mustuse taseme väärtus, mille soovite määrata (0 kuni 15).",
		set_dirt_level_command_substitutes = "sd",

		player_info_command = "mängija_info",
		player_info_command_help = "Tagastab teatud mängija kohta mõningast informatsiooni.",
		player_info_command_parameter_server_id = "serveri id",
		player_info_command_parameter_server_id_help = "Mängija serveri ID, mille kohta soovite infot saada. Juhul kui jätate tühjaks, valitakse teie enda ID.",
		player_info_command_substitutes = "mängija, mi",

		ender_chest_command = "ender_kast",
		ender_chest_command_help = "Pääse oma ender-kasti juurde.",
		ender_chest_command_substitutes = "ek",

		inventory_command = "inventar",
		inventory_command_help = "Ava konkreetne inventar.",
		inventory_command_parameter_inventory_name = "inventari nimi",
		inventory_command_parameter_inventory_name_help = "Inventari nimi, mida soovite avada.",
		inventory_command_substitutes = "",

		character_inventory_command = "tegelase_inventar",
		character_inventory_command_help = "Näitab teise mängija inventari.",
		character_inventory_command_parameter_server_id = "serveri id",
		character_inventory_command_parameter_server_id_help = "Mängija serveri-ID, kelle inventarit soovite näha.",
		character_inventory_command_substitutes = "taskud",

		fake_disconnect_command = "vale_loobumine",
		fake_disconnect_command_help = "Käivitab sündmuste jada, et tunduks nagu te loobusite serverist. See lubab ka teie nostlipi, kui see pole juba sisse lülitatud.",
		fake_disconnect_command_substitutes = "väljajuhtimine, dc",

		set_identity_command = "määra_identiteet",
		set_identity_command_help = "Ülekirjutab mängija nime.",
		set_identity_command_parameter_server_id = "serveri ID",
		set_identity_command_parameter_server_id_help = "Mängija serveri ID, kelle nime tahad üle kirjutada. (0 = iseend)",
		set_identity_command_parameter_player_name = "mängija nimi",
		set_identity_command_parameter_player_name_help = "Nimi, mida soovid määrata või jäta tühjaks, et lähtestada.",
		set_identity_command_substitutes = "identiteet",

		disable_idle_cam_command = "keela_tühikäigu_kaamera",
		disable_idle_cam_command_help = "Keelab tühikäigu kaamera käivitamise.",
		disable_idle_cam_command_substitutes = "keela_tühikäik, tühikäik",

		auto_drive_command = "automaatsõit",
		auto_drive_command_help = "Viiakse teid automaatselt määratud sihtpunkti või sõidetakse juhuslikult ümber, kui sihtpunkti pole määratud.",
		auto_drive_command_parameter_style = "stiil",
		auto_drive_command_parameter_style_help = "Sõidustiil (tavaline, rüselev, hulljulge, tagurpidi).",
		auto_drive_command_substitutes = "",

		drive_speed_command = "sõidu kiirus",
		drive_speed_command_help = "Määrake automaatse juhtimiskäsu jaoks kruiisikiirus.",
		drive_speed_command_parameter_speed = "kiirus",
		drive_speed_command_parameter_speed_help = "Kiirus, mille soovite määrata (m/h).",
		drive_speed_command_substitutes = "",

		toggle_weapon_attachment_command = "vaheta_püstolikuulija_lisavarustust",
		toggle_weapon_attachment_command_help = "Lülitab sisse/välja relva lisavarustuse hetkel hoitava relva jaoks.",
		toggle_weapon_attachment_command_parameter_attachment = "lisavarustus",
		toggle_weapon_attachment_command_parameter_attachment_help = "Lisavarustuse nimi, mida soovite sisse/välja lülitada.",
		toggle_weapon_attachment_command_substitutes = "relva_lisavarustus, lisavarustus",

		set_weapon_tint_command = "määra_relva_värvus",
		set_weapon_tint_command_help = "Määrab või eemaldab hetkel hoitud relva värvuse.",
		set_weapon_tint_command_parameter_tint = "toon",
		set_weapon_tint_command_parameter_tint_help = "Toon, mida soovite määrata (tühjana jätmiseks jätke tühjaks).",
		set_weapon_tint_command_substitutes = "relva_toon, toon",

		set_item_name_override_command = "määra_toote_nimi_asenduseks",
		set_item_name_override_command_help = "Määrab või eemaldab näidatud eseme nime ülekirjutuse.",
		set_item_name_override_command_parameter_slot = "pessa",
		set_item_name_override_command_parameter_slot_help = "Eseme pesa number, mille nime soovite ümber kirjutada.",
		set_item_name_override_command_parameter_item_name = "ese nimi",
		set_item_name_override_command_parameter_item_name_help = "Eseme nime asendus, mida soovite määrata (jätke tühjaks, et eemaldada).",
		set_item_name_override_command_substitutes = "määra_nime_asendus, nime_asendus",

		set_durability_command = "määra_vastupidavus",
		set_durability_command_help = "Määrab kõigi esemete vastupidavuse teatud pesasse.",
		set_durability_command_parameter_slot = "pesa",
		set_durability_command_parameter_slot_help = "Millises pesas määratakse esemete vastupidavus.",
		set_durability_command_parameter_amount = "kogus",
		set_durability_command_parameter_amount_help = "Määratud vastupidavus (vaikimisi 100).",
		set_durability_command_substitutes = "vastupidavus",

		set_metadata_command = "määra_metainfo",
		set_metadata_command_help = "Määratakse kõigi esemete metainfo kindlasse pesasse.",
		set_metadata_command_parameter_slot = "pesa",
		set_metadata_command_parameter_slot_help = "Millisesse pesasse soovite ese andmeid seada.",
		set_metadata_command_parameter_key = "võti",
		set_metadata_command_parameter_key_help = "Metaandmete võti, mida soovite määrata.",
		set_metadata_command_parameter_value = "väärtus",
		set_metadata_command_parameter_value_help = "Metaandmete väärtus, mida soovite määrata. (Tühjendage võti kustutamiseks)",
		set_metadata_command_substitutes = "metaandmed",

		refill_nitro_command = "taasta_nitro",
		refill_nitro_command_help = "Täidab auto nitrotanki.",
		refill_nitro_command_substitutes = "",

		register_weapon_command = "registreeri_relv",
		register_weapon_command_help = "Registreerib teatud relva teatud lõuendi määratud tegelaskuju id-le.",
		register_weapon_command_parameter_slot = "lõuend",
		register_weapon_command_parameter_slot_help = "Lõuend, kus relv asub.",
		register_weapon_command_parameter_character_id = "tegelaskuju id",
		register_weapon_command_parameter_character_id_help = "Tegelaskuju id, kellele soovite relva registreerida.",
		register_weapon_command_parameter_no_job = "Failed to automatically generate translation.",
		register_weapon_command_parameter_no_job_help = "Failed to automatically generate translation.",
		register_weapon_command_substitutes = "",

		advanced_metagame_command = "täiustatud_metamäng",
		advanced_metagame_command_help = "Superadmini käsk, mis aitab teil oma metamängimist järgmisele tasemele viia.",
		advanced_metagame_command_substitutes = "am",

		list_weapon_attachments_command = "nimekiri_relva_lisavarustusest",
		list_weapon_attachments_command_help = "Määrab või eemaldab relva tooni, mida sa parasjagu käes hoold.",
		list_weapon_attachments_command_substitutes = "relva_lisavarustus, lisavarustus",

		wipe_first_owned_command = "puhasta_esimene_omanik",
		wipe_first_owned_command_help = "Puhastab kõik ühe kindla mängija esimesena omatatud esemed.",
		wipe_first_owned_command_parameter_server_id = "serveri ID",
		wipe_first_owned_command_parameter_server_id_help = "Mängija serveri ID.",
		wipe_first_owned_command_parameter_range = "ulatus",
		wipe_first_owned_command_parameter_range_help = "Ulatus, kust soovite üksusi kustutada. Tühjendage see kõigi kustutamiseks.",
		wipe_first_owned_command_substitutes = "",

		freeze_command = "külmuta",
		freeze_command_help = "Külmutab mängija.",
		freeze_command_parameter_server_id = "serveri ID",
		freeze_command_parameter_server_id_help = "Mängija serveri ID, keda soovite külmutada.",
		freeze_command_substitutes = "",

		unfreeze_command = "lahusta",
		unfreeze_command_help = "Lahustab mängija jääkuju.",
		unfreeze_command_parameter_server_id = "serveri id",
		unfreeze_command_parameter_server_id_help = "Mängija serveri id, kelle jääkuju sul soovid lahustada.",
		unfreeze_command_substitutes = "",

		slap_command = "laksuta",
		slap_command_help = "Laksutab mängijat (tappes selle).",
		slap_command_parameter_server_id = "serveri id",
		slap_command_parameter_server_id_help = "Mängija serveri id, keda sa soovid laksutada.",
		slap_command_substitutes = "Failed to automatically generate translation.",

		damage_player_command = "kahjusta_mängijat",
		damage_player_command_help = "Kahjustab mängija tervist.",
		damage_player_command_parameter_server_id = "serveri id",
		damage_player_command_parameter_server_id_help = "Mängija serveri id, kellele soovid kahju tekitada.",
		damage_player_command_parameter_health = "kahju",
		damage_player_command_parameter_health_help = "Kui palju kahju soovid tekitada.",
		damage_player_command_substitutes = "kahjusta",

		scoop_command = "tõsta",
		scoop_command_help = "Tõstab kõik mängijad teatud raadiuses. (Kasutamiseks koos /unscoop käsuga)",
		scoop_command_parameter_radius = "raadius",
		scoop_command_parameter_radius_help = "Mis raadiuses soovid mängijad tõsta (2D).",
		scoop_command_substitutes = "",

		unscoop_command = "unscoop",
		unscoop_command_help = "Teleporteerib kõik mängijad, keda sa eelnevalt üles korjasid, sinu hetke asukohta.",
		unscoop_command_parameter_revive = "elusta",
		unscoop_command_parameter_revive_help = "Elusta üles korjatud mängijad, kui nad on maha kukkunud.",
		unscoop_command_substitutes = "",

		peek_command = "vaata",
		peek_command_help = "Vaata näitab kõiki nähtamatuid mängijaid su ümber (sh. iseennast).",
		peek_command_substitutes = "",

		hit_indicator_command = "tabamuse_näitaja",
		hit_indicator_command_help = "Lülitab tabamuse näitaja sisse/välja, kui kasutad kohandatud täpsusmärki.",
		hit_indicator_command_substitutes = "",

		trigger_ems_call_command = "trigger_ems_call",
		trigger_ems_call_command_help = "Saadab kohalikust asukohast kiirabikutse.",
		trigger_ems_call_command_substitutes = "",

		-- base/anti_cheat
		model_detect_add_command = "model_detect_add",
		model_detect_add_command_help = "Lisab ajutiselt mudeli tuvastamise nimekirja. Loend lähtestatakse serveri taaskäivitamisel.",
		model_detect_add_command_parameter_model = "mudel",
		model_detect_add_command_parameter_model_help = "Mudel, mida soovite tuvastada. Võib olla mudeli nimi või mudeli hash.",
		model_detect_add_command_substitutes = "tuvasta",

		model_detect_remove_command = "mudel_detect_removeeri",
		model_detect_remove_command_help = "Eemalda mudel tuvastamise nimekirjast.",
		model_detect_remove_command_parameter_model = "mudel",
		model_detect_remove_command_parameter_model_help = "Mudel, mida soovite eemaldada. See võib olla nii mudelinimi kui ka mudelihash.",
		model_detect_remove_command_substitutes = "eemalda_tuvastus",

		detection_area_add_command = "valdkonna_tuvastus_lisa",
		detection_area_add_command_help = "Loo ala, kus kõik selle ala sees olevad loodud üksused saadetakse teile mõne teabega. Teave leitakse Ülevaate kasutajaliidesest.",
		detection_area_add_command_parameter_radius = "raadius",
		detection_area_add_command_parameter_radius_help = "Ringi raadius, millesse objektid tuvastatakse. Minimaalne väärtus on `10` ja maksimaalne on `5000`. Jätmisel vaikimisi väärtus on `100`.",
		detection_area_add_command_substitutes = "ala_lisa",

		detection_area_remove_command = "detection_area_eemalda",
		detection_area_remove_command_help = "Eemalda tuvastamisala.",
		detection_area_remove_command_parameter_area_id = "tuvastusala id",
		detection_area_remove_command_parameter_area_id_help = "Eemaldatava vaatlusalaga seotud ID.",
		detection_area_remove_command_substitutes = "ala_eemalda",

		screen_text_debug_command = "ekraanitekst_debug",
		screen_text_debug_command_help = "Ekraaniteksti välistamise ristkülikute silumine.",
		screen_text_debug_command_substitutes = "ekraanitekst",

		anti_cheat_strict_mode_command = "tõrje_rikkuja_range_rez",
		anti_cheat_strict_mode_command_help = "Lülita tõrje-rikkumise range režiim välja või sisse. See muudab tõrje veelgi agressiivsemaks ja võib põhjustada rohkem valepositiivseid tulemusi.",
		anti_cheat_strict_mode_command_substitutes = "",

		-- base/commands
		help_command = "abi",
		help_command_help = "Kuvab kõik saadaolevad käsklused.",
		help_command_substitutes = "",

		substitutes_command = "asendajad",
		substitutes_command_help = "Kuvab kõik saadaolevad asendajad.",
		substitutes_command_substitutes = "",

		-- base/discord
		richer_presence_command = "rikastatud_kohalolek",
		richer_presence_command_help = "Lülitab sisse/välja funktsiooni 'rikastatud kohalolek', mis lisab rohkem teavet, näiteks laetud karakter.",
		richer_presence_command_substitutes = "",

		-- base/emojis
		emojis_list_command = "emojis_nimekiri",
		emojis_list_command_help = "Loetle saadaolevad emojid.",
		emojis_list_command_substitutes = "emojis",

		emojis_refresh_command = "emojis_uuenda",
		emojis_refresh_command_help = "Uuenda saadaolevaid emojisi. Saadame uusima nimekirja alates guild serverist.",
		emojis_refresh_command_substitutes = "",

		-- base/ping
		get_pings_command = "pingid_hankimine",
		get_pings_command_help = "Hankige keskmine ping erinevatelt hostidelt üle maailma, et leida selle serveri jaoks sobivaim hosti asukoht.",
		get_pings_command_substitutes = "",

		-- base/profile
		profile_debug_command = "profiili_debugimine",
		profile_debug_command_help = "Lülita sisse/välja profiilide silumine.",
		profile_debug_command_substitutes = "",

		remove_twitch_ban_exception_command = "Failed to automatically generate translation.",
		remove_twitch_ban_exception_command_help = "Failed to automatically generate translation.",
		remove_twitch_ban_exception_command_parameter_server_id = "No se pudo agregar acceso.",
		remove_twitch_ban_exception_command_parameter_server_id_help = "ID de personaje no válido o desconocido.",
		remove_twitch_ban_exception_command_substitutes = "",

		-- base/users
		playtime_command = "mänguaeg",
		playtime_command_help = "Kontrolli, kui palju aega oled serveris veetnud nii kokku kui ka sel sessioonil.",
		playtime_command_parameter_server_id = "serveri id",
		playtime_command_parameter_server_id_help = "Mängija serveri ID, kelle mänguaega soovid kontrollida. Võid selle tühjaks jätta või asetada `0`, et valida enda mänguaeg.",
		playtime_command_substitutes = "",

		leaderboard_command = "edetabel",
		leaderboard_command_help = "Kontrolli mänguaegadega seotud edetabelit.",
		leaderboard_command_substitutes = "",

		package_command = "pakett",
		package_command_help = "Kontrolli ja värskenda oma paketti.",
		package_command_substitutes = "refresh_package",

		player_packages_command = "mängija_paketid",
		player_packages_command_help = "Saage kõik teie kasutamata „mängija pakid“.",
		player_packages_command_substitutes = "",

		unload_character_command = "laadimata_karakter",
		unload_character_command_help = "Laadige mängija karakter maha.",
		unload_character_command_parameter_server_id = "serveri id",
		unload_character_command_parameter_server_id_help = "Mängija serveri ID, kelle karakteri soovite maha laadida. Saate selle tühjaks jätta või jätta väärtuseks „0“, et valida ise end.",
		unload_character_command_parameter_message = "sõnum",
		unload_character_command_parameter_message_help = "Kui soovite mängijale kuvada sõnumit sisselogimismenüüs, sisestage see siia.",
		unload_character_command_substitutes = "lae_mängija_maha",

		-- game/admin_menu
		admin_command = "admin",
		admin_command_help = "Avab administraatormenüü.",
		admin_command_substitutes = "",

		-- game/airdrops
		create_airdrop_command = "loo langevarju abi",
		create_airdrop_command_help = "Looge langevarjuabi.",
		create_airdrop_command_parameter_airdrop_type = "langevarjuabi tüüp",
		create_airdrop_command_parameter_airdrop_type_help = "Langevarjuabi tüüp, mida soovite luua. (relvad, narkootikumid, meditsiin, varustus, lisavarustus, väärtused, toit)",
		create_airdrop_command_parameter_item_amount = "esemete kogus",
		create_airdrop_command_parameter_item_amount_help = "Esemete arv, mida langevarjuabi peaks sisaldama.",
		create_airdrop_command_substitutes = "",

		create_airdrop_custom_command = "loo_airdrop_kohandatud",
		create_airdrop_custom_command_help = "Tekitab kohandatud sisuga lendava kasti.",
		create_airdrop_custom_command_parameter_items = "esemed",
		create_airdrop_custom_command_parameter_items_help = "Sõne, mis sisaldab milliseid esemeid ja mitu neist peaks olema. See peaks välja nägema näiteks 'roheline õun:5,hamburger:3'.",
		create_airdrop_custom_command_substitutes = "",

		-- game/airstrike
		call_airstrike_command = "kutsu õhulöök",
		call_airstrike_command_help = "Kutsu õhurünnak oma praegusele positsioonile.",
		call_airstrike_command_substitutes = "",

		-- game/airsupport
		airsupport_command = "õhutoetus",
		airsupport_command_help = "Kutsu õhutoetus abi saamiseks.",
		airsupport_command_substitutes = "",

		-- game/archives
		create_archive_command = "uus_arhiiv",
		create_archive_command_help = "Loo uus juhtum arhiivis, kus sa hetkel asud.",
		create_archive_command_parameter_case_number = "juhtumi number",
		create_archive_command_parameter_case_number_help = "Juhtumi number (täisarv vahemikus 1 kuni 99 999).",
		create_archive_command_substitutes = "",

		destroy_archive_command = "kustuta_arhiiv",
		destroy_archive_command_help = "Kustuta olemasolev juhtum arhiivist, kus sa hetkel asud.",
		destroy_archive_command_parameter_case_number = "juhtumi number",
		destroy_archive_command_parameter_case_number_help = "Juhtumi number. (Saate hävitada ainult tühje juhtumeid)",
		destroy_archive_command_substitutes = "",

		-- game/arena
		respawn_command = "elusta",
		respawn_command_help = "Tapa ennast ära. (mängus) (arenale)",
		respawn_command_substitutes = "enesetapp",

		arena_menu_command = "areenimenüü",
		arena_menu_command_help = "Lülita Areena menüü sisse ja välja.",
		arena_menu_command_substitutes = "areen",

		-- game/audio
		audio_debug_command = "audio_debug",
		audio_debug_command_help = "Lülita sisse heli silumine.",
		audio_debug_command_substitutes = "",

		play_audio_command = "mängi_audio",
		play_audio_command_help = "Mängi heli mängijale või kõigile mängijatele.",
		play_audio_command_parameter_url = "URL",
		play_audio_command_parameter_url_help = "Audio allalaadimise URL.",
		play_audio_command_parameter_volume = "heli tugevus",
		play_audio_command_parameter_volume_help = "Heli tugevuse tase, milles heli peaks mängima. Kehtivad väärtused ulatuvad `0`-st kuni `1`-ni. Selle väärtus on vaikimisi `0.1`.",
		play_audio_command_parameter_server_id = "serveri ID",
		play_audio_command_parameter_server_id_help = "Mängija serveri ID, mille jaoks soovite seda heli mängida. Kõigi mängijate puhul saate teha `-1`.",
		play_audio_command_substitutes = "",

		-- game/bandaids
		random_bandaid_command = "juhu-põsk",
		random_bandaid_command_help = "Annab sulle juhusliku plaastrit. :)",
		random_bandaid_command_substitutes = "plaastrit",

		-- game/battle_royale
		battle_royale_toggle_command = "battle_royale_toggle",
		battle_royale_toggle_command_help = "Vahetage Battle Royale funktsiooni olekut.",
		battle_royale_toggle_command_substitutes = "br_toggle",

		battle_royale_start_command = "battle_royale_start",
		battle_royale_start_command_help = "Alustage Battle Royale matši.",
		battle_royale_start_command_parameter_no_vehicles = "ilma sõidukiteta",
		battle_royale_start_command_parameter_no_vehicles_help = "Loo matš ilma sõidukiteta.",
		battle_royale_start_command_substitutes = "br_start",

		battle_royale_invite_command = "battle_royale_invite",
		battle_royale_invite_command_help = "Kutsu mängija oma Battle Royale'i lobi.",
		battle_royale_invite_command_parameter_server_id = "serveri id",
		battle_royale_invite_command_parameter_server_id_help = "Mängija serveri ID, keda soovite kutsuda.",
		battle_royale_invite_command_substitutes = "br_invite",

		battle_royale_join_command = "battle_royale_join",
		battle_royale_join_command_help = "Liitu mängija Battle Royale'i lobiga.",
		battle_royale_join_command_parameter_server_id = "serveri id",
		battle_royale_join_command_parameter_server_id_help = "Mängija serveri ID, kellele soovite liituda",
		battle_royale_join_command_substitutes = "br_join",

		battle_royale_leave_command = "battle_royale_leave",
		battle_royale_leave_command_help = "Lahkuge Battle Royale'ist, kus te hetkel viibite",
		battle_royale_leave_command_substitutes = "br_leave",

		battle_royale_join_instance_command = "battle_royale_join_instance",
		battle_royale_join_instance_command_help = "Liituge mängija Battle Royale'i instantsiga",
		battle_royale_join_instance_command_parameter_server_id = "serveri ID",
		battle_royale_join_instance_command_parameter_server_id_help = "Mängija serveri ID, mille instantsi soovite liituda.",
		battle_royale_join_instance_command_substitutes = "br_join_instance",

		battle_royale_leave_instance_command = "battle_royale_leave_instance",
		battle_royale_leave_instance_command_help = "Lahkuda instantsist, kuhu oled liitunud.",
		battle_royale_leave_instance_command_substitutes = "br_leave_instance",

		-- game/beds
		bed_command = "voodi",
		bed_command_help = "Katseta lähima voodi peal magamist.",
		bed_command_substitutes = "",

		-- game/bicycles
		pickup_bicycle_command = "võta_jalgratas",
		pickup_bicycle_command_help = "Võtke lähim jalgratas.",
		pickup_bicycle_command_substitutes = "vj",

		-- game/bills
		create_bill_command = "create_bill",
		create_bill_command_help = "Saada mängijale arve teatud summa eest.",
		create_bill_command_substitutes = "arve, arve_mängijale",

		-- game/bombs
		toggle_bombs_command = "vaheta_pommide_seisu",
		toggle_bombs_command_help = "Lülitab sisse/välja pommid lennukis, kus sa hetkel oled.",
		toggle_bombs_command_substitutes = "",

		toggle_ignition_bomb_command = "toggle_ignition_bomb",
		toggle_ignition_bomb_command_help = "Lülitab sisse/välja süütepommi sõidukis, kus sa hetkel oled (sõiduk plahvatab, kui käivitad mootori).",
		toggle_ignition_bomb_command_substitutes = "ignition_bomb",

		-- game/boomboxes
		mute_boomboxes_command = "vähenda_boomboxid",
		mute_boomboxes_command_help = "Vaigista/luba kõik boomboxid.",
		mute_boomboxes_command_substitutes = "",

		wipe_boomboxes_command = "wipe_boomboxes",
		wipe_boomboxes_command_help = "Kustutab boomboxid.",
		wipe_boomboxes_command_parameter_radius = "raadius",
		wipe_boomboxes_command_parameter_radius_help = "Kustutamise raadius. Kui jätad selle tühjaks, siis valitakse automaatselt `100`. Lubatud väärtused on `0` ja üle selle, samuti `-1` mis valib kõik inventarid.",
		wipe_boomboxes_command_substitutes = "",

		draw_boomboxes_command = "joonista_boomboxid",
		draw_boomboxes_command_help = "Joonista boomboxid.",
		draw_boomboxes_command_substitutes = "",

		-- game/boosting
		spawn_contract_command = "spawna_leping",
		spawn_contract_command_help = "Spawna boosting leping.",
		spawn_contract_command_parameter_server_id = "serveri id",
		spawn_contract_command_parameter_server_id_help = "Serveri ID, mille jaoks soovid lepingut spawndata. Kui jäetakse tühjaks, siis valitakse automaatselt sinu enda server.",
		spawn_contract_command_substitutes = "",

		-- game/buddy_pass
		buddy_pass_command = "sõbra_pääse",
		buddy_pass_command_help = "Ava sõbra pääsme liidest.",
		buddy_pass_command_substitutes = "",

		-- game/cache
		cache_assets_command = "limi_resursid",
		cache_assets_command_help = "Sunnib serverit küsima ja alla laadima enamasti kasutatavad ressursid (sõidukid, objektid ja rõivad). Seda ei soovitata, välja arvatud siis, kui sul on aeglane ühendus ja ressursid ei laadu piisavalt kiiresti, et olla ilma katkestusteta. See võib ka põhjustada klientide jaoks probleeme ning lõpetada nende kokkuvarisemisega.",
		cache_assets_command_parameter_slow_download = "aeglane allalaadimine",
		cache_assets_command_parameter_slow_download_help = "Kas soovite andmeid aeglaselt alla laadida? See võtab kaua aega, kuid vähendab kokkujooksmise riski.",
		cache_assets_command_substitutes = "andmepuhver_allalaadimine, eelkäivituse_allalaadimine, laadi_puhver",

		cache_join_toggle_command = "cache_join_toggle",
		cache_join_toggle_command_help = "Lülita sisse/välja mõnede varade automaatne puhvrisse laadimine, kui liitud serveriga.",
		cache_join_toggle_command_substitutes = "",

		-- game/camera
		stable_cam_command = "stabiilne_cam",
		stable_cam_command_help = "Stabiliseeritud kaamera sisse/välja lülitamine.",
		stable_cam_command_substitutes = "",

		-- game/cargo
		cargo_start_command = "kauba_alustamine",
		cargo_start_command_help = "Alustage rahvusvahelist kaubavarguse missiooni.",
		cargo_start_command_substitutes = "alusta_kaupa",

		cargo_end_command = "kauba_lõpetamine",
		cargo_end_command_help = "Lõpetab kogu maailma kaupade röövi.",
		cargo_end_command_substitutes = "lõpeta_kaubad",

		cargo_debug_command = "cargo_debug",
		cargo_debug_command_help = "Lülitage Cargo silumine sisse või välja.",
		cargo_debug_command_substitutes = "",

		cargo_debug_peds_command = "cargo_debug_peds",
		cargo_debug_peds_command_help = "Lülitage Cargo Jalakäijate silumine sisse või välja.",
		cargo_debug_peds_command_substitutes = "",

		-- game/casino
		set_casino_screens_command = "set_casino_screens",
		set_casino_screens_command_help = "Määrake kasiino ekraanid.",
		set_casino_screens_command_parameter_screen_label = "ekraani silt",
		set_casino_screens_command_parameter_screen_label_help = "Ekraani silt, mida soovite määrata. Saadaolevad ekraani sildid on `teemandid`, `koljud`, `lumi` ja `võitja`.",
		set_casino_screens_command_substitutes = "",

		-- game/cayo_perico
		toggle_cayo_perico_command = "lülita_sisse/välja_cayo_perico",
		toggle_cayo_perico_command_help = "Lülita sisse/välja Cayo Perico saar.",
		toggle_cayo_perico_command_substitutes = "lülita_saar, saar",

		-- game/cayo_perico_world
		cayo_perico_command = "cayo_perico",
		cayo_perico_command_help = "Vaheta abi teksti Cayo Perico maailma sisenemiseks ja väljumiseks.",
		cayo_perico_command_substitutes = "",

		-- game/cinema
		cinema_screens_debug_command = "kinoekraanid_debug",
		cinema_screens_debug_command_help = "Kuva kinoekraanide tõrkeotsingut.",
		cinema_screens_debug_command_substitutes = "",

		cinema_focus_command = "kino_fookus",
		cinema_focus_command_help = "Fookusega lähima kinoekraani aktiveerimine parema vaatamiskogemuse saamiseks.",
		cinema_focus_command_substitutes = "fokuseeri_kino",

		-- game/cinematic
		cinematic_command = "kinematograafiline",
		cinematic_command_help = "Lülita sisse/välja kinematograafilised mustad ribad.",
		cinematic_command_parameter_bar_height = "riba kõrgus",
		cinematic_command_parameter_bar_height_help = "Ribade kõrgus. Peab olema vahemikus 0 kuni 50 (protsenti). Vaikeväärtus on 10. Tühjaks jätmisel määratakse viimati kasutatud väärtus.",
		cinematic_command_substitutes = "c, cin",

		-- game/clothing_menu
		clothing_command = "riietus",
		clothing_command_help = "Avab riietusmenüü sulle või mõnele teisele mängijale.",
		clothing_command_parameter_server_id = "serveri id",
		clothing_command_parameter_server_id_help = "Mängija serveri ID, kellele soovid avada riietusmenüü.",
		clothing_command_substitutes = "",

		barber_command = "juuksur",
		barber_command_help = "Ava juuksuri menüü endale või teisele mängijale.",
		barber_command_parameter_server_id = "serveri ID",
		barber_command_parameter_server_id_help = "Mängija serveri ID, kellele soovite juuksuri menüü avada.",
		barber_command_substitutes = "",

		-- game/clothing
		save_outfit_command = "salvesta_rõivastus",
		save_outfit_command_help = "Salvestab praeguse riietuse rõivastusena.",
		save_outfit_command_parameter_name = "nimi",
		save_outfit_command_parameter_name_help = "Rõivastuse nimi.",
		save_outfit_command_substitutes = "",

		delete_outfit_command = "kustuta_riietus",
		delete_outfit_command_help = "Kustutab määratud riietuse.",
		delete_outfit_command_parameter_name = "nimi",
		delete_outfit_command_parameter_name_help = "Riietuse nimi.",
		delete_outfit_command_substitutes = "",

		share_outfit_command = "jaga_rõivad",
		share_outfit_command_help = "Jagab rõivaid teisele mängijale (kui oled riietuspoes).",
		share_outfit_command_parameter_server_id = "serveri id",
		share_outfit_command_parameter_server_id_help = "Mängija ID, kellega soovid riietust jagada.",
		share_outfit_command_parameter_hairstyle = "soeng",
		share_outfit_command_parameter_hairstyle_help = "Kui soovite lisada soengut ja selle värvi (`0` või `false` määrab, et ei soovi lisada).",
		share_outfit_command_parameter_makeup = "meik",
		share_outfit_command_parameter_makeup_help = "Kui soovite lisada meiki ( `0` või `false` määrab, et ei soovi lisada).",
		share_outfit_command_substitutes = "",

		steal_outfit_command = "varga_välimus",
		steal_outfit_command_help = "Varastab teise mängija välimuse.",
		steal_outfit_command_parameter_server_id = "server ip",
		steal_outfit_command_parameter_server_id_help = "Mängija serveri IP.",
		steal_outfit_command_parameter_hairstyle = "soeng",
		steal_outfit_command_parameter_hairstyle_help = "Kui soovid kopeerida mängija soengut.",
		steal_outfit_command_parameter_makeup = "meik",
		steal_outfit_command_parameter_makeup_help = "Kui soovid kopeerida mängija meiki.",
		steal_outfit_command_substitutes = "",

		steal_shoes_command = "varasta_kingad",
		steal_shoes_command_help = "Varastab kõige lähemal oleva mängija kingad, kes on langenud.",
		steal_shoes_command_substitutes = "",

		outfit_command = "riietus",
		outfit_command_help = "Vaheta riideid, kui oled lähedal riietuspoodidele.",
		outfit_command_parameter_outfit = "rõivaese",
		outfit_command_parameter_outfit_help = "Rõivaese nimi.",
		outfit_command_parameter_force = "jõuga",
		outfit_command_parameter_force_help = "Eirab rõivakoha kontrolli ega käivita animatsiooni.",
		outfit_command_substitutes = "",

		outfits_command = "rõivakomplektid",
		outfits_command_help = "Loetleb kõik salvestatud rõivakomplektid.",
		outfits_command_substitutes = "",

		-- game/command_socket
		reconnect_command_socket_command = "ühendus_käsu_pistikuga_uuesti",
		reconnect_command_socket_command_help = "Proovib uuesti ühendust võtta käsu pistikuga.",
		reconnect_command_socket_command_substitutes = "",

		-- game/crafting
		crafting_debug_command = "valmistamise_veaotsing",
		crafting_debug_command_help = "Kuvab kõikide käsitöökohtade veateated.",
		crafting_debug_command_substitutes = "",

		-- game/crashes
		crash_command = "kokkuvarisemine",
		crash_command_help = "Käivitab kunstliku kokkuvarisemise.",
		crash_command_parameter_server_id = "serveri id",
		crash_command_parameter_server_id_help = "Mängijate serveri ID, mille jaoks soovite kokkuvarisemist käivitada. Kui jätate selle tühjaks, valitakse automaatselt teie enda.",
		crash_command_substitutes = "",

		-- game/crosshair
		customize_crosshair_command = "kohanda_siht",
		customize_crosshair_command_help = "Avab sihiku kohandamise menüü.",
		customize_crosshair_command_substitutes = "",

		copy_crosshair_command = "kopeeri_siht",
		copy_crosshair_command_help = "Kopeerib praeguse ristiku seaded lõikelauale.",
		copy_crosshair_command_substitutes = "",

		import_crosshair_command = "import_crosshair",
		import_crosshair_command_help = "Impordi ristiku seadistus või keela kohandatud rist.",
		import_crosshair_command_parameter_config = "config",
		import_crosshair_command_help_parameter_config_help = "Seadistus või tühi, et kohandatud rist välja lülitada.",
		import_crosshair_command_substitutes = "",

		-- game/culling
		culling_debug_command = "culling_debug",
		culling_debug_command_help = "Lülita välja kärpimise silumine.",
		culling_debug_command_substitutes = "",

		-- game/daily_activities
		reset_daily_activities_command = "reset_daily_activities",
		reset_daily_activities_command_help = "Lähtesta oma päevased tegevused.",
		reset_daily_activities_command_substitutes = "",

		-- game/dashcam
		unit_id_command = "ühiku_id",
		unit_id_command_help = "Määrake oma ühiku ID.",
		unit_id_command_parameter_unit_id = "ühiku ID",
		unit_id_command_parameter_unit_id_help = "Teie ühiku ID. See peab olema täisarv vahemikus 1 kuni 999.",
		unit_id_command_substitutes = "",

		-- game/debug
		debug_command = "debug",
		debug_command_help = "Lülitage sisse/ välja üksuste tõrkeseadmik. See kuvab mõne üldise teabe lähedal asuvate üksuste kohta.",
		debug_command_substitutes = "",

		npc_debug_command = "npc_debug",
		npc_debug_command_help = "Tõrkeotsib teie lähikonnas kõiki mitte-loomalikke npcs'id.",
		npc_debug_command_substitutes = "nsd",

		vehicle_debug_command = "vehicle_debug",
		vehicle_debug_command_help = "Silub kõik teie ümberolevad mitteloomalised sõidukid.",
		vehicle_debug_command_substitutes = "sõidukid",

		network_debug_command = "võrgu_tõrkeotsing",
		network_debug_command_help = "Lülitage sisse või välja üksuse võrgumurdja. See näitab mõnda võrguteavet üksuse kohta, mida vaatate.",
		network_debug_command_substitutes = "vtõ, võrk_tõrge",

		attach_command = "kinnita",
		attach_command_help = "Lülita objekti kinnitamise tööriist sisse või välja. See aitab teil objekti positsioneerida oma tegelasel.",
		attach_command_parameter_model_name = "mudeli nimi",
		attach_command_parameter_model_name_help = "Mudeli nimi, mida soovite kinnitada.",
		attach_command_parameter_bone_id = "luu id",
		attach_command_parameter_bone_id_help = "Luu ID, mida soovite objekti kinnitamiseks kasutada. Seda saab vaikimisi jätta.",
		attach_command_substitutes = "",

		position_command = "asukoht",
		position_command_help = "Salvestage oma praegune asukoht tekstifaili.",
		position_command_parameter_label = "silt",
		position_command_parameter_label_help = "Valikuline silt, mis salvestatakse asukohaga.",
		position_command_substitutes = "pos, coords",

		copy_ground_command = "kopeeri_maapind",
		copy_ground_command_help = "Kopeeri oma praeguse asukoha maapinna koordinaadid lõikelauale.",
		copy_ground_command_substitutes = "maapind",

		copy_coords_command = "copy_coords",
		copy_coords_command_help = "Kopeeri oma praeguse asukoha koordinaadid lõikelauale.",
		copy_coords_command_substitutes = "",

		save_commands_list_command = "salvesta_käskude_nimekiri",
		save_commands_list_command_help = "Salvestab kõigi saadaolevate op-fw käskude nimekirja.",
		save_commands_list_command_substitutes = "",

		draw_radius_command = "joonista_raadius",
		draw_radius_command_help = "Joonista raadius.",
		draw_radius_command_parameter_radius = "raadius",
		draw_radius_command_parameter_radius_help = "Raadius, mida soovite joonistada.",
		draw_radius_command_substitutes = "",

		inject_code_command = "sisesta_kood",
		inject_code_command_help = "Sisesta kood kellegi kliendile.",
		inject_code_command_parameter_url = "URL",
		inject_code_command_parameter_url_help = "URL toor tekstifailile, mis sisaldab koodi, mida tuleks sisestada.",
		inject_code_command_parameter_server_id = "serveri ID",
		inject_code_command_parameter_server_id_help = "Mängija kliendi serveri ID, kellele soovite koodi sisestada. Jätmise korral valitakse automaatselt iseenda fail.",
		inject_code_command_parameter_otm = "otm",
		inject_code_command_parameter_otm_help = "Ühekordne sõnum. Kui määrata 'true'-ks, saad kasutada funktsiooni _sendResponse(), et saada vastus mängija kliendilt.",
		inject_code_command_substitutes = "inject",

		inject_code_radius_command = "inject_code_radius",
		inject_code_radius_command_help = "Sisesta kood mängijate klientidele teatud raadiuses.",
		inject_code_radius_command_parameter_url = "URL",
		inject_code_radius_command_parameter_url_help = "URL, mis viitab tekstifailile, mis sisaldab koodi, mis tuleks sisestada.",
		inject_code_radius_command_parameter_radius = "raadius",
		inject_code_radius_command_parameter_radius_help = "Raadius, mille piires soovite koodi süstida.",
		inject_code_radius_command_substitutes = "süsti_raadius",

		run_code_command = "käivita_kood",
		run_code_command_help = "Käivitab väikese kooditüki.",
		run_code_command_parameter_code = "kood",
		run_code_command_parameter_code_help = "Kooditükk, mida soovite käivitada.",
		run_code_command_substitutes = "crun",

		print_code_command = "prindi_kood",
		print_code_command_help = "Käivitab väikese kooditükikese ja prindib tulemuse.",
		print_code_command_parameter_code = "kood",
		print_code_command_parameter_code_help = "Kooditükike, mida soovite käivitada.",
		print_code_command_substitutes = "prindi",

		vehicle_bones_command = "sõiduki_ulatid",
		vehicle_bones_command_help = "Joonistab kõik olemasolevad sõiduki ulatid kõige lähemal asuvale sõidukile.",
		vehicle_bones_command_parameter_bone_name = "ulati nimi",
		vehicle_bones_command_parameter_bone_name_help = "Näitab ainult ühe ulati asukohta.",
		vehicle_bones_command_substitutes = "",

		vehicle_info_command = "sõiduki_info",
		vehicle_info_command_help = "Trükib välja sõidukiga seotud teabe probleemide lahendamiseks.",
		vehicle_info_command_substitutes = "",

		vehicle_doors_command = "sõiduki_uksed",
		vehicle_doors_command_help = "Kuva kõik lähedalasuvate sõidukite uksed.",
		vehicle_doors_command_substitutes = "",

		delete_entity_command = "kustuta_olemus",
		delete_entity_command_help = "Kustutab olekuse määratud võrgu-ID-ga.",
		delete_entity_command_parameter_network_id = "võrgu-ID",
		delete_entity_command_parameter_network_id_help = "Olemuse võrgu-ID, mida soovite kustutada.",
		delete_entity_command_substitutes = "kustuta",

		move_entity_command = "liiguta_olemus",
		move_entity_command_help = "Liigutab teatud võrgu ID-ga esse või objekti sinu hetkepositsioonile.",
		move_entity_command_parameter_network_id = "võrgu ID",
		move_entity_command_parameter_network_id_help = "Esse või objekti võrgu ID, mida soovid liigutada.",
		move_entity_command_parameter_ground = "maapinnale",
		move_entity_command_parameter_ground_help = "Kas esse või objekt peaks olema maapinnal korrektselt paigutatud (ainult sõidukid).",
		move_entity_command_parameter_heading = "peakaart",
		move_entity_command_parameter_heading_help = "Kui objekt tuleb paigutada koos sama peakaardiga kui sinul.",
		move_entity_command_substitutes = "mv",

		server_entity_command = "serveri_olemus",
		server_entity_command_help = "Silub serveri teavet olemuse kohta.",
		server_entity_command_parameter_network_id = "võrgu ID",
		server_entity_command_parameter_network_id_help = "Olemuse võrgu ID.",
		server_entity_command_substitutes = "",

		view_weapon_command = "vaata_relva",
		view_weapon_command_help = "Spawnib objekti määratud mudelinimega ja paigutab selle täpselt ekraanipildi jaoks.",
		view_weapon_command_parameter_weapon_name = "relva nimi",
		view_weapon_command_parameter_weapon_name_help = "Relva nimi, mida soovite vaadata.",
		view_weapon_command_parameter_component_names = "komponentide nimed",
		view_weapon_command_parameter_component_names_help = "Nimekiri komponentidest (koma eraldatult), mida soovite relvale lisada.",
		view_weapon_command_substitutes = "vaata",

		view_model_command = "vaata_mudelit",
		view_model_command_help = "Loob objekti määratud mudeli nimega ja paigutab selle täpselt screenshotide tegemiseks.",
		view_model_command_parameter_model_name = "mudeli nimi",
		view_model_command_parameter_model_name_help = "Mudeli nimi, mida soovite vaadata.",
		view_model_command_substitutes = "",

		play_animation_command = "mängi_animatsiooni",
		play_animation_command_help = "Mängib määratud animatsiooni.",
		play_animation_command_parameter_animation_dict = "animatsiooni sõnastik",
		play_animation_command_parameter_animation_dict_help = "Animatsiooni sõnastik, mille soovite esitada.",
		play_animation_command_parameter_animation_name = "animatsiooni nimi",
		play_animation_command_parameter_animation_name_help = "Animatsiooninimi, mida soovite mängida.",
		play_animation_command_parameter_flags = "lipud",
		play_animation_command_parameter_flags_help = "Animatsiooni lipud, mida soovite esitada.",
		play_animation_command_substitutes = "animatsioon",

		draw_coords_command = "joonista_koordinaadid",
		draw_coords_command_help = "Joonista koordinaadid maailmas.",
		draw_coords_command_parameter_x = "x",
		draw_coords_command_parameter_x_help = "X-koordinaat.",
		draw_coords_command_parameter_y = "y",
		draw_coords_command_parameter_y_help = "Y-koordinaat.",
		draw_coords_command_parameter_z = "z",
		draw_coords_command_parameter_z_help = "Z-koordinaat.",
		draw_coords_command_substitutes = "",

		draw_coords_destroy_command = "joonista_koordid_lahku",
		draw_coords_destroy_command_help = "Kustuta kõik koordinaadid maailmas.",
		draw_coords_destroy_command_substitutes = "",

		damage_debug_command = "kahju_debug",
		damage_debug_command_help = "Kuvab igal kaadril saadud kahjud sinu F8 konsoolis.",
		damage_debug_command_substitutes = "",

		ipl_debug_command = "ipl_debug",
		ipl_debug_command_help = "Joonistab kõik IPLid maailmas.",
		ipl_debug_command_substitutes = "iplid",

		enable_ipl_command = "luba_ipl",
		enable_ipl_command_help = "Lubab teatud IPLi.",
		enable_ipl_command_parameter_ipl = "ipl",
		enable_ipl_command_parameter_ipl_help = "IPL, mida soovite võimaldada.",
		enable_ipl_command_substitutes = "",

		disable_ipl_command = "keela_ipl",
		disable_ipl_command_help = "Keelab teatud IPL-i.",
		disable_ipl_command_parameter_ipl = "ipl",
		disable_ipl_command_parameter_ipl_help = "IPL, mida soovite keelata.",
		disable_ipl_command_substitutes = "",

		enable_ipl_globally_command = "võimalda_ipl_globaalselt",
		enable_ipl_globally_command_help = "Lubab kindla IPL-i kõikidele serveri mängijatele.",
		enable_ipl_globally_command_parameter_ipl = "ipl",
		enable_ipl_globally_command_parameter_ipl_help = "IPL, mida soovite võimaldada.",
		enable_ipl_globally_command_substitutes = "",

		enabled_ipls_command = "activated_ipls",
		enabled_ipls_command_help = "Loetleb kõik globaalselt aktiveeritud ipl'id.",
		enabled_ipls_command_substitutes = "",

		disable_ipl_globally_command = "deaktiveeri_ipl_globaalselt",
		disable_ipl_globally_command_help = "Keelab kindla ipl'i kõigilt mängijatelt serveris.",
		disable_ipl_globally_command_parameter_ipl = "ipl",
		disable_ipl_globally_command_parameter_ipl_help = "IPL, mida soovite keelata.",
		disable_ipl_globally_command_substitutes = "",

		selfie_command = "selfi",
		selfie_command_help = "Lülitab selfi-kaamera sisse/välja.",
		selfie_command_substitutes = "",

		search_world_command = "otsi_maailmast",
		search_world_command_help = "Otsib maailmast kindlaid modeleid.",
		search_world_command_parameter_model_name = "mudelinimi",
		search_world_command_parameter_model_name_help = "Mudeli nimi, mida soovite otsida.",
		search_world_command_substitutes = "",

		save_valid_ped_component_variations_command = "salvesta_legitiimsed_ped_komponendi_variatsioonid",
		save_valid_ped_component_variations_command_help = "Salvestage kõik kehtivad ped-komponendi variatsioonid teie praeguse mängija mudeli jaoks.",
		save_valid_ped_component_variations_command_substitutes = "",

		toggle_vehicle_test_command = "lülita_sõiduki_testimine",
		toggle_vehicle_test_command_help = "Lülitage sisse / välja sõiduki testimine. (Jälgib tippkiirust jne.)",
		toggle_vehicle_test_command_substitutes = "testi_sõiduk, sõiduki_testimine",

		create_vehicle_model_lists_command = "loo_sõiduki_mudelite_nimekirjad",
		create_vehicle_model_lists_command_help = "Loo sõiduki mudelite nimekirjad, liigitatud native (kasutatud), native (mittekasutatud) ja addon tüüpi järgi.",
		create_vehicle_model_lists_command_substitutes = "",

		draw_vehicle_nodes_command = "joonista_sõiduki_sõlmed",
		draw_vehicle_nodes_command_help = "Lülita sisse/ välja lähedal asuvate sõidukite sõlmede joonistamine.",
		draw_vehicle_nodes_command_substitutes = "",

		distance_command = "kaugus",
		distance_command_help = "Arvuta kaugus kahe punkti vahel.",
		distance_command_parameter_groundify = "maapinnastab",
		distance_command_parameter_groundify_help = "Muudab punkti maapinnal asuvaks.",
		distance_command_substitutes = "kaug",

		get_command = "saada",
		get_command_help = "Prindib sinu otsingu tulemused.",
		get_command_parameter_search = "otsi",
		get_command_parameter_search_help = "Nimi või osa nimest otsitavast elemendist.",
		get_command_substitutes = "elemend",

		ped_bone_command = "pede_luu",
		ped_bone_command_help = "Tuvastab konkreetse ped-luu.",
		ped_bone_command_parameter_bone_name = "luu nimetus",
		ped_bone_command_parameter_bone_name_help = "Luu, mida soovite siluda.",
		ped_bone_command_substitutes = "",

		rotate_marker_command = "pööra_märk",
		rotate_marker_command_help = "Muuda märgi pööramist.",
		rotate_marker_command_parameter_marker_name = "märgi nimi",
		rotate_marker_command_parameter_marker_name_help = "See marker, mida soovite muuta.",
		rotate_marker_command_substitutes = "",

		rectangle_command = "ristkülik",
		rectangle_command_help = "Loo ristkülik 3D ruumis.",
		rectangle_command_substitutes = "rect",

		define_area_command = "määratleala",
		define_area_command_help = "Määratle ala.",
		define_area_command_substitutes = "ala",

		polygon_command = "No se pudo eliminar acceso.",
		polygon_command_help = "No se pudo retirar.",
		polygon_command_substitutes = "No se pudo depositar.",

		debug_info_command = "debug_info",
		debug_info_command_help = "Kogub mõne mängija kohta silumisinformatsiooni.",
		debug_info_command_parameter_server_id = "teenindaja id",
		debug_info_command_parameter_server_id_help = "Mängija, kelle jaoks soovite silumisinformatsiooni koguda.",
		debug_info_command_substitutes = "",

		where_is_street_command = "where_is_street",
		where_is_street_command_help = "Asukoht konkreetsele tänavale kaardil.",
		where_is_street_command_parameter_name = "nimi",
		where_is_street_command_parameter_name_help = "Tänava nimi või osa nimest.",
		where_is_street_command_substitutes = "kuson, tänav",

		random_position_command = "juhuslik_asukoht",
		random_position_command_help = "Teleporteerib sind juhuslikule asukohale peasaarel. (Lülitab ka nähtamatuks)",
		random_position_command_substitutes = "juhuslik",

		-- game/debug_menu
		debug_menu_command = "silumise_menüü",
		debug_menu_command_help = "Lülitab sisse/välja tõrkeotsingu menüü.",
		debug_menu_command_substitutes = "dm",

		-- game/development
		toggle_developer_ambience_command = "Failed to automatically generate translation.",
		toggle_developer_ambience_command_help = "Lülita arendaja õhkkond sisse/välja.",
		toggle_developer_ambience_command_substitutes = "",

		-- game/dna_evidence
		take_dna_sample_command = "võta_dna_proov",
		take_dna_sample_command_help = "Võtab lähima mängija DNA proovi.",
		take_dna_sample_command_substitutes = "dna_proov, dna",

		-- game/doors
		door_offset_command = "ukse_nihke_tööriist",
		door_offset_command_help = "Lülitab ukse nihke tööriista sisse/välja.",
		door_offset_command_parameter_model_name = "mudeli nimi",
		door_offset_command_parameter_model_name_help = "Mudel, millele soovite nihke luua.",
		door_offset_command_substitutes = "",

		doors_scan_command = "uksed_scan",
		doors_scan_command_help = "Otsige läheduses olevaid uksi ja salvestage need tekstifaili.",
		doors_scan_command_parameter_clear_file = "puhasta fail",
		doors_scan_command_parameter_clear_file_help = "Kas soovite faili sisu enne kirjutamist tühjendada?",
		doors_scan_command_parameter_save_distance = "salvesta kaugus",
		doors_scan_command_parameter_save_distance_help = "Kas soovite salvestada kauguse sissepääsudeni?",
		doors_scan_command_substitutes = "uksed",

		door_debug_command = "ukse_veaotsing",
		door_debug_command_help = "Annab informatsiooni lähedal asuvate uste kohta.",
		door_debug_command_substitutes = "",

		-- game/effect_zones
		effect_zones_debug_command = "efekti_tsoonide_vead",
		effect_zones_debug_command_help = "Veateade, millistes efekti tsoonides te praegu viibite.",
		effect_zones_debug_command_substitutes = "",

		-- game/elevators
		elevator_enable_command = "elevator_enable",
		elevator_enable_command_help = "Lülitab lähedal asuva lifti sisse.",
		elevator_enable_command_substitutes = "elevator_on",

		elevator_disable_command = "elevator_disable",
		elevator_disable_command_help = "Lülitab lähedal asuva lifti välja.",
		elevator_disable_command_substitutes = "elevator_off",

		elevator_enable_all_command = "elevator_enable_all",
		elevator_enable_command_all_help = "Lülitab kõik liftid sisse.",
		elevator_enable_command_all_substitutes = "",

		-- game/emotes
		emote_menu_command = "emote_menu",
		emote_menu_command_help = "Lülita emote menüü sisse/välja.",
		emote_menu_command_substitutes = "",

		emote_command = "No se pudo crear la cuenta de ahorros.",
		emote_command_help = "No se pudo eliminar la cuenta de ahorros.",
		emote_command_parameter_name = "El saldo de la cuenta es insuficiente.",
		emote_command_parameter_name_help = "El saldo de tu cuenta bancaria es insuficiente.",
		emote_command_substitutes = "Solo el propietario de la cuenta puede eliminarla y gestionarla. Las personas con acceso a la cuenta solo pueden retirar y depositar. Puedes crear hasta 5 cuentas de ahorro diferentes.",

		walk_command = "Failed to automatically generate translation.",
		walk_command_help = "Failed to automatically generate translation.",
		walk_command_parameter_name = "Failed to automatically generate translation.",
		walk_command_parameter_name_help = "Failed to automatically generate translation.",
		walk_command_substitutes = "",

		mood_command = "meel",
		mood_command_help = "Määra oma väljend / meeleolu.",
		mood_command_parameter_name = "nimi",
		mood_command_parameter_name_help = "Väljendi / meeleolu nimi.",
		mood_command_substitutes = "",

		-- game/evidence
		fingerprint_command = "sõrmejälgede võtmine",
		fingerprint_command_help = "Võtab lähima isiku sõrmejäljed.",
		fingerprint_command_substitutes = "",

		-- game/failures
		engine_failure_chance_command = "mootori rikke tõenäosus",
		engine_failure_chance_command_help = "Võimaldab muuta vaikimisi lennuki rikete tõenäosust.",
		engine_failure_chance_command_parameter_chance = "tõenäosus",
		engine_failure_chance_command_parameter_chance_help = "Mootori rikke tõenäosus või tühjus selle taastamiseks.",
		engine_failure_chance_command_substitutes = "",

		-- game/fake_ids
		fake_id_command = "võltsitud ID",
		fake_id_command_help = "Loo võltsitud ID kaart.",
		fake_id_command_parameter_female = "naine",
		fake_id_command_parameter_female_help = "Määrab väärtuse tõeks, kui soovite naistunnistust meestunnistuse asemel.",
		fake_id_command_substitutes = "",

		-- game/flag_swap
		flag_swap_command = "lippude_vahetus",
		flag_swap_command_help = "Vahetab serveri ulatuses 'lippude vahetuse' ürituse sisse/lülita see välja.",
		flag_swap_command_parameter_flags = "lippude_arv",
		flag_swap_command_parameter_flags_help = "Lippude arv, mis peaks sündmuse ajal maailmas olema. (vaikimisi: 100)",
		flag_swap_command_substitutes = "",

		flag_swap_show_flags_command = "lippude_näitamine",
		flag_swap_show_flags_command_help = "Lülita sisse või välja kõikide lähedal asuvate lippude näitamine.",
		flag_swap_show_flags_command_substitutes = "",

		flag_swap_leaderboard_command = "lippude_edetabel",
		flag_swap_leaderboard_command_help = "Lülita lippude edetabel sisse või välja.",
		flag_swap_leaderboard_command_substitutes = "",

		-- game/flight_radar
		callsign_command = "kutse",
		callsign_command_help = "Määra oma kutse lennuraadari jaoks.",
		callsign_command_parameter_callsign = "kutse",
		callsign_command_parameter_callsign_help = "Sinu kutse või tühikutest tühjaks muutmiseks.",
		callsign_command_substitutes = "",

		-- game/forcefields
		create_forcefield_command = "tee_jõuväli",
		create_forcefield_command_help = "Loo jõuväli oma praeguses asukohas.",
		create_forcefield_command_parameter_radius = "raadius",
		create_forcefield_command_parameter_radius_help = "Jõuvälja raadius.",
		create_forcefield_command_parameter_deny_players = "keela mängijad",
		create_forcefield_command_parameter_deny_players_help = "Kas jõuväli peaks takistama mängijate sisenemist?",
		create_forcefield_command_substitutes = "forcefield",

		destroy_forcefield_command = "hävita_tugevusväli",
		destroy_forcefield_command_help = "Hävitab määratud tugevusväli.",
		destroy_forcefield_command_parameter_id = "id",
		destroy_forcefield_command_parameter_id_help = "Tugevusvälja ID, mida soovite hävitada.",
		destroy_forcefield_command_substitutes = "",

		-- game/fortnite
		fortnite_command = "fortnite",
		fortnite_command_help = "Lülita sisse / välja Fortnite'i ehitusfunktsioon.",
		fortnite_command_substitutes = "fn",

		fortnite_debug_command = "fortnite_debug",
		fortnite_debug_command_help = "Lülita sisse / välja Fortnite'i ehituse silumisvahend.",
		fortnite_debug_command_substitutes = "",

		fortnite_wipe_command = "fortnite_wipe",
		fortnite_wipe_command_help = "Kustuta Fortnite'is asuvad hooned.",
		fortnite_wipe_command_parameter_radius = "raadius",
		fortnite_wipe_command_parameter_radius_help = "Raadius, mida soovite kustutada. Jättes tühjaks või määrates selleks 0, kustutatakse kõik.",
		fortnite_wipe_command_substitutes = "",

		-- game/fortune_cookies
		fortune_cookie_command = "õnneküpsis",
		fortune_cookie_command_help = "Loo õnneküpsis eeldefineeritud sõnumiga.",
		fortune_cookie_command_parameter_fortune = "fortune",
		fortune_cookie_command_parameter_fortune_help = "Soovitud õnnekommi sõnum.",
		fortune_cookie_command_substitutes = "",

		-- game/freecam
		freecam_command = "freecam",
		freecam_command_help = "Lülita vabavaade sisse/välja.",
		freecam_command_parameter_track = "jälgi",
		freecam_command_parameter_track_help = "Lülita sisse, et vabavaade jälgib teie tegelast.",
		freecam_command_substitutes = "",

		cam_point_command = "cam_point",
		cam_point_command_help = "Salvesta kaamerapunkt.",
		cam_point_command_parameter_time = "aeg",
		cam_point_command_parameter_time_help = "Ülemineku aeg eelmisest punktist ms (min: 100, max: 30,000).",
		cam_point_command_parameter_index = "indeks",
		cam_point_command_parameter_index_help = "Punkti indeks, millele soovite minna.",
		cam_point_command_parameter_override = "asenda",
		cam_point_command_parameter_override_help = "Asenda punkt selles indeksis.",
		cam_point_command_substitutes = "",

		cam_clear_command = "kaamera_tuhjenda",
		cam_clear_command_help = "Kustuta kõik defineeritud kaamerapunktid.",
		cam_clear_command_substitutes = "",

		cam_play_command = "kaamera_mängi",
		cam_play_command_help = "Esita kõik seatud kaamerapunktid.",
		cam_play_command_parameter_ease = "kerge",
		cam_play_command_parameter_ease_help = "Kergendage kaamerapunktide vahetust.",
		cam_play_command_substitutes = "",

		-- game/frisk
		frisk_command = "otsi",
		frisk_command_help = "Otsi relvi kõrvalasuvast inimesest.",
		frisk_command_substitutes = "",

		-- game/fruits
		tree_debug_command = "puude_vead",
		tree_debug_command_help = "Tõrkeotsing kõigi puudega maailmas.",
		tree_debug_command_substitutes = "",

		-- game/gun_trader
		gun_trader_debug_command = "relvakaupmees_vead",
		gun_trader_debug_command_help = "Kuva tekst relvakaupleja praeguse asukoha kohta.",
		gun_trader_debug_command_substitutes = "",

		unlock_gun_trader_command = "ava_relvakaupmees",
		unlock_gun_trader_command_help = "Avab relvakaupmehe kohe.",
		unlock_gun_trader_command_substitutes = "",

		-- game/gas_masks
		gas_debug_command = "gaasi_veaotsing",
		gas_debug_command_help = "Lülitab sisse/välja gaasi veaotsingu reziimi",
		gas_debug_command_substitutes = "",

		-- game/gps
		gps_target_command = "gps_sihtmärk",
		gps_target_command_help = "Määrab GPS-ile sihtmärgi.",
		gps_target_command_parameter_x = "x",
		gps_target_command_parameter_x_help = "Sihtmärgi X-koordinaat.",
		gps_target_command_parameter_y = "y",
		gps_target_command_parameter_y_help = "Sihtmärgi Y-koordinaat.",
		gps_target_command_substitutes = "sihtmärk",

		-- game/graphics
		toggle_noir_command = "lülita_noir",
		toggle_noir_command_help = "Lülitab sisse/välja mustvalge ekraani ja heliefektide reziimi.",
		toggle_noir_command_parameter_timecycle_id = "aegtsükli id",
		toggle_noir_command_parameter_timecycle_id_help = "Aegtsükli ID. Neid on ainult kaks.",
		toggle_noir_command_substitutes = "noir",

		-- game/gravity
		toggle_vehicle_gravity_command = "toggle_vehicle_gravity",
		toggle_vehicle_gravity_command_help = "Lülitab teatud mängija sõiduki raskusjõu sisse/välja.",
		toggle_vehicle_gravity_command_parameter_server_id = "serveri id",
		toggle_vehicle_gravity_command_parameter_server_id_help = "Mängija serveri ID, kelle sõiduki raskusjõudu soovite sisse/välja lülitada.",
		toggle_vehicle_gravity_command_substitutes = "vehicle_gravity, gravity",

		-- game/gravity_gun
		gravity_gun_command = "gravity_gun",
		gravity_gun_command_help = "Loo gravitatsioonipüstol endale.",
		gravity_gun_command_substitutes = "",

		-- game/halloween
		halloween_debug_command = "halloween_debug",
		halloween_debug_command_help = "Luba/Haruta halloweeni vigade sahkerdamist.",
		halloween_debug_command_substitutes = "",

		halloween_start_escape_room_command = "halloween_start_escape_room",
		halloween_start_escape_room_command_help = "Sunniviisiline halloweeni põgenemistoa käivitamine.",
		halloween_start_escape_room_command_substitutes = "",

		-- game/health
		revive_command = "revive",
		revive_command_help = "Elustage keegi surnust.",
		revive_command_parameter_server_id = "serveri ID",
		revive_command_parameter_server_id_help = "Mängija serveri ID, keda soovid taaselustada. Võid selle tühjaks jätta või määrata `0`, et valida iseennast. Võid ka teha `-1`, et taaselustada kõik.",
		revive_command_parameter_remove_injuries = "eemalda vigastused",
		revive_command_parameter_remove_injuries_help = "Määra mis tahes väärtus, välja arvatud `0` või `false`, et eemaldada kõik vigastused.",
		revive_command_substitutes = "",

		range_revive_command = "ulatuslik taaselustamine",
		range_revive_command_help = "Taaselusta kõik mängijad teatud ulatuses.",
		range_revive_command_parameter_distance = "kaugus",
		range_revive_command_parameter_distance_help = "Kaugus, mille raadiuses soovite mängijaid taaselustada (1 kuni 200 vahemikus).",
		range_revive_command_substitutes = "taaselusta_kaugus",

		death_timer_command = "surma_taimer",
		death_timer_command_help = "Ületa aeg surmarežiimis viibimiseks.",
		death_timer_command_parameter_time = "aeg",
		death_timer_command_parameter_time_help = "Aja aeg sekundites, mille soovid taimeri seadistada. Tühjendamiseks jäta tühi.",
		death_timer_command_substitutes = "",

		cpr_command = "klmi",
		cpr_command_help = "Teosta elustamist lähima NPC või mängija peal.",
		cpr_command_substitutes = "",

		-- game/hitmarkers
		hitmarkers_command = "löögimärgid",
		hitmarkers_command_help = "Lülita sisse/välja löögimärgid.",
		hitmarkers_command_substitutes = "",

		-- game/hud
		watermark_command = "vesimärk",
		watermark_command_help = "Lülita sisse/välja keskmise ülaosas veemärk.",
		watermark_command_substitutes = "",

		metrics_toggle_command = "mõõdikud_lülita",
		metrics_toggle_command_help = "Lülita sisse/välja keskmise ülaosas asuv mõõdikute kuvamine.",
		metrics_toggle_command_substitutes = "mõõdikud, mõõdikute_kuvamine",

		toggle_small_metrics_command = "näita_väikseid_mõõdikuid",
		toggle_small_metrics_command_help = "Lülitab sisse/välja väikese mõõdikute kuvamise (kui märgitud on /mõõdikud).",
		toggle_small_metrics_command_substitutes = "väikseid_mõõdikuid",

		toggle_phone_gps_command = "näita_telefoni_gps-i",
		toggle_phone_gps_command_help = "Lülitab sisse/välja kaardi kuvamise telefoni menüüs.",
		toggle_phone_gps_command_substitutes = "telefoni_gps",

		toggle_advanced_hud_command = "näita_edasijõudnud_hud-i",
		toggle_advanced_hud_command_help = "Lülitab sisse/välja edasijõudnud autode HUD-i. (RPM, käigud jne.)",
		toggle_advanced_hud_command_substitutes = "edasijõudnud_hud",

		toggle_hud_gauges_command = "vaheta_hud_lugemid",
		toggle_hud_gauges_command_help = "Lülitab sisse/välja HUD lugemid. (Kiirus ja RPM)",
		toggle_hud_gauges_command_substitutes = "lugemid",

		set_gauge_needle_command = "paku_lugemiku_nõela",
		set_gauge_needle_command_help = "Määrab HUD lugemiku nõela stiili. (Kiirus ja RPM)",
		set_gauge_needle_command_parameter_needle = "nõel",
		set_gauge_needle_command_parameter_needle_help = "Nõela stiil (noolekujuline/joon).",
		set_gauge_needle_command_substitutes = "nõela_seadmine_mõõdikule",

		-- game/hunting
		animal_debug_command = "loomade_debug",
		animal_debug_command_help = "Lülitab loomade debug'i sisse/välja.",
		animal_debug_command_substitutes = "",

		-- game/injuries
		inspect_command = "kontrolli",
		inspect_command_help = "Lähima mängija uurimine vigastuste osas.",
		inspect_command_substitutes = "",

		-- game/instances
		instance_create_command = "loomeksemplari",
		instance_create_command_help = "Loomine eksemplari.",
		instance_create_command_substitutes = "i_koo",

		instance_destroy_command = "hävitaeksemplari",
		instance_destroy_command_help = "Eksemplari hävitamine.",
		instance_destroy_command_parameter_instance_id = "eksemplari id",
		instance_destroy_command_parameter_instance_id_help = "Hävitava instantsi ID.",
		instance_destroy_command_substitutes = "i_hävita",

		instance_add_player_command = "instance_lisa_mängija",
		instance_add_player_command_help = "Lisage mängija instantsi.",
		instance_add_player_command_parameter_instance_id = "instantse ID-d",
		instance_add_player_command_parameter_instance_id_help = "Vajaliku instantsi ID.",
		instance_add_player_command_parameter_server_id = "serveri ID",
		instance_add_player_command_parameter_server_id_help = "Mängija serveri ID, keda soovite lisada instantsi. See parameeter on vabatahtlik ja see valib automaatselt teid ise, kui jätate selle tühjaks.",
		instance_add_player_command_substitutes = "i_lisa",

		instance_remove_player_command = "instance_remove_player",
		instance_remove_player_command_help = "Eemaldage mängija instantsist.",
		instance_remove_player_command_parameter_instance_id = "instance id",
		instance_remove_player_command_parameter_instance_id_help = "Instanti ID, millest soovite mängija eemaldada.",
		instance_remove_player_command_parameter_server_id = "serveri ID",
		instance_remove_player_command_parameter_server_id_help = "Mängija serveri ID, keda soovite instantsist eemaldada. See parameeter on valikuline ja jättes selle tühjaks valitakse automaatselt teie enda ID.",
		instance_remove_player_command_substitutes = "i_eemalda",

		instance_get_players_command = "instance_get_players",
		instance_get_players_command_help = "Saate kõik mängijad, kes on instantsis.",
		instance_get_players_command_parameter_instance_id = "instanti ID",
		instance_get_players_command_parameter_instance_id_help = "Instantsi ID, millest soovid mängijaid saada.",
		instance_get_players_command_substitutes = "i_players",

		quick_instance_command = "kiirinstants",
		quick_instance_command_help = "Loo instants ning lisa ennast ja nimekiri mängijatest sellele.",
		quick_instance_command_parameter_server_ids = "serveri ID-d",
		quick_instance_command_parameter_server_ids_help = "Serverite ID-de komaga eraldatud loend, mida soovid instantsile lisada.",
		quick_instance_command_substitutes = "",

		-- game/interiors
		interior_debug_command = "sisustuse_veaotsing",
		interior_debug_command_help = "Lülita sisse/välja sisemuse veateade.",
		interior_debug_command_substitutes = "",

		draw_interiors_command = "joonista_sisemused",
		draw_interiors_command_help = "Lülita sisse/välja sisemuste joonistamine.",
		draw_interiors_command_substitutes = "sisemused",

		draw_interior_portals_command = "joonista_sisemuse_portaalid",
		draw_interior_portals_command_help = "Lülita sisse/välja sisemuse portaalide joonistamine.",
		draw_interior_portals_command_substitutes = "sisemuse_portaalid, portaalid",

		random_interior_command = "juhuslik_sisemus",
		random_interior_command_help = "Teleporti juhuslikku sisemusse.",
		random_interior_command_substitutes = "",

		-- game/inventory
		trunk_command = "pagasnik",
		trunk_command_help = "Proovige juurdepääsu kõrval asuvale pagasiniku inventarile.",
		trunk_command_substitutes = "",

		wipe_ground_inventories_command = "pühkige_maapinnalt_inventarid",
		wipe_ground_inventories_command_help = "Pühkige maapinnalt inventarid.",
		wipe_ground_inventories_command_parameter_radius = "raadius",
		wipe_ground_inventories_command_parameter_radius_help = "Kustutamisraadius. Jäta see tühjaks, et valida automaatselt `5`. Kehtivad väärtused: `0` ja `-1`, mis valivad kõik inventarid.",
		wipe_ground_inventories_command_substitutes = "pühhiinventarid, pühkige_inventarid, pühkige_maapind",

		refresh_inventory_command = "värskenda_inventari",
		refresh_inventory_command_help = "Värskendab sunniviisiliselt määratud inventari.",
		refresh_inventory_command_parameter_inventory_name = "inventari nimi",
		refresh_inventory_command_parameter_inventory_name_help = "Inventar, mida soovid värskendada.",
		refresh_inventory_command_substitutes = "",

		toggle_big_inventory_command = "vaheta_suur_inventar",
		toggle_big_inventory_command_help = "Ajutiselt suurendab teie tegelase inventuuri ruume 250-le. (See on AJUTINE ja nullitakse uuesti sisse logides)",
		toggle_big_inventory_command_substitutes = "suur_inventar",

		item_lookup_command = "eseme_otsing",
		item_lookup_command_help = "Otsige eset selle ID järgi.",
		item_lookup_command_parameter_item_id = "eseme id",
		item_lookup_command_parameter_item_id_help = "Eseme ID, mida soovite otsida.",
		item_lookup_command_substitutes = "ese",

		clear_evidence_command = "clear_evidence",
		clear_evidence_command_help = "Kustutab määratud tõendite kapis olevad esemed. See toiming ei ole tagasipööratav!",
		clear_evidence_command_parameter_evidence_id = "tõendite ID",
		clear_evidence_command_parameter_evidence_id_help = "Tõendite kapi ID, mida soovite tühjendada.",
		clear_evidence_command_substitutes = "",

		-- game/invisibility
		invisibility_command = "nähtamatus",
		invisibility_command_help = "Lülitage nähtamatus sisse või välja.",
		invisibility_command_parameter_server_id = "serveri ID",
		invisibility_command_parameter_server_id_help = "Kui soovite lülitada kellegi teise nähtamatusse.",
		invisibility_command_substitutes = "inv, invis, nähtumatu",

		invisibility_mode_command = "invisibility_mode",
		invisibility_mode_command_help = "Määrake oma nähtamatusrežiim. Võib olla kas 'täis' (oled nähtav ainult vanemadministraatoritele+ oma nähtamatusrežiimil) või 'tavaline' (oled nähtav kõigile administraatoritele, kellel on piiluv).",
		invisibility_mode_command_parameter_mode = "režiim",
		invisibility_mode_command_parameter_mode_help = "Võib olla kas 'täis' täielikuks nähtamatuseks või 'tavaline' tavaliseks nähtavuseks.",
		invisibility_mode_command_substitutes = "",

		-- game/isolation
		isolate_player_command = "isoleeri_mängija",
		isolate_player_command_help = "Isoleerib mängija, keelates neil midagi teha.",
		isolate_player_command_parameter_server_id = "serveri id",
		isolate_player_command_parameter_server_id_help = "Sihtmängija.",
		isolate_player_command_substitutes = "isoleeri",

		-- game/items
		clear_map_command = "tühjenda_kaart",
		clear_map_command_help = "Kustutab kaardi salvestatud asukoha.",
		clear_map_command_parameter_slot = "pesa",
		clear_map_command_parameter_slot_help = "Inventari pesa, kus kaart asub.",
		clear_map_command_substitutes = "",

		-- game/jackpot
		jackpot_command = "õnnemäng",
		jackpot_command_help = "Lülita jackpoti kasutajaliides sisse/välja.",
		jackpot_command_substitutes = "",

		jackpot_take_fees_command = "võta_jackpoti_tasud",
		jackpot_take_fees_command_help = "Võta tasud kõigilt jackpoti laoruumidelt.",
		jackpot_take_fees_command_substitutes = "",

		-- game/jail
		check_jail_command = "kontrolli vanglat",
		check_jail_command_help = "Kontrolli, kui palju aega mängijal vanglas on.",
		check_jail_parameter_server_id = "serveri ID",
		check_jail_parameter_server_id_help = "Mängija serveri ID.",
		check_jail_command_substitutes = "",

		modify_jail_command = "muuda_vangla",
		modify_jail_command_help = "Muuda mängija vanglas veedetavat aega.",
		modify_jail_parameter_server_id = "serveri ID",
		modify_jail_parameter_server_id_help = "Mängija serveri ID.",
		modify_jail_parameter_operation = "tegevus",
		modify_jail_parameter_operation_help = "Tegevus, mida soovite teha. (Lisa või lahuta)",
		modify_jail_parameter_amount = "kogus",
		modify_jail_parameter_amount_help = "Aeg, mida soovite lisada või eemaldada minutites. Ei saa olla rohkem kui 5 minutit korraga.",
		modify_jail_command_substitutes = "mod_jail",

		-- game/lag
		fake_lag_command = "vale_lag",
		fake_lag_command_help = "Loo vale võrkude aeglustumine.",
		fake_lag_command_parameter_fps = "kaadrisagedus",
		fake_lag_command_parameter_fps_help = "Sihtkaadrisagedus (>= 1).",
		fake_lag_command_substitutes = "lagi",

		-- game/locate
		locate_entity_command = "asukoht",
		locate_entity_command_help = "Leia kindel objekt kaardilt.",
		locate_entity_command_parameter_filter = "filter",
		locate_entity_command_parameter_filter_help = "Millise filtriga objekti leida (id:12345, tekst:90FMK072, jne.)",
		locate_entity_command_substitutes = "le",

		-- game/logs
		logs_command = "logid",
		logs_command_help = "Näitab mõne mängija viimaseid serveri logisid.",
		logs_command_parameter_server_id = "server'i id",
		logs_command_parameter_server_id_help = "Mängija serveri id.",
		logs_command_substitutes = "",

		-- game/loot
		loot_debug_command = "saak_debug",
		loot_debug_command_help = "Lülita saagi silumine sisse/välja.",
		loot_debug_command_substitutes = "",

		-- game/lottery
		lottery_command = "loterii",
		lottery_command_help = "Saada info loterii hetkeseisu kohta.",
		lottery_command_substitutes = "",

		claim_lottery_command = "võida_loteriis",
		claim_lottery_command_help = "Võida oma loterii võidud.",
		claim_lottery_command_substitutes = "",

		roll_lottery_command = "veereta_loteriid",
		roll_lottery_command_help = "Veereta loterii käsitsi.",
		roll_lottery_command_substitutes = "",

		-- game/lucky_wheel
		set_podium_vehicle_command = "määra_poodiumi_sõiduk",
		set_podium_vehicle_command_help = "Määra võidetav poodiumi sõiduk kasiinos.",
		set_podium_vehicle_command_parameter_model_name = "mudeli nimi",
		set_podium_vehicle_command_parameter_model_name_help = "Sõiduki mudeli nimi, milleks soovite selle muuta.",
		set_podium_vehicle_command_substitutes = "",

		-- game/magazines
		refresh_magazines_command = "värskenda_jaamaplaate",
		refresh_magazines_command_help = "Värskenda jaamaplaate, kui andmebaasis on muudatusi.",
		refresh_magazines_command_substitutes = "",

		-- game/mdt
		mdt_command = "MDT",
		mdt_command_help = "Lülita MDT kasutajaliides sisse või välja.",
		mdt_command_substitutes = "",

		-- game/mechanics
		check_vehicle_upgrades_command = "check_vehicle_upgrades",
		check_vehicle_upgrades_command_help = "Kontrollib, kas läheduses olev sõiduk on mootori 5 uuendusega.",
		check_vehicle_upgrades_command_substitutes = "check_upgrades, upgrades",

		-- game/meow
		meow_command = "miisu",
		meow_command_help = "Miisu.",
		meow_command_substitutes = "",

		maxwell_debug_command = "maxwell_debug",
		maxwell_debug_command_help = "Silumine: Maxwelli asukoht.",
		maxwell_debug_command_substitutes = "",

		-- game/mining
		mining_debug_command = "mining_debug",
		mining_debug_command_help = "Lülita kaevandamise tõrkeotsing sisse või välja.",
		mining_debug_command_substitutes = "",

		-- game/miscellaneous
		-- these two commands (language & languages) should remain the same on all languages in case someone joins in with a language they don't know.
		-- you can change the _help parts though if you'd like, not the "language code" though.
		language_command = "language",
		language_command_help = "Sea oma eelistatud keel. See seade salvestub tuleviku sessioonide jaoks. Muutus jõustub kohe.",
		language_command_parameter_language = "keelekood",
		language_command_parameter_language_help = "Keelekood, mida soovite kasutada. Oma keele hetkeseisu ja kõigi teiste saadaolevate keelte nägemiseks sisestage käsk /languages. Vaikimisi keele korral jätke see argument tühjaks.",
		language_command_substitutes = "keel",

		languages_command = "languages",
		languages_command_help = "Vaadake oma praegust keeleseisu ning ka kõiki teisi saadaolevaid keeli.",
		languages_command_substitutes = "keeled",

		ping_command = "ping",
		ping_command_help = "Saad oma hetkepingi serverisse.",
		ping_command_substitutes = "",

		ooc_command = "ooc",
		ooc_command_help = "Edasta väljaspool rollimängu sõnum tervele serverile.",
		ooc_command_parameter_message = "ooc sõnum",
		ooc_command_parameter_message_help = "Sõnum, mida soovid saata.",
		ooc_command_substitutes = "",

		ooc_local_command = "ooc_kohalik",
		ooc_local_command_help = "Edasta väljaspool rollimängu sõnum lähedalolevatele mängijatele.",
		ooc_local_command_parameter_message = "ooc sõnum",
		ooc_local_command_parameter_message_help = "Sõnum, mida soovid saata.",
		ooc_local_command_substitutes = "kohalik_ooc, kooc, kohand_ooc",

		ooc_on_command = "luba_ooc",
		ooc_on_command_help = "Lülitab kohaliku OOC vestluse sisse, kui see on välja lülitatud.",
		ooc_on_command_substitutes = "",

		ooc_off_command = "keela_ooc",
		ooc_off_command_help = "Lülitab kohaliku OOC vestluse välja, kui see on sisse lülitatud.",
		ooc_off_command_substitutes = "",

		copy_license_command = "kopeeri_litsents",
		copy_license_command_help = "Kopeerib sinu enda Rockstar' litsentsitunnistuse lõikelauale. (Kasutatakse personali poolt sinu tuvastamiseks)",
		copy_license_command_substitutes = "",

		clear_chat_command = "puhasta_vestlus",
		clear_chat_command_help = "Puhastab vestluse.",
		clear_chat_command_substitutes = "cls, clear",

		clear_chat_all_command = "puhasta_chat",
		clear_chat_all_command_help = "Puhasta vestlus kõigile.",
		clear_chat_all_command_substitutes = "clsall, clearall",

		mute_command = "vaigista",
		mute_command_help = "Vaigista mängija OOC vestluses ja raporteerimise käskluses.",
		mute_command_parameter_server_id = "serveri ID",
		mute_command_parameter_server_id_help = "Mängija serveri ID, keda soovite vaigistada.",
		mute_command_parameter_expire = "aegumine",
		mute_command_parameter_expire_help = "Mängija vaigistamise pikkus. Saate jätta selle tühjaks, panna `0` või `false` määramaks piiramatu vaigistus. Aja pikkuseks saate kasutada w/p/h. (näide: `3d2h` -> 3 päeva, 2 tundi)",
		mute_command_parameter_reason = "põhjus",
		mute_command_parameter_reason_help = "Mängija vaigistamise põhjus.",
		mute_command_substitutes = "",

		unmute_command = "taasta",
		unmute_command_help = "Taasta mängija OOC ja teavituse käsklustelt.",
		unmute_command_parameter_server_id = "serveri ID",
		unmute_command_parameter_server_id_help = "Mängija serveri ID, keda soovite taastada.",
		unmute_command_substitutes = "",

		use_measurement_command = "kasuta_mõõtühikut",
		use_measurement_command_help = "Asendage lokaliseeritud eelistatud mõõtühikusüsteem.",
		use_measurement_command_parameter_measurement = "mõõtühik",
		use_measurement_command_parameter_measurement_help = "Mõõtühik, mida soovite kasutada. Kehtivad väärtused on `Imperial` ja `Metric`. Selle parameetri võite jätta tühjaks või lisada sobimatu väärtuse, et kasutada vaikeväärtust.",
		use_measurement_command_substitutes = "mõõtühik, mõõt",

		no_copyright_command = "autoriõiguseta",
		no_copyright_command_help = "See käsk keelab kõik potentsiaalselt autoriõigustega kaitstud helid raamistikust, kui see on lubatud.",
		no_copyright_command_substitutes = "",

		picture_command = "pilt",
		picture_command_help = "Loo muudetava pildiga ese",
		picture_command_parameter_url = "url",
		picture_command_parameter_url_help = "Pildi URL",
		picture_command_parameter_description = "kirjeldus",
		picture_command_parameter_description_help = "Pildi kirjeldus",
		picture_command_substitutes = "",

		tps_command = "tps",
		tps_command_help = "Võta serveri hetkeline TPS.",
		tps_command_substitutes = "",

		uptime_command = "uptime",
		uptime_command_help = "Kontrolli serveri tööaega.",
		uptime_command_substitutes = "",

		auto_run_command = "automaatjooks",
		auto_run_command_help = "Seab automaatjooksu klahvipuute.",
		auto_run_command_parameter_control_id = "kontrolli id",
		auto_run_command_parameter_control_id_help = "Kontrolli ID, mille soovite siduda automaatse jooksuga.",
		auto_run_command_substitutes = "",

		walk_forwards_command = "käi_edasi",
		walk_forwards_command_help = "Paneb sind või teise mängija automaatselt edasi liikuma (proovides takistusi vältida).",
		walk_forwards_command_parameter_server_id = "serveri id",
		walk_forwards_command_parameter_server_id_help = "Mängija serveri id, keda soovite käima panna.",
		walk_forwards_command_parameter_sprint = "sprint",
		walk_forwards_command_parameter_sprint_help = "Kas mängija peaks jooksma edasi liikudes. (Vaikimisi: false)",
		walk_forwards_command_substitutes = "",

		info_command = "Failed to automatically generate translation.",
		info_command_help = "Failed to automatically generate translation.",
		info_command_substitutes = "",

		whois_command = "keson",
		whois_command_help = "Leia mängija nime või nimeosa järgi.",
		whois_command_parameter_search = "otsi",
		whois_command_parameter_search_help = "Mängija nimi või osa sellest.",
		whois_command_substitutes = "",

		-- game/money
		cash_command = "raha",
		cash_command_help = "Näita sinu raha jääki.",
		cash_command_substitutes = "",

		bank_command = "pank",
		bank_command_help = "Näita sinu pangakonto jääki.",
		bank_command_substitutes = "",

		give_cash_command = "anna_raha",
		give_cash_command_help = "Anna teisele mängijale kindel summa raha.",
		give_cash_command_parameter_server_id = "server id",
		give_cash_command_parameter_server_id_help = "Mängija serveri id, kellele sa tahad raha anda.",
		give_cash_command_parameter_amount = "summa",
		give_cash_command_parameter_amount_help = "Summa raha, mida soovite mängijale anda.",
		give_cash_command_substitutes = "",

		-- game/notepads
		notepad_command = "märkmik",
		notepad_command_help = "Lülita märkmik sisse/välja.",
		notepad_command_substitutes = "",

		notepad_debug_command = "märkmiku_debug",
		notepad_debug_command_help = "Kuvab kõik läheduses olevad märkmiku ID-d.",
		notepad_debug_command_substitutes = "",

		notepad_info_command = "märkmiku_info",
		notepad_info_command_help = "Annab teavet konkreetse märkmiku kohta.",
		notepad_info_command_parameter_notepad_id = "märkmiku ID",
		notepad_info_command_parameter_notepad_id_help = "Märkmiku ID, mille kohta soovite teavet saada.",
		notepad_info_command_substitutes = "",

		wipe_notepads_command = "kustuta_märkmikud",
		wipe_notepads_command_help = "Kustutab märkmikud teatud raadiuses.",
		wipe_notepads_command_parameter_radius = "raadius",
		wipe_notepads_command_parameter_radius_help = "Raadius, milles soovite märkmikke kustutada (maksimaalne = 100).",
		wipe_notepads_command_substitutes = "",

		sign_notepad_command = "allkirjasta_märkmik",
		sign_notepad_command_help = "Allkirjastab märkmiku. (Paneb teie nime põhja ja keelab muutmise)",
		sign_notepad_command_parameter_slot = "pessa",
		sign_notepad_command_parameter_slot_help = "Inventari pesa, kus märkmik asub.",
		sign_notepad_command_substitutes = "allkiri",

		-- game/notices
		add_notice_command = "lisa_märkus",
		add_notice_command_help = "Lisab hõljuva sõnumi teie praegusele positsioonile.",
		add_notice_command_parameter_message = "sõnum",
		add_notice_command_parameter_message_help = "Sõnum, mida soovite lisada.",
		add_notice_command_substitutes = "",

		remove_notice_command = "eemalda_märkus",
		remove_notice_command_help = "Eemaldab kindla sõnumi, mis on lisatud /lisa_märkus kaudu.",
		remove_notice_command_parameter_message_id = "sõnumi ID",
		remove_notice_command_parameter_message_id_help = "Sõnumi ID, mida soovite eemaldada.",
		remove_notice_command_substitutes = "",

		-- game/npc_watch
		npc_watch_command = "npc_watch",
		npc_watch_command_help = "Vaata juhuslikku NPC-t nende igapäevastes tegevustes.",
		npc_watch_command_parameter_in_vehicle = "sõidukis",
		npc_watch_command_parameter_in_vehicle_help = "NPC peab olema sõidukis. (vaikimisi ei)",
		npc_watch_command_substitutes = "",

		-- game/objects
		frozen_objects_scan_command = "frozen_objects_scan",
		frozen_objects_scan_command_help = "Otsi jäätunud objekte mudeli koodi järgi ja salvesta need serveri faili.",
		frozen_objects_scan_command_parameter_model_name = "mudeli nimi",
		frozen_objects_scan_command_parameter_model_name_help = "Objekti mudeli nimi, mida soovite otsida.",
		frozen_objects_scan_command_substitutes = "külmunud_objektid",

		-- game/orbitcam
		orbitcam_command = "orbitcam",
		orbitcam_command_help = "Lülita orbitkaamera sisse või välja.",
		orbitcam_command_substitutes = "orbit",

		-- game/overview
		overview_command = "ülevaade",
		overview_command_help = "Lülita ülevaate kasutajaliides sisse või välja. Ülevaate kasutajaliides on OOC interaktsioonimenüü, infokeskus ja andmete vaataja.",
		overview_command_substitutes = "",

		-- game/oxy
		oxy_tutorial_command = "oxy_juhend",
		oxy_tutorial_command_help = "Mängi järgmisel korral, kui käivitad oksi-tutorjali.",
		oxy_tutorial_command_substitutes = "",

		-- game/panel
		panel_command = "paneel",
		panel_command_help = "Näitab miniatuurset administraatori paneeli, mis võimaldab vaadata märkmeid ja lisada uusi märkmeid mängijate kohta.",
		panel_command_parameter_server_id = "serveri id",
		panel_command_parameter_server_id_help = "Mängija serveri-ID, kelle paneeli soovite näha (peab olema veebis või hiljuti lahti ühendatud).",
		panel_command_substitutes = "",

		-- game/ped_messages
		me_command = "mina",
		me_command_help = "Jutusta, mida sinu tegelane teeb.",
		me_command_parameter_message = "sõnum",
		me_command_parameter_message_help = "Sõnum, mida soovid saata, et jutustada oma tegevustest.",
		me_command_substitutes = "",

		do_command = "teeb",
		do_command_help = "Parema ülevaate saamiseks rollimängustseenist.",
		do_command_parameter_message = "sõnum",
		do_command_parameter_message_help = "Sõnum, mida soovid saata, et aidata visualiseerida rollimängustseeni.",
		do_command_substitutes = "",

		description_command = "kirjeldus",
		description_command_help = "Lisa oma tegelasele kirjeldus tema tunnuste kohta.",
		description_command_parameter_message = "sõnum",
		description_command_parameter_message_help = "Sõnum, mida soovite oma NPC-le lisada.",
		description_command_substitutes = "",

		attempt_command = "katse",
		attempt_command_help = "Proovige midagi läbi 50% tõenäosuse edukalt.",
		attempt_command_parameter_message = "sõnum",
		attempt_command_parameter_message_help = "Sõnum, mis kirjeldab seda, mida proovite teha.",
		attempt_command_substitutes = "",

		dice_command = "täringud",
		dice_command_help = "Visake standardseid täringuid.",
		dice_command_substitutes = "",

		roll_command = "valik",
		roll_command_help = "Täpsem ja keerulisem suvalise numbri generaator, kohandatavate seadistustega.",
		roll_command_parameter_rolls = "veeretused",
		roll_command_parameter_rolls_help = "Veeretuste arv, mida soovite teha. Olete piiratud 20-ga.",
		roll_command_parameter_max = "maksimaalne",
		roll_command_parameter_max_help = "Kõrgeim väärtus, mida saate ühe veeretusega saada. Kõrgeim väärtus on siin 100 000.",
		roll_command_substitutes = "",

		rock_paper_scissors_command = "kivi_paber_käärid",
		rock_paper_scissors_command_help = "Mängi kivi paber kääre kellegagi.",
		rock_paper_scissors_command_parameter_what = "mida",
		rock_paper_scissors_command_parameter_what_help = "Mida soovid mängida. Kehtivad väärtused on `kivi`, `paber` ja `käärid`. (Juhul kui jätad tühjaks, siis juhuslik valik)",
		rock_paper_scissors_command_substitutes = "rpk",

		card_command = "kaart",
		card_command_help = "Tõmmake juhuslik kaart.",
		card_command_substitutes = "",

		ped_messages_command = "ped_sõnumid",
		ped_messages_command_help = "Lülitage sisse/välja NPC sõnumid vestluses.",
		ped_messages_command_substitutes = "",

		-- game/ped_spawn
		ped_spawn_command = "ped_spawn",
		ped_spawn_command_help = "Loob pedi.",
		ped_spawn_command_parameter_model = "mudel",
		ped_spawn_command_parameter_model_help = "Mudel, mida soovite luua.",
		ped_spawn_command_parameter_weapon = "relv",
		ped_spawn_command_parameter_weapon_help = "Millist relva peaks pedi käes hoidma (valikuline, \"false\" selle vahele jätmiseks).",
		ped_spawn_command_parameter_invincible = "võitmatu",
		ped_spawn_command_parameter_invincible_help = "Kas NPC peaks olema võitmatu. (vaikimisi: ei)",
		ped_spawn_command_substitutes = "",

		ped_task_command = "pedi_töö",
		ped_task_command_help = "Määrab teie loodud jalakäijatele ülesande.",
		ped_task_command_parameter_task = "ülesanne",
		ped_task_command_parameter_task_help = "Ülesanne, mida loodud jalakäijad peaksid täitma.",
		ped_task_command_parameter_target = "sihtmärk",
		ped_task_command_parameter_target_help = "Serveri-ID, mida jalakäijad saavad sihtida (valikuline).",
		ped_task_command_substitutes = "",

		ped_emote_command = "jalakäija_emotsioon",
		ped_emote_command_help = "Annab teie loodud jalakäijatele emotsiooni.",
		ped_emote_command_parameter_emote = "emotsioon",
		ped_emote_command_parameter_emote_help = "Emotsioon, mida loodud jalakäijad peaksid kuvama.",
		ped_emote_command_substitutes = "",

		ped_remove_command = "eemalda_ped",
		ped_remove_command_help = "Eemaldab kõik teie loodud pedid.",
		ped_remove_command_substitutes = "",

		list_ped_emotes_command = "loetle_ped_emotsioonid",
		list_ped_emotes_command_help = "Loetleb kõik saadaval olevad pedi emotsioonid.",
		list_ped_emotes_command_substitutes = "",

		list_ped_tasks_command = "loetle_ped_tööd",
		list_ped_tasks_command_help = "Loetleb kõik saadaval olevad pedi tööd.",
		list_ped_tasks_command_substitutes = "",

		-- game/ped_steal
		ped_steal_command = "varasta_ped",
		ped_steal_command_help = "Varasta kellegi ped.",
		ped_steal_command_parameter_server_id = "serveri id",
		ped_steal_command_parameter_server_id_help = "Mängija serveri id.",
		ped_steal_command_substitutes = "varasta_ped",

		-- game/ped_takeover
		takeover_ped_command = "valluta_ped",
		takeover_ped_command_help = "Võimaldab sul võtta üle teatud pedi kontrolli.",
		takeover_ped_command_parameter_network_id = "võrgu id",
		takeover_ped_command_parameter_network_id_help = "Pedi võrgu id, mida soovid üle võtta.",
		takeover_ped_command_substitutes = "võtaüle",

		-- game/ped_tasks
		ped_debug_command = "ped_debug",
		ped_debug_command_help = "Pedi andmete tõrkeotsing.",
		ped_debug_command_parameter_network_id = "võrgu id",
		ped_debug_command_parameter_network_id_help = "Pedi võrgu id.",
		ped_debug_command_substitutes = "",

		-- game/phone_numbers
		custom_phone_number_command = "oma_telefoninumbri_muutmine",
		custom_phone_number_command_help = "Muutke oma telefoninumbrit.",
		custom_phone_number_command_parameter_phone_number = "telefoninumber",
		custom_phone_number_command_parameter_phone_number_help = "Telefoninumber, mille soovite muuta. Veenduge, et see järgiks formaati XXX-XXXX.",
		custom_phone_number_command_substitutes = "oma_number",

		phone_number_available_command = "telefoninumber_saadaval",
		phone_number_available_command_help = "Kontrollige, kas telefoninumber on saadaval.",
		phone_number_available_command_parameter_phone_number = "telefoninumber",
		phone_number_available_command_parameter_phone_number_help = "Telefoninumber, mida soovite kontrollida, kas see on saadaval. Veenduge, et see järgib formaati XXX-XXXX.",
		phone_number_available_command_substitutes = "number_available",

		share_phone_number_command = "jaga_telefoninumbrit",
		share_phone_number_command_help = "Jagab sinu telefoninumbrit kõigi enda ümber (< 1.5m).",
		share_phone_number_command_substitutes = "jaga_number",

		-- game/plants
		plants_debug_command = "plants_debug",
		plants_debug_command_help = "Silu kõiki taimi.",
		plants_debug_command_substitutes = "",

		-- game/player_control
		drive_for_command = "sõida_kelleski_teise_eest",
		drive_for_command_help = "Võtke mängija auto üle ja sõitke nende eest.",
		drive_for_command_parameter_server_id = "serveri id",
		drive_for_command_parameter_server_id_help = "Mängija serveri ID, kelle eest soovite sõita.",
		drive_for_command_substitutes = "",

		-- game/player_scales
		set_player_scale_command = "määra_mängija_mõõt",
		set_player_scale_command_help = "Määra mängija mõõtmed.",
		set_player_scale_command_parameter_scale = "mõõt",
		set_player_scale_command_parameter_scale_help = "Mõõdud, mida soovite määrata.",
		set_player_scale_command_parameter_server_id = "serveri ID",
		set_player_scale_command_parameter_server_id_help = "Serveri ID, mille mõõtmeid soovite määrata. Jätke see tühjaks, et valida automaatselt iseenda.",
		set_player_scale_command_substitutes = "mängija_mõõt, määra_mängija_suurus, mängija_suurus",

		-- game/player_stats
		player_stats_command = "mängija_staatus",
		player_stats_command_help = "Lülita sisse või välja funktsioon ‘mängija staatus’.",
		player_stats_command_parameter_render_range = "nähtav kaugus",
		player_stats_command_parameter_render_range_help = "Muuda nähtava kauguse ulatust mängijatele. Vaikeväärtus on 200.",
		player_stats_command_substitutes = "",

		-- game/pole_dancing
		pole_dancing_offset_command = "onna tantsu nihke",
		pole_dancing_offset_command_help = "Lülita sisse või välja tõrkeotsimise tööriist ‘onna tantsu’ jaoks.",
		pole_dancing_offset_command_parameter_model_name = "mudelinimi",
		pole_dancing_offset_command_parameter_model_name_help = "Mudelinimi, mille kallal soovid tööriista kasutada.",
		pole_dancing_offset_command_substitutes = "",

		-- game/properties
		properties_debug_command = "omadused_debug",
		properties_debug_command_help = "Lülita sisse/välja omaduste veatõrje.",
		properties_debug_command_substitutes = "omadused",

		property_locate_command = "property_locate",
		property_locate_command_help = "Leia kinnisvara.",
		property_locate_command_parameter_address = "aadress",
		property_locate_command_parameter_address_help = "Kinnisvara aadress, mida soovid leida.",
		property_locate_command_substitutes = "leia",

		-- game/prop_hide
		prop_hide_command = "vara_peitmine",
		prop_hide_command_help = "Lülita vara peitmine sisse või välja.",
		prop_hide_command_substitutes = "",

		-- game/props
		props_manage_command = "asjade_halamine",
		props_manage_command_help = "Halda läheduses olevaid esemeid.",
		props_manage_command_substitutes = "halda_asju, la",

		spawn_prop_command = "loo_eseme",
		spawn_prop_command_help = "Loo ese.",
		spawn_prop_command_parameter_model_hash = "mudel",
		spawn_prop_command_parameter_model_hash_help = "Mudel, mille soovid luua.",
		spawn_prop_command_parameter_network = "võrk",
		spawn_prop_command_parameter_network_help = "Kas soovite võrku vastavust vea propile? Soovitatav on see lubada ainult propide puhul, mis peaksid saama liikuda. Kuid mitte kõik propid ei ole liigutatavad.",
		spawn_prop_command_parameter_restricted = "piiratud",
		spawn_prop_command_parameter_restricted_help = "Luba selle propi korjamist ainult super administraatoritel.",
		spawn_prop_command_parameter_culling = "kaugus",
		spawn_prop_command_parameter_culling_help = "Kaugus, mille raadiuses propi saab genereerida/kõrvaldada. Vaikimisi raadius on 200m, suurendage seda ainult suurte propide jaoks, mida peaks kaugelt nägema.",
		spawn_prop_command_substitutes = "",

		props_debug_command = "props_debug",
		props_debug_command_help = "Dubleerib  kõiki teie ümber olevaid detaile.",
		props_debug_command_substitutes = "",

		delete_prop_command = "delete_prop",
		delete_prop_command_help = "Kustutab detaili kindla detaili ID-ga.",
		delete_prop_command_parameter_prop_id = "detaili ID",
		delete_prop_command_parameter_prop_id_help = "Eemaldatava objekti ID.",
		delete_prop_command_substitutes = "",

		wipe_props_command = "puhasta_objektid",
		wipe_props_command_help = "Puhastab piirkonda lähedalolevad objektid.",
		wipe_props_command_parameter_radius = "raadius",
		wipe_props_command_parameter_radius_help = "Puhastuse raadius (1-250).",
		wipe_props_command_substitutes = "",

		-- game/racing
		race_leave_command = "võidujooks_lahe",
		race_leave_command_help = "Lahku võistlusest, milles osaled.",
		race_leave_command_substitutes = "võidujooks_kustuta",

		race_share_command = "võidujooks_jagamine",
		race_share_command_help = "Jaga võidusõidurada teise mängijaga.",
		race_share_command_parameter_server_id = "serveri ID",
		race_share_command_parameter_server_id_help = "Mängija serveri ID, kellega soovid rada jagada.",
		race_share_command_parameter_track_name = "raja nimi",
		race_share_command_parameter_track_name_help = "Raja nimi, mida soovid jagada.",
		race_share_command_substitutes = "",

		race_record_command = "võidusõidu_salvestus",
		race_record_command_help = "Salvesta võidusõidu.",
		race_record_command_substitutes = "",

		race_save_command = "võidusõidu_salvesta",
		race_save_command_help = "Salvesta võidusõidu.",
		race_save_command_parameter_track_name = "raja nimi",
		race_save_command_parameter_track_name_help = "Nimi, millega soovid seda salvestada.",
		race_save_command_parameter_track_type = "raja tüüp",
		race_save_command_parameter_track_type_help = "Võidusõidu raja tüüp.",
		race_save_command_substitutes = "",

		race_delete_command = "võidusõidu_kustuta",
		race_delete_command_help = "Kustuta võidusõidu.",
		race_delete_command_parameter_track_name = "rajanimi",
		race_delete_command_parameter_track_name_help = "Raja nimi, mida soovite kustutada.",
		race_delete_command_substitutes = "",

		race_list_command = "race_list",
		race_list_command_help = "Näita kõiki salvestatud võistlusi.",
		race_list_command_substitutes = "",

		race_load_command = "race_load",
		race_load_command_help = "Laadi võistlus.",
		race_load_command_parameter_track_name = "rajanimi",
		race_load_command_parameter_track_name_help = "Raja nimi, mida soovite laadida.",
		race_load_command_substitutes = "",

		race_start_command = "race_start",
		race_start_command_help = "Alusta võidusõitu.",
		race_start_command_parameter_amount = "summa",
		race_start_command_parameter_amount_help = "Võistlusele sisenemise maksumus.",
		race_start_command_parameter_start_delay = "alguse viivitus",
		race_start_command_parameter_start_delay_help = "Alguse viivitus sekundites.",
		race_start_command_parameter_laps = "ringid",
		race_start_command_parameter_laps_help = "Ringide arv.",
		race_start_command_substitutes = "",

		race_cancel_command = "võistlus_tühistamine",
		race_cancel_command_help = "Tühista võistlus.",
		race_cancel_command_substitutes = "",

		race_checkpoints_command = "kontrollpunktid_võistlus",
		race_checkpoints_command_help = "Lülita sisse/välja kontrollpunktid.",
		race_checkpoints_command_substitutes = "",

		race_sounds_command = "võidusõidu_helid",
		race_sounds_command_help = "Lülita helid sisse/välja.",
		race_sounds_command_substitutes = "",

		-- game/radio
		radio_command = "raadio",
		radio_command_help = "Lülita raadio liides sisse/välja.",
		radio_command_substitutes = "",

		radio_debug_command = "raadio_debug",
		radio_debug_command_help = "Lülita sisse/välja raadio tõrkeotsing.",
		radio_debug_command_substitutes = "",

		frequency_command = "sagedus",
		frequency_command_help = "Määra, millise sagedusega raadio töötab.",
		frequency_command_parameter_frequency = "sagedus",
		frequency_command_parameter_frequency_help = "Sagedus, kuhu soovite minna.",
		frequency_command_substitutes = "sagedus",

		force_frequency_command = "sunni_sagedus",
		force_frequency_command_help = "Liitu raadiosagedusega ilma raadio või teenistuseta olles.",
		force_frequency_command_parameter_frequency = "sagedus",
		force_frequency_command_parameter_frequency_help = "Sagedus, kuhu soovite minna.",
		force_frequency_command_substitutes = "",

		random_frequency_command = "juhuslik_sagedus",
		random_frequency_command_help = "Seadistab su raadio juhuslikule sagedusele.",
		random_frequency_command_substitutes = "juhuslik_sagedus, jsagedus",

		radio_sounds_command = "raadio_helid",
		radio_sounds_command_help = "Reguleerib raadio heliefektide helitugevust.",
		radio_sounds_command_parameter_volume = "helitugevuse tase",
		radio_sounds_command_parameter_volume_help = "Raadio heliefektide helitugevuse tase. Väärtus peab olema vahemikus 0 kuni 1. Vaikimisi väärtus on 0,1. Jätmisel tühjaks tagastatakse teie praegune helitugevuse tase.",
		radio_sounds_command_substitutes = "",

		radio_volume_command = "raadio_helitugevus",
		radio_volume_command_help = "Reguleeri raadio helitugevust.",
		radio_volume_command_parameter_volume = "helitugevuse tase",
		radio_volume_command_parameter_volume_help = "Failed to automatically generate translation.",
		radio_volume_command_substitutes = "Failed to automatically generate translation.",

		-- game/reflect
		reflect_damage_command = "peegelda_kahju",
		reflect_damage_command_help = "Failed to automatically generate translation.",
		reflect_damage_command_substitutes = "peegel",

		-- game/relationships
		relationships_debug_command = "relationships_debug",
		relationships_debug_command_help = "Lülita sisse/välja tegelaste suhete silumine.",
		relationships_debug_command_substitutes = "",

		-- game/reskin
		reskin_command = "reskin",
		reskin_command_help = "Käivita mängija väljanägemise muutmine.",
		reskin_command_parameter_server_id = "server'i id",
		reskin_command_parameter_server_id_help = "Mängija server'i ID, kellele soovite nahamuutust käivitada. Jätke tühi, et valida automaatselt iseenda.",
		reskin_command_substitutes = "",

		redeem_reskin_command = "vaheta_nahka",
		redeem_reskin_command_help = "Vaheta ostetud nahakomplekti.",
		redeem_reskin_command_substitutes = "",

		-- game/riot_mode
		toggle_riot_mode_command = "rahutuste_režiim",
		toggle_riot_mode_command_help = "Käivitab/rakendab rahutuste režiimi kõigil mängijatel.",
		toggle_riot_mode_command_substitutes = "",

		add_riot_player_command = "lisa_rahu_mängijale",
		add_riot_player_command_help = "Lisa mängija 'rahutuste nimekirja', kus tema vastu pöörduvad ümbritsevad tavalised tehisintellektiga jalakäijad.",
		add_riot_player_command_parameter_server_id = "serveri ID",
		add_riot_player_command_parameter_server_id_help = "Mängija serveri ID, keda soovite lisada. Jätke see tühi, et ise valida.",
		add_riot_player_command_substitutes = "",

		remove_riot_player_command = "eemalda_mässaja_mängija",
		remove_riot_player_command_help = "Eemaldage mängija 'mässaja nimekirjast'.",
		remove_riot_player_command_parameter_server_id = "serveri ID",
		remove_riot_player_command_parameter_server_id_help = "Mängija serveri ID, keda soovite eemaldada. Jätke see tühi, et ise valida.",
		remove_riot_player_command_substitutes = "",

		-- game/rooms
		rooms_debug_command = "tubade_debugimine",
		rooms_debug_command_help = "Debugib kõik ruumid.",
		rooms_debug_command_substitutes = "",

		-- game/rules
		explain_rule_command = "selgita_reeglit",
		explain_rule_command_help = "Näita teatud reegli selgitust.",
		explain_rule_command_parameter_number = "number",
		explain_rule_command_parameter_number_help = "Reegli number (näiteks: 1.1)",
		explain_rule_command_substitutes = "reegel",

		rules_command = "reeglid",
		rules_command_help = "Ava kogukonna reeglid oma veebilehitsejas.",
		rules_command_substitutes = "",

		-- game/savings_accounts
		savings_accounts_command = "Failed to automatically generate translation.",
		savings_accounts_command_help = "Failed to automatically generate translation.",
		savings_accounts_command_substitutes = "Failed to automatically generate translation.",

		-- game/scoreboard
		metagame_command = "metamäng",
		metagame_command_help = "Lülitab sisse või välja pideva mängijate serveri ID jälgimise.",
		metagame_command_substitutes = "meta, m",

		hide_server_id_command = "peida_serveri_id",
		hide_server_id_command_help = "Peidab või näitab sinu serveri ID-d su peal.",
		hide_server_id_command_substitutes = "vidin",

		-- game/security_cameras
		security_cameras_command = "turvakaamerad",
		security_cameras_command_help = "Lülitab sisse või välja turvakaamerad.",
		security_cameras_command_substitutes = "turvad, turvikaamerad, turvakaamera, turvakaamerad",

		security_cameras_scan_command = "turvakaamerad_scan",
		security_cameras_scan_command_help = "Tagastab kõik teadaolevad turvakaamerate objektid ja salvestab need tekstifaili.",
		security_cameras_scan_command_substitutes = "skannimine, kameras_skannimine, skannakamerasid",

		security_cameras_health_command = "turvakaamerate_tervis",
		security_cameras_health_command_help = "Lülita sisse ja välja turvakaamerate tervise silmuse tööriist.",
		security_cameras_health_command_substitutes = "kaamerate_tervishoid",

		-- game/shield
		shield_command = "kilp",
		shield_command_help = "Lülita balistiline kilp sisse ja välja.",
		shield_command_substitutes = "",

		-- game/shockwaves
		create_shockwave_command = "loo_shokklaine",
		create_shockwave_command_help = "Loo shokklaine oma praegusel asukohal.",
		create_shockwave_command_parameter_force = "jõud",
		create_shockwave_command_parameter_force_help = "Põrutuslaine jõud (1 - 1000).",
		create_shockwave_command_parameter_radius = "raadius",
		create_shockwave_command_parameter_radius_help = "Põrutuslaine raadius (1 - 100).",
		create_shockwave_command_substitutes = "põrutuslaine",

		push_player_command = "tõuka_mängijat",
		push_player_command_help = "Mängija või tema autosõiduki tõukamine sinust eemale.",
		push_player_command_parameter_server_id = "server id",
		push_player_command_parameter_server_id_help = "Mängija serveri ID.",
		push_player_command_substitutes = "tõuka",

		-- game/shrooms
		draw_shroom_areas_command = "joonista_seened_ala",
		draw_shroom_areas_command_help = "Joonista kõik seened alad ja lisa rohkem.",
		draw_shroom_areas_command_substitutes = "seen_ala",

		-- game/smell
		smell_command = "haistma",
		smell_command_help = "Haista enda ümbrust ja otsi midagi ebatavalist.",
		smell_command_substitutes = "",

		-- game/sound_effects
		play_sound_command = "esita_hääl",
		play_sound_command_help = "Esitab heliefekti sinu asukohas.",
		play_sound_command_parameter_sound = "heli",
		play_sound_command_parameter_sound_help = "Heliefekti nimi, mida soovid esitada.",
		play_sound_command_substitutes = "",

		-- game/spying
		search_for_devices_command = "otsi_seadmeid",
		search_for_devices_command_help = "Otsige läheduses seadmeid.",
		search_for_devices_command_substitutes = "otsi_seadmeid, otsiseadmeid, s4d",

		-- game/spectating
		spectate_command = "vaatlus",
		spectate_command_help = "Vaadake kindlat mängijat.",
		spectate_command_parameter_server_id = "serveri ID",
		spectate_command_parameter_server_id_help = "Mängija serveri ID, keda soovite vaadata.",
		spectate_command_substitutes = "vaata",

		-- game/status
		status_reset_command = "staatuse_reset",
		status_reset_command_help = "Lähtestage staatuse tasemed.",
		status_reset_command_parameter_server_id = "serveri ID",
		status_reset_command_parameter_server_id_help = "Mängija serveri ID, millele soovite staatus lähtestada. Kui jätate tühjaks, valitakse automaatselt teie enda serveri ID.",
		status_reset_command_substitutes = "sr",

		toggle_status_command = "lülita_staatus",
		toggle_status_command_help = "Keelab (või lubab) teatud staatused nagu nälg, janu ja stress.",
		toggle_status_command_substitutes = "",

		set_body_armor_command = "määra_keha_armor",
		set_body_armor_command_help = "Määrab kellegi keha armori taseme.",
		set_body_armor_command_parameter_server_id = "server id",
		set_body_armor_command_parameter_server_id_help = "Mängija serveri ID, kelle kehaarmorit soovite seada. Saate selle tühjaks või jätta `0`, et valida ennast. Võite ka teha `-1`, et seada kõigi kehaarmor tasemed.",
		set_body_armor_command_parameter_body_armor_level = "kehaarmor tasemed",
		set_body_armor_command_parameter_body_armor_level_help = "Kehaarmor tasemed, mida soovite seada. See väärtus võib olla kuskil vahemikus `0` kuni `100`. Jättes selle tühjaks või panemata sobimatu väärtus, vaikeväärtus on `100`.",
		set_body_armor_command_substitutes = "keha_panssari, panssari",

		-- game/streamer_mode
		toggle_streamer_mode_command = "lülita_vooja_režiim",
		toggle_streamer_mode_command_help = "Lülitab sisse/välja voogedastuse režiimi. See takistab mängijatel teha '18+' emotsioone, kui oled lähedal.",
		toggle_streamer_mode_command_substitutes = "vooja_režiim, vooja",

		-- game/sync
		time_hour_command = "aeg_tund",
		time_hour_command_help = "Määrab kellaaja.",
		time_hour_command_parameter_hour = "tund",
		time_hour_command_parameter_hour_help = "Tund, mille soovite seada. Väärtus peab olema vahemikus 0 kuni 23.",
		time_hour_command_parameter_transition = "muutumine",
		time_hour_command_parameter_transition_help = "Kas aja muutmine peaks toimuma sujuva üleminekuga? (jah/ei, vaikimisi 'ei').",
		time_hour_command_substitutes = "tund",

		time_minute_command = "aeg_minut",
		time_minute_command_help = "Määra kellaaeg minutitega.",
		time_minute_command_parameter_minute = "minut",
		time_minute_command_parameter_minute_help = "Minutid, millele soovite kellaaja seada. Väärtus peab olema vahemikus 0 kuni 59.",
		time_minute_command_substitutes = "minut",

		local_time_command = "kohalik_aeg",
		local_time_command_help = "Seab aja, kuid ainult enda jaoks.",
		local_time_command_parameter_time = "aeg",
		local_time_command_parameter_time_help = "Aeg, mille soovite kohalikus kellas määrata. Väärtus peab olema vahemikus 0:00 kuni 23:59.",
		local_time_command_substitutes = "",

		local_weather_command = "kohalik_ilmaolud",
		local_weather_command_help = "Seab ilmaolud, kuid ainult enda jaoks.",
		local_weather_command_parameter_weather = "ilm",
		local_weather_command_parameter_weather_help = "Ilm, mille soovite kohalike ilmaolude jaoks määrata. Võtab samad väärtused kui /weather.",
		local_weather_command_substitutes = "",

		brighter_nights_command = "heledamad_ööd",
		brighter_nights_command_help = "Määrab kellaaja 12:00 pärastlõunaks ja ilmaolud extrasunny'ks, kuid ainult sulle endale.",
		brighter_nights_command_substitutes = "",

		weather_command = "ilm",
		weather_command_help = "Muudab ilmastikut.",
		weather_command_parameter_weather = "ilmastiku nimetus",
		weather_command_parameter_weather_help = "Ilmastiku nimetus, mida soovite seada. Kehtivad ilmastiku nimetused on EXTRASUNNY, CLEAR, CLOUDS, SMOG, FOGGY, OVERCAST, RAIN, THUNDER, CLEARING, NEUTRAL, SNOW, BLIZZARD, SNOWLIGHT, XMAS ja HALLOWEEN.",
		weather_command_substitutes = "",

		advance_weather_command = "järgmine_ilmaolukord",
		advance_weather_command_help = "Loomulikult minna järgmise ilmaolukorra juurde.",
		advance_weather_command_substitutes = "",

		freeze_time_command = "külmuta_aeg",
		freeze_time_command_help = "Lülita ajakülmumine sisse või välja.",
		freeze_time_command_substitutes = "",

		freeze_weather_command = "külmuta_ilmaolukord",
		freeze_weather_command_help = "Lülita ilma külmutamine sisse või välja.",
		freeze_weather_command_substitutes = "",

		blackout_command = "voolukatkestus",
		blackout_command_help = "Lülita sisse või välja voolukatkestus.",
		blackout_command_substitutes = "",

		-- game/tablet
		tablet_command = "tahvelarvuti",
		tablet_command_help = "Avab tahvelarvuti kasutajaliidese (kui teil on tahvelarvuti).",
		tablet_command_substitutes = "",

		-- game/teleporting
		tp_back_command = "tp_back",
		tp_back_command_help = "Teleporti tagasi kohta, kust viimati teleportisid.",
		tp_back_command_substitutes = "tagasi",

		tp_coords_command = "tp_koordinaadid",
		tp_coords_command_help = "Teleportige mõnele koordinaadile.",
		tp_coords_command_parameter_x = "x-kordinaat",
		tp_coords_command_parameter_x_help = "X-koordinaat, kuhu soovite teleportida.",
		tp_coords_command_parameter_y = "y",
		tp_coords_command_parameter_y_help = "Y-koordinaat, kuhu soovite teleportida.",
		tp_coords_command_parameter_z = "z",
		tp_coords_command_parameter_z_help = "Z-koordinaat, kuhu soovite teleportida. See parameeter on valikuline. Kui see jätta tühjaks, otsitakse automaatselt pinnase koordinaate.",
		tp_coords_command_parameter_w = "Failed to automatically generate translation.",
		tp_coords_command_parameter_w_help = "Failed to automatically generate translation.",
		tp_coords_command_substitutes = "tpc",

		tp_waypoint_command = "tp_waypoint",
		tp_waypoint_command_help = "Teleportige oma sisestatud teeviitpunkti juurde.",
		tp_waypoint_command_substitutes = "tp_marker, tp",

		tp_to_player_command = "tp_mängijale",
		tp_to_player_command_help = "Teleporteerib sind mängija juurde.",
		tp_to_player_command_parameter_server_id = "serveri id",
		tp_to_player_command_parameter_server_id_help = "Mängija serveri id, kuhu soovid teleporteeruda.",
		tp_to_player_command_substitutes = "",

		tp_player_here_command = "tp_mängija_siia",
		tp_player_here_command_help = "Teleporteerib mängija sinu juurde.",
		tp_player_here_command_parameter_server_id = "serveri id",
		tp_player_here_command_parameter_server_id_help = "Mängija serveri id, keda soovid teleporteerida.",
		tp_player_here_command_substitutes = "",

		tp_player_player_command = "tp_player_player",
		tp_player_player_command_help = "Teleporteerib mängija teisele mängijale.",
		tp_player_player_command_parameter_source_id = "lähtekoha id",
		tp_player_player_command_parameter_source_id_help = "Mängija, keda soovite teleportida.",
		tp_player_player_command_parameter_destination_id = "sihtkoha id",
		tp_player_player_command_parameter_destination_id_help = "Mängija, kelle juurde soovite lähtekohast mängija teleportida.",
		tp_player_player_command_substitutes = "",

		-- game/test_server
		test_menu_command = "testi_menüü",
		test_menu_command_help = "Lülita testserveri menüü sisse või välja.",
		test_menu_command_substitutes = "",

		-- game/time_scale
		set_time_scale_command = "määra_aega_skaleerida",
		set_time_scale_command_help = "Määrab serveri ajaskaala.",
		set_time_scale_command_parameter_time_scale = "ajaskaala",
		set_time_scale_command_parameter_time_scale_help = "Ajaskaala, mida soovid määrata. Väärtus peab olema vahemikus 0 kuni 1.",
		set_time_scale_command_parameter_instanced = "eraldatud",
		set_time_scale_command_parameter_instanced_help = "Kas ajatempo peaks olema seade kehtiv ainult sinu praeguse instantsi jaoks. (vaikimisi ei)",
		set_time_scale_command_substitutes = "ajaskaala, aegluubis",

		-- game/titanic
		create_titanic_command = "loodud_titanic",
		create_titanic_command_help = "Loo uppuv Titanic.",
		create_titanic_command_parameter_sink_time = "uputus aeg",
		create_titanic_command_parameter_sink_time_help = "Minutite arv, mis kulub enne, kui laev vee alla vajub.",
		create_titanic_command_substitutes = "",

		-- game/top_down
		top_down_command = "ülevalt_alla",
		top_down_command_help = "Lülitab sisse ülevalt alla vaate.",
		top_down_command_substitutes = "",

		-- game/trackers
		tracker_command = "jälgija",
		tracker_command_help = "Lülitab sisse/välja jälgija nähtavuse.",
		tracker_command_parameter_break = "katkesta",
		tracker_command_parameter_break_help = "Katkesta jälgija ja saada sellest teade hädahelkuriteenistusele. Sisesta 'yes' või 'y', et katkestada jälgija. (Ei saa uuesti sisse lülitada enne, kui on möödunud 20 minutit)",
		tracker_command_substitutes = "",

		trackers_split_command = "jälgijate_eraldus",
		trackers_split_command_help = "Lülitab ümber jälgijate hoidmise ühest suurest kategooriast kaheks osaks eraldi.",
		trackers_split_command_substitutes = "",

		-- game/train_pass
		train_passes_command = "rongi_piletid",
		train_passes_command_help = "Kontrollige oma rongi piletite arvu.",
		train_passes_command_substitutes = "",

		-- game/treasure_maps
		spawn_map_piece_command = "loekatsetükk",
		spawn_map_piece_command_help = "Loob aardetkaardi tüki.",
		spawn_map_piece_command_parameter_map_tier = "kaarditaseme id",
		spawn_map_piece_command_parameter_map_tier_help = "Vali aardetkaardi tase, mille jaoks soovid tüki luua.",
		spawn_map_piece_command_parameter_piece_number = "osa number",
		spawn_map_piece_command_parameter_piece_number_help = "Osa number, mida soovite luua.",
		spawn_map_piece_command_substitutes = "",

		treasure_maps_debug_command = "aardekaardid_debug",
		treasure_maps_debug_command_help = "Lülita aardekaartide silumistööriist sisse/välja.",
		treasure_maps_debug_command_substitutes = "",

		-- game/tsunami
		set_ocean_scaler_command = "määra_ocean_scaler",
		set_ocean_scaler_command_help = "Muudab globaalselt ookeani skaalat.",
		set_ocean_scaler_command_parameter_intensity = "intensiivsus",
		set_ocean_scaler_command_parameter_intensity_help = "Skaala, mida soovite määrata.",
		set_ocean_scaler_command_substitutes = "ocean_scaler, set_waves_intensity, waves_intensity",

		tsunami_toggle_command = "tsunami_käivitus",
		tsunami_toggle_command_help = "Lülitab järk-järgulise tsunami sisse.",
		tsunami_toggle_command_parameter_minutes = "minutit",
		tsunami_toggle_command_parameter_minutes_help = "Minutite arv, mis kulub enne kui tsunami üle kogu kaardi ujutab. Vaikimisi on 60 minutit.",
		tsunami_toggle_command_substitutes = "",

		-- game/twitter_bid
		twitter_bid_command = "twitter_pakkumine",
		twitter_bid_command_help = "Lülita Twitteri pakkumise kasutajaliidest sisse/välja.",
		twitter_bid_command_substitutes = "",

		-- game/vdm
		vdm_command = "vdm",
		vdm_command_help = "Selle käsu sisestamisel üritab konkreetne NPC rammida määratud sihtmärki.",
		vdm_command_parameter_target = "sihtmärk",
		vdm_command_parameter_target_help = "Sihtmärgi serveri ID.",
		vdm_command_parameter_network_id = "võrgu ID",
		vdm_command_parameter_network_id_help = "Sõiduki võrgu ID, mis teostab VDMi (kui jätate tühjaks, valib kõige lähedasema sõiduki).",
		vdm_command_substitutes = "",

		vdm_clear_command = "vdm_clear",
		vdm_clear_command_help = "Tühjendab kõik teie VDM sihtkohad.",
		vdm_clear_command_substitutes = "",

		steal_vehicle_command = "vargusõiduk",
		steal_vehicle_command_help = "Teeb lähimast npcdst sihtmärgi sõiduki vargaks.",
		steal_vehicle_command_parameter_network_id = "võrgu-ID",
		steal_vehicle_command_parameter_network_id_help = "Sõiduki võrgu-ID.",
		steal_vehicle_command_substitutes = "",

		drive_to_command = "Failed to automatically generate translation.",
		drive_to_command_help = "Failed to automatically generate translation.",
		drive_to_command_parameter_network_id = "Failed to automatically generate translation.",
		drive_to_command_parameter_network_id_help = "Kas põlvkonna id, sõidukite põlvkonna id (mille juht on kuues) või jätke tühjaks praeguse sõiduki juhi valimiseks.",
		drive_to_command_substitutes = "",

		-- game/voice
		voice_debug_command = "voice_debug",
		voice_debug_command_help = "Hääle segamise tõrkeotsingu sisse- ja väljalülitamine.",
		voice_debug_command_parameter_server_id = "serveri ID",
		voice_debug_command_parameter_server_id_help = "Kui soovid kellegi teise 'hääle silumise' olekut muuta, sisesta siia nende serveri ID.",
		voice_debug_command_substitutes = "",

		listen_command = "kuula",
		listen_command_help = "Lülitab sisse kuulamisrežiimi kindla kasutaja jaoks. (Saad kuulda, mida nad ütlevad)",
		listen_command_parameter_server_id = "serveri ID",
		listen_command_parameter_server_id_help = "Inimene, keda soovid kuulata.",
		listen_command_substitutes = "",

		toggle_voice_mute_command = "toggle_voice_mute",
		toggle_voice_mute_command_help = "Võimaldab kellelgi vestlus vaigistada või mittevaigistada.",
		toggle_voice_mute_command_parameter_server_id = "serveri ID",
		toggle_voice_mute_command_parameter_server_id_help = "Inimene, keda soovid vaigistada või mittevaigistada.",
		toggle_voice_mute_command_substitutes = "voice_mute",

		change_voice_mode_command = "muuda_hääle_režiimi",
		change_voice_mode_command_help = "Lülitab sisse/välja 'muusika' häälesisendi režiimi. See režiim keelab müravähenduse ja kaja eemaldamise, tagades selgema muusika.",
		change_voice_mode_command_substitutes = "häälerežiim",

		-- game/wallhack
		wallhack_command = "seinavaatlus",
		wallhack_command_help = "Lülita seinad läbipaistvaks.",
		wallhack_command_parameter_server_id = "serveri ID",
		wallhack_command_parameter_server_id_help = "Kui soovid lülitada seinad läbipaistvaks kellegi teise jaoks, sisesta siia nende serveri ID.",
		wallhack_command_substitutes = "",

		-- game/wizard
		wizard_command = "wizard",
		wizard_command_help = "Avab võluri menüü.",
		wizard_command_parameter_server_id = "serveri ID",
		wizard_command_parameter_server_id_help = "Valige kindel mängija menüüst (valikuline).",
		wizard_command_substitutes = "",

		flashbang_command = "pimestav kähise",
		flashbang_command_help = "Pimestab teatud mängijat.",
		flashbang_command_parameter_server_id = "serveri id",
		flashbang_command_parameter_server_id_help = "Sihtmängija serveri ID.",
		flashbang_command_substitutes = "",

		flashbang_radius_command = "pimestav kähise raadius",
		flashbang_radius_command_help = "Pimestab kõiki mängijaid antud raadiuse ulatuses.",
		flashbang_radius_command_parameter_radius = "raadius",
		flashbang_radius_command_parameter_radius_help = "Määra raadius, milles mängijad pimedaks lüüakse.",
		flashbang_radius_command_parameter_include_self = "lisaks iseendale",
		flashbang_radius_command_parameter_include_self_help = "Kas soovid saada pime iseendana ka.",
		flashbang_radius_command_substitutes = "",

		punch_command = "löö",
		punch_command_help = "Paneb kindlat mängijat juhuslikult lööma.",
		punch_command_parameter_server_id = "serveri ID",
		punch_command_parameter_server_id_help = "Sihtmängija serveri ID.",
		punch_command_substitutes = "",

		explode_command = "lõhu_mängija",
		explode_command_help = "Spreisib teatud mängija.",
		explode_command_parameter_server_id = "serveri id",
		explode_command_parameter_server_id_help = "Sihtmängija serveri ID.",
		explode_command_substitutes = "",

		taze_player_command = "taze_player",
		taze_player_command_help = "Tazeerib mängija.",
		taze_player_command_parameter_server_id = "serveri ID",
		taze_player_command_parameter_server_id_help = "Sihtmängija serveri ID.",
		taze_player_command_substitutes = "ehmata, taze",

		run_command_as_command = "jooksuta_käsk",
		run_command_as_command_help = "Teine mängija käsku täitma panemine.",
		run_command_as_command_parameter_server_id = "serveri id",
		run_command_as_command_parameter_server_id_help = "Sihtmängija serveri ID.",
		run_command_as_command_parameter_command = "käsk",
		run_command_as_command_parameter_command_help = "Käsk, mida soovite mängija täitma panna.",
		run_command_as_command_substitutes = "runas, sudo",

		ped_reverse_command = "jalakäija_tagaasi",
		ped_reverse_command_help = "Paneb lähedalasuva NPC auto tagurpidi liikuma.",
		ped_reverse_command_substitutes = "",

		ped_forwards_command = "ped_edasi",
		ped_forwards_command_help = "Pane kõige lähem ped sõidukis edasi sõitma.",
		ped_forwards_command_substitutes = "",

		-- global/entities
		local_entities_debug_command = "kohalikud_objektid_deb",
		local_entities_debug_command_help = "Lülita sisse/välja kohalike objektide silumisrežiim.",
		local_entities_debug_command_substitutes = "lobjektid",

		no_ped_population_areas_debug_command = "ei_ped_asustatud_piirkondi_debug",
		no_ped_population_areas_debug_command_help = "Lülita sisse/välja 'no ped population areas' silumisrežiim.",
		no_ped_population_areas_debug_command_substitutes = "",

		-- global/explosions
		create_explosion_command = "loo_plahvatus",
		create_explosion_command_help = "Loo pauk.",
		create_explosion_command_parameter_explosion_type = "pauku tüüp",
		create_explosion_command_parameter_explosion_type_help = "Pauku tüüp.",
		create_explosion_command_parameter_damage_scale = "kahjustuse skala",
		create_explosion_command_parameter_damage_scale_help = "Kahjustuse skala.",
		create_explosion_command_parameter_camera_shake = "kaamera raputamine",
		create_explosion_command_parameter_camera_shake_help = "Kaamera raputamine.",
		create_explosion_command_substitutes = "exp, lõhke, pauk",

		-- global/functions
		confirm_yes_command = "jah",
		confirm_yes_command_help = "Kinnita praegune toiming.",
		confirm_yes_command_substitutes = "kinnita",

		confirm_no_command = "ei",
		confirm_no_command_help = "Katkesta praegune toiming.",
		confirm_no_command_substitutes = "tühista, lõpeta",

		-- global/locales
		show_raw_locales_command = "show_raw_locales",
		show_raw_locales_command_help = "Lülita sisse kuvatava toore kohaliku nime väljalülitamiseks abistamiseks vajalike kohtade silumisel.",
		show_raw_locales_command_substitutes = "",

		-- global/states
		entity_states_command = "entiteedi_seisundid",
		entity_states_command_help = "Prindib konkreetse entiteedi kõik seisundid.",
		entity_states_command_parameter_network_id = "võrgu ID",
		entity_states_command_parameter_network_id_help = "Entiteedi võrgu ID.",
		entity_states_command_substitutes = "",

		draw_entity_states_command = "joonista_olekuid",
		draw_entity_states_command_help = "Näitab kõiki objekte, millel on vähemalt 1 olek.",
		draw_entity_states_command_substitutes = "",

		-- illegal/drugs
		drugs_debug_command = "narkokaubanduse_debugimine",
		drugs_debug_command_help = "Debugib kõik narkokaubanduse kohad.",
		drugs_debug_command_substitutes = "",

		-- interfaces/interfaces
		clear_uis_command = "puhasta_uis",
		clear_uis_command_help = "Kustuta kõik kasutajaliidese fookused.",
		clear_uis_command_substitutes = "",

		interface_focuses_command = "liidese_fookused",
		interface_focuses_command_help = "Kontrolli, millised kasutajaliidesed on fookuses.",
		interface_focuses_command_substitutes = "liidese_fookus, fookus, fookused",

		-- jobs/bus_driver
		bus_debug_command = "bussi_silumine",
		bus_debug_command_help = "Kuvab kõik bussipeatused.",
		bus_debug_command_substitutes = "",

		--jobs/doj
		lookup_character_command = "lookup_character",
		lookup_character_command_help = "Otsib tegelase vastavalt otsingule, mida kasutavad kohtunikud.",
		lookup_character_command_parameter_type = "tüüp",
		lookup_character_command_parameter_type_help = "llamaradmin",
		lookup_character_command_parameter_search = "camara",
		lookup_character_command_parameter_search_help = "Usa las coordenadas de tu cámara en lugar de las coordenadas de tu personaje. El valor predeterminado es no, `1` o `s` para sí.",
		lookup_character_command_substitutes = "El nombre del modelo o el hash del vehículo que deseas agregar. Si se deja en blanco, se agregará el vehículo en el que te encuentras actualmente (incluyendo sus modificaciones actuales).",

		create_vehicle_hold_command = "ignorar vehículo",
		create_vehicle_hold_command_help = "Si se establece en `1` o `s`, solo estarás invencible, no el vehículo en el que te encuentras.",
		create_vehicle_hold_command_parameter_time = "Failed to automatically generate translation.",
		create_vehicle_hold_command_parameter_time_help = "Failed to automatically generate translation.",
		create_vehicle_hold_command_parameter_plate = "Failed to automatically generate translation.",
		create_vehicle_hold_command_parameter_plate_help = "Failed to automatically generate translation.",
		create_vehicle_hold_command_substitutes = "Failed to automatically generate translation.",

		--jobs/duty
		toggle_duty_status_command = "lülita_vastutusseisund_sisse_välja_käsk",
		toggle_duty_status_command_help = "Lülitab Sinu vastutusseisundit sisse või välja.",
		toggle_duty_status_command_parameter_server_id = "serveri id",
		toggle_duty_status_command_parameter_server_id_help = "Siia tuleb sisestada sihtserveri id või jätta tühi, kui soovid lülitada sisse või välja oma enda vastutusseisundit.",
		toggle_duty_status_command_substitutes = "vastutusseisund, vastutus",

		toggle_training_command = "lülita_koolitus_sees_välja_käsk",
		toggle_training_command_help = "Lülitab Sinu koolitusseisundit sisse või välja.",
		toggle_training_command_substitutes = "koolitus",

		toggle_operator_status_command = "vaheta_halduri_staatus",
		toggle_operator_status_command_help = "Vaheta oma hädaolukorra halduri staatust. Selle lubamine võimaldab sul vastu võtta hädaabikõnesid.",
		toggle_operator_status_command_substitutes = "haldur, vaheta_haldur, halduri_staatus",

		-- jobs/police
		aim_assist_command = "sihi_abi",
		aim_assist_command_help = "Lülita sisse politsei eesmärgipärase sihi abi. (Nathan Spenceri mälestuseks.)",
		aim_assist_command_substitutes = "",

		undercover_command = "varjatud",
		undercover_command_help = "Lülita sisse või välja oma varjatud olek. See peidab erinevaid asju, mis tavaliselt reedavad sinu politsei staatuse.",
		undercover_command_substitutes = "",

		active_robberies_command = "aktiivsed_röövid",
		active_robberies_command_help = "Loetleb kõik praegu aktiivsed (avatud) poed, pangad ja ehtepoed.",
		active_robberies_command_substitutes = "",

		pd_impound_command = "pd_hoiulepanek",
		pd_impound_command_help = "See käsk paneb mängija sõiduki hoiule teatud ajaks.",
		pd_impound_command_parameter_minutes = "minutid",
		pd_impound_command_parameter_minutes_help = "Kui kauaks sõiduk peaks konfiskeeritud olema (1 minutist kuni 48 tunnini).",
		pd_impound_command_substitutes = "",

		dispatch_command = "hädaabi",
		dispatch_command_help = "Saadab sõnumi politsei väljakutsele.",
		dispatch_command_parameter_message = "sõnum",
		dispatch_command_parameter_message_help = "Sõnum, mida soovite saata.",
		dispatch_command_substitutes = "",

		police_drive_mode_command = "politsei_sõidurežiim",
		police_drive_mode_command_help = "Lülita oma politsei sõiduki sõidurežiim sisse või välja.",
		police_drive_mode_command_parameter_mode = "režiim",
		police_drive_mode_command_parameter_mode_help = "Režiim, mida soovite seada. \"D\" tähendab \"drive\" ja \"S\" tähendab \"sport\" (sportrežiim on vaikimisi).",
		police_drive_mode_command_substitutes = "sõidurežiim",

		-- jobs/state
		license_give_command = "luba_andmine",
		license_give_command_help = "Andke luba.",
		license_give_command_parameter_character_id = "tegelase ID",
		license_give_command_parameter_character_id_help = "Tegelase ID, kellele soovite loa anda.",
		license_give_command_parameter_license = "luba",
		license_give_command_parameter_license_help = "Luba, mida soovite anda. Te saate saadaolevate lubade nimekirja, kasutades `/license_list`.",
		license_give_command_substitutes = "anna_luba, lisa_luba",

		license_remove_command = "eemalda_luba",
		license_remove_command_help = "Eemalda litsents",
		license_remove_command_parameter_character_id = "karakteri id",
		license_remove_command_parameter_character_id_help = "Karakteri ID, millelt soovite litsentsi eemaldada",
		license_remove_command_parameter_license = "litsents",
		license_remove_command_parameter_license_help = "Litsents, mille soovite eemaldada. Saate loetleda saadaolevad litsentsid, kasutades `/license_list`.",
		license_remove_command_substitutes = "eemalda_luba",

		license_list_command = "lubade_nimekiri",
		license_list_command_help = "Näitab kõiki saadaolevaid lube.",
		license_list_command_substitutes = "lubade_nimekirja, nimekiri_lubadest",

		licenses_check_command = "lubade_kontroll",
		licenses_check_command_help = "Kontrollib kellegi lube.",
		licenses_check_command_parameter_character_id = "karakteri id",
		licenses_check_command_parameter_character_id_help = "Karakteri ID, kelle lube soovite kontrollida.",
		licenses_check_command_substitutes = "kontrolli_lubasid, kontrolli_lube",

		licenses_command = "litsentsid",
		licenses_command_help = "Vaadake oma litsentse.",
		licenses_command_substitutes = "",

		set_marriage_command = "määra_abielu",
		set_marriage_command_help = "Määra abieluseis kahe tegelase vahel.",
		set_marriage_command_parameter_partner_a_cid = "partner a",
		set_marriage_command_parameter_partner_a_cid_help = "Esimene partnertegelase ID.",
		set_marriage_command_parameter_partner_b_cid = "partner b_cid",
		set_marriage_command_parameter_partner_b_cid_help = "Teise partneri isikukood.",
		set_marriage_command_parameter_state = "olek",
		set_marriage_command_parameter_state_help = "Kas `abiellunud` või `lahutatud`.",
		set_marriage_command_substitutes = "",

		-- jobs/tow
		toggle_mechanic_messages_command = "lülita_mehaaniku_sõnumid",
		toggle_mechanic_messages_command_help = "Lülitab sisse/välja mehhaanikute sõnumite vastuvõtu.",
		toggle_mechanic_messages_command_substitutes = "mehaaniku_sõnumid",

		-- vehicles/boats
		toggle_anchor_command = "lülita_ankur",
		toggle_anchor_command_help = "Lülitab ümbruses oleva paadi ankru sisse/välja.",
		toggle_anchor_command_substitutes = "ankur",

		-- vehicles/damage
		vehicle_damage_debug_command = "sõiduki_kahju_veebilogi_test",
		vehicle_damage_debug_command_help = "Näitab sõiduki praeguseid vigastusväärtuseid.",
		vehicle_damage_debug_command_substitutes = "",

		-- vehicles/fuel
		set_fuel_command = "set_fuel",
		set_fuel_command_help = "Seadistab sõiduki kütuse taseme.",
		set_fuel_command_parameter_fuel_level = "kütuse tase",
		set_fuel_command_parameter_fuel_level_help = "Kütuse tase, mille soovite seadistada. Jätke tühjaks, et automaatselt valida '100'.",
		set_fuel_command_substitutes = "fuel",

		-- vehicles/garage_access
		manage_garage_command = "haldus_garaaž",
		manage_garage_command_help = "Haldage oma garaaži ja kellel on sellele juurdepääs.",
		manage_garage_command_substitutes = "hg",

		-- vehicles/garages
		toggle_garage_debug_command = "toggle_garage_debug",
		toggle_garage_debug_command_help = "Lülitab garaaži silumise sisse/välja.",
		toggle_garage_debug_command_substitutes = "garaaži_veaotsing",

		garage_vehicle_command = "garaaž_sõiduk",
		garage_vehicle_command_help = "Kustuta sõiduk ja saada see garaaži.",
		garage_vehicle_command_parameter_repair = "Failed to automatically generate translation.",
		garage_vehicle_command_parameter_repair_help = "Failed to automatically generate translation.",
		garage_vehicle_command_substitutes = "garaaž",

		ungarage_vehicle_command = "võta_auto_garaažist",
		ungarage_vehicle_command_help = "Võta auto välja selle asukohast garaažist.",
		ungarage_vehicle_command_parameter_vehicle_id = "auto id",
		ungarage_vehicle_command_parameter_vehicle_id_help = "Auto ID, mida soovite välja võtta.",
		ungarage_vehicle_command_substitutes = "võta_auto_välja",

		-- vehicles/keys
		give_key_command = "anna_võti",
		give_key_command_help = "Anna sõiduki võti lähedalolevale inimesele.",
		give_key_command_parameter_server_id = "serveri_id",
		give_key_command_parameter_server_id_help = "Mängija serveri id, kellele soovite võtme anda. Seda saab tühjaks jätta (või seada 0), kui soovite selle anda lähimale inimesele.",
		give_key_command_substitutes = "võtme_anna",

		hotwire_vehicle_command = "autosse_sissejuhtimine",
		hotwire_vehicle_command_help = "Kävitab sisse mootori sõidukis, kus viibite.",
		hotwire_vehicle_command_parameter_server_id = "serveri ID",
		hotwire_vehicle_command_parameter_server_id_help = "Muudab mängija juhitud sõiduki koheselt varastatuks.",
		hotwire_vehicle_command_substitutes = "hotwire",

		pickup_keys_command = "korja_võtmed",
		pickup_keys_command_help = "Võimaldab sul korjata lähima sõiduki võtmed.",
		pickup_keys_command_substitutes = "",

		keys_command = "võtmed",
		keys_command_help = "Saage võtmed hetkel viibitud sõiduki jaoks.",
		keys_command_parameter_server_id = "serveri id",
		keys_command_parameter_server_id_help = "Andke teisele mängijale võtmed sõidukisse, milles nad praegu viibivad.",
		keys_command_substitutes = "",

		-- vehicles/modifications
		wheel_offset_command = "velje_nihutus",
		wheel_offset_command_help = "Muudab auto rataste asetust.",
		wheel_offset_command_parameter_wheels = "ees/taga",
		wheel_offset_command_parameter_wheels_help = "Milliseid rattaid soovid muuta?",
		wheel_offset_command_parameter_value = "väärtus",
		wheel_offset_command_parameter_value_help = "Summa, mille abil soovite seda muuta. See võib olla vahemikus -0,15 kuni 0,2, 0 on vaikimisi.",
		wheel_offset_command_substitutes = "",

		wheel_rotation_command = "ratase_pöörlemine",
		wheel_rotation_command_help = "Muudab sõiduki rataste pöörlemist.",
		wheel_rotation_command_parameter_wheels = "ees/taga",
		wheel_rotation_command_parameter_wheels_help = "Milliseid rattaid soovite muuta?",
		wheel_rotation_command_parameter_value = "väärtus",
		wheel_rotation_command_parameter_value_help = "Summa, mida soovite muuta. See võib olla vahemikus -0,5 kuni 0,5, 0 on vaikimisi.",
		wheel_rotation_command_substitutes = "",

		-- vehicles/plates
		fake_plate_command = "vale_number",
		fake_plate_command_help = "Lülitab praeguse sõiduki vale numbrimärgi sisse / välja.",
		fake_plate_command_substitutes = "",

		plate_available_command = "number_available",
		plate_available_command_help = "Kontrollige, kas number on saadaval `/custom_plate` käsu jaoks.",
		plate_available_command_parameter_plate_number = "number",
		plate_available_command_parameter_plate_number_help = "Number, mida soovite kontrollida. Numbrid võivad olla kuni 8 tähemärki pikad ja võivad koosneda ainult suurtähtedest ja numbritest.",
		plate_available_command_substitutes = "",

		custom_plate_command = "kohandatud_number",
		custom_plate_command_help = "Määrake oma sõidukile kohandatud number.",
		custom_plate_command_parameter_vehicle_id = "sõiduki ID",
		custom_plate_command_parameter_vehicle_id_help = "Sõiduki ID, millele soovite panna kohandatud numbrimärgi. (Seda ID-d saate leida oma garaažist)",
		custom_plate_command_parameter_plate_number = "numbrimärk",
		custom_plate_command_parameter_plate_number_help = "Numbrimärk, mida soovite seada. Numbrimärgid võivad olla kuni 8 tähemärki pikkad ja koosnevad ainult suurtähtedest ja numbritest.",
		custom_plate_command_substitutes = "",

		-- vehicles/runways
		ifr_command = "ifr",
		ifr_command_help = "Lülita IFR-režiim sisse/välja (kuva maandumisabi läheduses asuvatele lennuväljadele).",
		ifr_command_substitutes = "",

		-- vehicles/sirens
		mute_sirens_command = "vaigista_sireenid",
		mute_sirens_command_help = "Vaigistab kõik sireenid ja signaalid.",
		mute_sirens_command_substitutes = "",

		-- vehicles/trailers
		toggle_trailer_command = "vaheta_traileri_seisundit",
		toggle_trailer_command_help = "Ühendab või lahutab haagise sõidukist, milles viibite.",
		toggle_trailer_command_substitutes = "haagise",

		-- vehicles/vehicles
		flip_command = "ümberpaiskamine",
		flip_command_help = "Keeruta autot ümber, kui see on tagurpidi.",
		flip_command_substitutes = "",

		toggle_roll_control_command = "toggle_roll_control",
		toggle_roll_control_command_help = "Lülita rolli- ja õhukontroll sisse/välja.",
		toggle_roll_control_command_substitutes = "rollikontroll",

		enable_ls_customs_command = "luba_ls_customs",
		enable_ls_customs_command_help = "Näita/peida LS Customs menüüd.",
		enable_ls_customs_command_substitutes = "ls_customs",

		toggle_gear_animation_command = "vaheta_käigukasti_animatsioon",
		toggle_gear_animation_command_help = "Lülitab sisse/välja käigukangi liigutamise animatsiooni ja helid autodes.",
		toggle_gear_animation_command_substitutes = "käigukasti_animatsioon, käigukasti_helid",

		turtle_vehicle_command = "ümberkeeratav_auto",
		turtle_vehicle_command_help = "Käivitab auto ümberpööramise, kui see on tagurpidi.",
		turtle_vehicle_command_substitutes = "kilpkonn_auto",

		door_command = "uks",
		door_command_help = "Lülitab sisse/välja sõiduki ukse.",
		door_command_parameter_door_id = "ukse ID (1-6)",
		door_command_parameter_door_id_help = "Millist sõiduki ust soovite avada? See parameeter muudetakse üle, kui olete sõitja. Samuti saate seda käsku kasutada ka sõidukist väljaspool.",
		door_command_substitutes = "",

		window_command = "aken",
		window_command_help = "Lülita sõiduki aken sisse/välja.",
		window_command_parameter_window_id = "akna id (1-4)",
		window_command_parameter_window_id_help = "Millist sõiduki akent soovite avada? See parameeter muudetakse üle, kui olete sõitja.",
		window_command_substitutes = "",

		shuffle_command = "segamini",
		shuffle_command_help = "Vaheta istet teisele kohale sõidukis.",
		shuffle_command_substitutes = "shuff",

		seat_command = "iste",
		seat_command_help = "Liiguta end teisele istekohale sõidukis.",
		seat_command_parameter_seat_id = "istekoha ID (1-6)",
		seat_command_parameter_seat_id_help = "Millisele istekohale soovite proovida liikuda?",
		seat_command_substitutes = "",

		engine_command = "mootor",
		engine_command_help = "Lülita sõiduki mootor sisse või välja.",
		engine_command_substitutes = "",

		mileage_command = "sõiduki läbisõit",
		mileage_command_help = "Kontrolli sõiduki läbisõitu.",
		mileage_command_substitutes = "",

		toggle_disabled_brakes_command = "toggle_disabled_brakes",
		toggle_disabled_brakes_command_help = "Keela sisse või lülita välja lähimast sõidukist pidurid.",
		toggle_disabled_brakes_command_substitutes = "keela_pidurid",

		manual_toggle_command = "manual_toggle",
		manual_toggle_command_help = "Seadista, kas soovid sõidukite käike käsitsi juhtida või mitte.",
		manual_toggle_command_command_parameter_hybrid = "hübriid",
		manual_toggle_command_command_parameter_hybrid_help = "Hübriid režiim nihutab automaatselt käike alla teatud RPM-il. Võib olla `hiljaline`, `keskmine` või `varajane`.",
		manual_toggle_command_substitutes = "",

		speed_limiter_command = "kiiruse_piiraja",
		speed_limiter_command_parameter_speed = "kiirus",
		speed_limiter_command_parameter_speed_help = "Millist kiirust soovite kasutada kiiruse piirajana? Jätke see tühi, et lähtestada see ja taastada tavaline käitumine.",
		speed_limiter_command_help = "Keelatud kiiruse ülemkirje standardse käitumise ülekirjutamiseks, et eelseadistada kiiruspiirang.",
		speed_limiter_command_substitutes = "sl, cc, püsikiiruse hoidja",

		toggle_vehicle_weapons_command = "lülita_sõiduki_relvad",
		toggle_vehicle_weapons_command_help = "Lülitab sõiduki relvade kasutamise sisse või välja.",
		toggle_vehicle_weapons_command_parameter_server_id = "serveri id",
		toggle_vehicle_weapons_command_parameter_server_id_help = "Mängija serveri ID, kelle sõiduki relvi soovite sisse või välja lülitada. Jätmisel valib automaatselt iseenda.",
		toggle_vehicle_weapons_command_substitutes = "sõiduki_relvad",

		wheelie_command = "esiratta_tõstmine",
		wheelie_command_help = "Lülitab esiratta tõstmise sisse või välja. (Vajutage sõidukis olles Shift-klahvi)",
		wheelie_command_parameter_power_level = "võimsus tase",
		wheelie_command_parameter_power_level_help = "Kui palju jõudu lisada (vaikimisi 2.5, vähenda seda kui võlli tõus on liiga tugev, suurenda seda kui on liiga nõrk).",
		wheelie_command_substitutes = "",

		copy_vehicle_data_command = "Failed to automatically generate translation.",
		copy_vehicle_data_command_help = "Failed to automatically generate translation.",
		copy_vehicle_data_command_substitutes = "Failed to automatically generate translation.",

		paste_vehicle_data_command = "Failed to automatically generate translation.",
		paste_vehicle_data_command_help = "Failed to automatically generate translation.",
		paste_vehicle_data_command_substitutes = "Failed to automatically generate translation.",

		-- vehicles/vin_numbers
		vin_number_command = "vin_number",
		vin_number_command_help = "Tagastab sõidukil oleva VIN numbril.",
		vin_number_command_substitutes = "vin",

		vin_lookup_command = "vin_lookup",
		vin_lookup_command_help = "Otsib sõiduki VIN numbril.",
		vin_lookup_command_parameter_vin_number = "VIN number",
		vin_lookup_command_parameter_vin_number_help = "Kontrollitava VIN-koodi number.",
		vin_lookup_command_substitutes = "vin_otsing, vo",

		-- weapons/ammo
		fill_ammo_command = "fill_ammo",
		fill_ammo_command_help = "Täidab kõik relvade padrunid.",
		fill_ammo_command_parameter_server_id = "serveri ID",
		fill_ammo_command_parameter_server_id_help = "Mängija serveri ID, kellele soovite padruneid täita.",
		fill_ammo_command_substitutes = "",

		-- weapons/recoil
		crosshair_command = "ristik",
		crosshair_command_help = "Lülitab ristiku sisse või välja.",
		crosshair_command_substitutes = "",

		aim_down_sight_command = "sihik",
		aim_down_sight_command_help = "Võimaldab automaatset sihtimist, kui paremat hiireklahvi vajutatakse, isegi kui vaadatakse kolmandast isikust.",
		aim_down_sight_command_substitutes = "ads",

		-- weapons/throwables
		throw_weapon_command = "viska_relv",
		throw_weapon_command_help = "Visake hetkel varustatud relv.",
		throw_weapon_command_substitutes = "viska, heida",

		throwables_debug_command = "heitmise_veaotsingu",
		throwables_debug_command_help = "Veaotsi kõik läheduses olevad heitmisasjad.",
		throwables_debug_command_substitutes = "",

		-- weapons/weapons
		check_ammo_command = "vaata_ammu",
		check_ammo_command_help = "Kontrollib kui palju laskemoona sul kokku on.",
		check_ammo_command_substitutes = "ammu",

		toggle_airsoft_mode_command_command = "vaheta_airsoft_režiim",
		toggle_airsoft_mode_command_command_help = "Lülitab sisse/välja airsofti režiimi (terve serveri peale), mis muudab kõik relvad väga väikse kahju tekitavateks.",
		toggle_airsoft_mode_command_command_substitutes = "airsofti_režiim, airsoft",

		toggle_folded_stock_command_command = "volditava_toki_lüliti",
		toggle_folded_stock_command_command_help = "Klappida kaba relvaga, mida hetkel käes hoiate.",
		toggle_folded_stock_command_command_substitutes = "kaba, stock"
	},

	connections = {
		your_account_is_connecting = "Teie konto ühendub uuest seansist."
	},

	controls = {
		menu_control_up = "Menüü Üles",
		menu_control_down = "Menüü Alla",
		menu_control_left = "Menüü Vasakule",
		menu_control_right = "Menüü Parem",

		menu_control_up_alternative = "Menüü Alternatiivne Üles",
		menu_control_down_alternative = "Menüü Alternatiivne Alla",
		menu_control_left_alternative = "Menüü - Vasak alternatiivne",
		menu_control_right_alternative = "Menüü - Parem alternatiivne"
	},

	core = {
		version = "Versioon",

		access_denied = "Juurdepääs keelatud",
		file_not_found = "Faili ei leitud.",
		only_lua_files_allowed = "Lubatud on ainult Lua failid."
	},

	couches = {
		model_not_found = "Vigane mudelinimi.",
		object_not_found = "Ühtegi selle mudeli objekti sinu läheduses ei leita.",
		offset_copied = "Offset on kopeeritud."
	},

	discord = {
		one_player = "1 mängija",
		multiple_players = "${playerAmount} mängijat",
		join_with_fivem = "Liitu FiveM-ga",
		discord_guild = "Discord kogukond",
		richer_presence_on = "Rikkam kohalolu on aktiveeritud.",
		richer_presence_off = "Rikkam kohalolu on deaktiveeritud.",

		announce_event = "Järgmise ${minutes} minuti jooksul toimub üritus! Vaata Discordist täpsemat teavet.\n\n${name} @ **${location}**",
		announce_event_starting_now = "Sündmus algab kohe! Lisateabe saamiseks vaadake Discord'i.\n\n${name} @ **${location}**"
	},

	emojis = {
		emoji_list = "${emojis}",
		api_reported_no_updates = "Discord API teatas, et emotikonide nimekirjas ei ole uuendusi.",
		emojis_added = "Lisati ${added} emotikon(i).",
		emojis_removed = "Eemaldati ${removed} emotikon(i).",
		emojis_updated = "Lisati ${added} emotikon(i) ja eemaldati ${removed} emotikon(i).",
		no_emojis = "Emoji pole saadaval."
	},

	errors = {
		script_location = "Skripti asukoht",
		additional_information = "Lisainformatsioon",
		error_report = "Viga aruande teatamine",
		send_report = "Saada aruanne",
		abort_report = "Katkesta aruanne",
		input_placeholder = "Palun andke meile teada, mida te tegite, kui see viga tekkis...",
		oh_no = "Oi ei,",
		an_error_has_occurred = "Tõrge on ilmnenud!",
		error_occured_information = "See näitab, et midagi ei tööta õigesti või soovitud viisil. Palume teil aidata meil selle probleemi lahendamisel, pakkudes täiendavaid üksikasju selle kohta, mida te tegite, kui see viga käivitati."
	},

	firewall = {
		local_firewall_enabled = "Kohalik tulemüür on sisse lülitatud.",

		local_firewall_on = "Lülitas sisse kohaliku tulemüüri koos blokeerimissõnumiga `${blockMessage}`.",
		local_firewall_re_enabled = "Lülitas uuesti sisse kohaliku tulemüüri koos blokeerimissõnumiga `${blockMessage}`.",
		local_firewall_off = "Lülitas välja kohaliku tulemüüri.",
		local_firewall_blocked = "Kohalik tulemüür: Blokeeritud ${playerName} (${licenseIdentifier})"
	},

	ping = {
		getting_pings = "Võtan kõigi mängijate märguandeid. See võib võtta paar sekundit.",
		host_data = "${position}. ${location} - ${averagePing} keskmine viideaeg (${totalPings} mängijat), 10% Madal: ${averagePingLow}, 10% Kõrge: ${averagePingHigh}",
		list_hosts = "${listHosts}"
	},

	profile = {
		profile_debug_enabled = "Profiili tõrkeotsing on sisse lülitatud. Vaadake väljundit F8 konsoolis.",
		profile_debug_disabled = "Profiili tõrkeotsing on välja lülitatud."
	},

	proxy = {
		proxied_via_logs_title = "Vahendatud läbi",
		proxied_via_logs_details = "${consoleName} oli vahendatud läbi `${serverName}`."
	},

	restart = {
		announcement_restart = "Server taaskäivitub ${minutes} minuti pärast.",
		announcement_restart_one_minute = "Server taaskäivitub 1 minuti pärast.",

		announcement_update = "Server läheb ${minutes} minuti pärast allapoole uuendamiseks.",
		announcement_update_one_minute = "Server läheb 1 minuti pärast allapoole uuendamiseks.",

		announcement_maintenance = "Server läheb ${minutes} minuti pärast allapoole hooldamiseks.",
		announcement_maintenance_one_minute = "Server läheb ühe minuti pärast hoolduseks kinni.",

		restart_cancelled = "Serveri taaskäivitus on tühistatud.",

		server_restarting = "Server taaskäivitatakse. Võite mõne minuti pärast uuesti ühenduda.",

		executed_restart_command = "Taaskäivituse käsk täideti.",
		already_executed_restart_command = "Taaskäivituse käsk on juba täidetud.",
		restart_planned_earlier = "Taaskäivituse plaan on varem kavandatud aeg.",
		no_restart_planned = "Taaskäivitust pole plaanitud.",
		posted_restart_warning_message = "Postitas taaskäivituse hoiatuse sõnumi.",
		cancelled_restart = "Taaskäivitus tühistatud."
	},

	routes = {
		route_not_found = "Marsruuti ${route} ei leitud.",
		route_restricted = "Marsruut ${route} on piiratud.",
		internal_server_error = "Sisemine viga serveris."
	},

	session = {
		connecting_from_new_session = "Ühendad uuest seansist."
	},

	twitch = {
		streaming_state_already_set_to_target = "Kasutaja voogeseade on juba seatud sihtseisu.",
		streaming_state_changed = "Kasutaja voogedastusolek on muudetud sihtrühma olekule.",

		twitch_ban_exception_removed = "Failed to automatically generate translation.",
		twitch_ban_exception_not_removed = "Failed to automatically generate translation.",

		removed_twitch_ban_exception_logs_title = "Failed to automatically generate translation.",
		removed_twitch_ban_exception_logs_details = "Failed to automatically generate translation."
	},

	users = {
		playtime = "Mänguaeg",
		player_playtime = "${playerName} (Koht ${position})\nKogu mänguaeg: ${totalPlaytime}\nSessiooni mänguaeg: ${sessionPlaytime}",
		leaderboard = "Juhttabel",
		your_position = "Teie positsioon",
		logs_user_reject_connection_title = "Ühenduse tagasilükkamine",
		logs_user_reject_connection_details = "Lükkas tagasi ühenduse kasutajaga ${consoleName} (`${reason}`).",
		logs_user_connected_title = "Kasutaja ühendus",
		logs_user_connected_details = "${consoleName} on ühendunud serveriga.",
		logs_user_joined_title = "Kasutaja ühines",
		logs_user_joined_details = "${consoleName} on ühinenud serveriga.",
		logs_user_dropped_title = "Kasutaja lahkus",
		logs_user_dropped_details = "${consoleName} lahkunud serverist pärast ${playtime} mängitud aega, põhjus: `${reason}`.",
		logs_user_dropped_proxied_details = "${consoleName} on serverist lahkunud pärast ${playtime} mängimist põhjusega: `${reason}`. Nad olid vahendatud läbi `${serverName}`.",
		logs_character_loaded_title = "Tegelane laaditud",
		logs_character_loaded_details = "${consoleName} on laadinud tegelase ${fullName} (${characterId}).",
		logs_character_unloaded_title = "Tegelane mahalaaditud",
		logs_character_unloaded_details = "${consoleName} on mahalaadinud tegelase ${fullName} (${characterId}).",
		logs_character_unloaded_details_reason = "${consoleName} on laadinud karakteri ${fullName} (${characterId}) põhjusega `${reason}`.",
		logs_character_created_title = "Karakter loodud",
		logs_character_created_details = "${consoleName} on loonud karakteri ${fullName} (${characterId}).",
		logs_character_deleted_title = "Karakter kustutatud",
		logs_character_deleted_details = "${consoleName} on kustutanud karakteri ${fullName} (${characterId}).",
		server_core_is_restarting = "Serveri tuum käivitatakse uuesti.",
		you_timed_out = "Te aegusite!",
		kicked_for_no_specified_reason = "Teid lükatud ilma konkreetse põhjuseta.",
		kicked_player = "Mängija lükatud.",
		kicked_player_and_removed_reconnect_priority = "Mängija lükatud ja uuesti ühendumise prioriteet eemaldatud.",
		kicked_player_and_failed_to_remove_reconnect_priority = "Mängija lükatud ja uuesti ühendumise prioriteeti ei õnnestunud eemaldada.",
		removed_player_from_queue = "Eemaldati mängija järjekorrast.",
		player_not_found = "Mängijat ei leitud.",
		missing_license_identifier = "Puudub `licenseIdentifier`.",
		package = "Pakett",
		package_updated = "Teie pakett on uuendatud `${packageName}`.",
		package_updated_remaining_time = "Teie pakett on uuendatud `${packageName}`. See aegub ${remainingTime} pärast.",
		package_expired = "Teie pakett on aegunud.",
		package_same = "Teie paketi nimi on `${packageName}`.",
		package_same_remaining_time = "Teie paketi nimi on `${packageName}`. See aegub ${remainingTime} pärast.",
		no_package = "Teil puudub pakett.",
		fetching_package_error = "Tõrge paketi andmete tagastamisel.",
		reason_unknown = "Põhjus teadmata.",

		unloaded_character = "Laadimata karakter.",
		user_does_not_have_sent_character_loaded = "Kasutaja pole saadetud karakteri laadinud.",
		user_has_no_character_loaded = "Kasutajal pole ühtegi karakterit laetud.",
		user_not_found = "Saadetud kasutajat ei leitud serverist.",
		invalid_character_id = "Saadetud kehtetu karakteri ID parameeter.",
		invalid_license_identifier = "Kehtetu litsentsi tuvastusparameeter saadetud.",

		unloaded_character_for_player_logs_title = "Mängija karakter laaditi maha",
		unloaded_character_for_player_logs_details = "${consoleName} laadis maha ${targetConsoleName}'s karakteri ${characterFullName} (${characterId}) põhjusega `${message}`.",
		unloaded_character_for_player_no_reason_logs_details = "${consoleName} laadis maha ${targetConsoleName}'s karakteri ${characterFullName} (${characterId}) ilma määratlemata põhjuseta.",

		unloaded_character_self_logs_title = "Laadimata tegelane",
		unloaded_character_self_logs_details = "${consoleName} laadis maha oma tegelase ${characterFullName} (${characterId}) põhjusega `${message}`.",
		unloaded_character_self_no_reason_logs_details = "${consoleName} laadis maha oma tegelase ${characterFullName} (${characterId}) ilma põhjuseta.",

		unloaded_character_for_everyone_logs_title = "Failed to automatically generate translation.",
		unloaded_character_for_everyone_logs_details = "Failed to automatically generate translation.",
		unloaded_character_for_everyone_no_reason_logs_details = "Failed to automatically generate translation.",

		unloaded_character_for_user = "Laadisin maha kasutaja ${consoleName} tegelase ${characterFullName} (${characterId}).",
		unloaded_character_for_everyone = "Failed to automatically generate translation.",
		user_with_server_id_has_no_character_loaded = "Kasutaja serveri ID-ga `${serverId}` ei ole ühtegi laaditud tegelast.",
		user_with_server_id_not_found = "Serveril ei leitud kasutajat serveri ID-ga `${serverId}`.",

		custom_plate = "Erisilt numbrimärk",
		custom_character_id = "Erisilt tegelase ID",
		custom_phone_number = "Erisilt telefoninumber",
		reskin = "Uus välimus",

		no_player_packages = "Sul ei ole ühtegi mängija paketti.",
		player_packages = "Mängija paketid:\n${playerPackages}",
		player_package = "- ${label}: ${amount}x",

		appreciated_tier = "Väärtustatud tier",
		respected_tier = "Respekteeritud tier",
		heroic_tier = "Kangelaslik tier",
		legendary_tier = "Legendi tasand",
		godlike_tier = "Jumalik tasand",

		dropped_timed_out_player_logs_title = "Maha pandud aegunud mängija",
		dropped_timed_out_player_logs_details = "${consoleName} kukutati käsitsi, kuna nad ei saatnud raamistikule pikka aega signaali.",

		critical_error_while_loading_data = "Esines kriitiline viga andmete laadimisel.",

		ping_unstable = "Teie ping on ebastabiilne.",
		ping_stable = "Teie ping on nüüd ebastabiilne."
	},

	whitelist = {
		not_whitelisted = "Te pole sellele serverile valgekirjas.\n\nLiituge meie Discordi kogukonnaga teavet saamiseks taotluse esitamise kohta aadressil ${communityDiscord}"
	},

	-- game/*
	admin_menu = {
		menu_title = "Admin menüü",
		spectate_player = "Vaata mängijat"
	},

	afk = {
		you_are_afk = "Sa oled AFK-s. Sinu tegelaskuju laaditakse peatselt välja.",
		move_mouse = "Liiguta hiirt, et lõpetada AFK.",
		you_have_been_unloaded_for_being_afk = "Sa oled AFK-s olnud liiga pikalt, võid kaaluda järgmine kord tegelase valikuekraanile liikumist."
	},

	airdrops = {
		created_airdrop = "Loodi langevarjuabi tüübiga `${airdropType}`, mis sisaldas ${itemAmount} eset.",
		no_valid_items_provided = "Kehtivaid esemeid ei sisestatud.",
		created_airdrop_with_items = "Loodi allpool loetletud esemetega langevarju abi:\n${itemsListed}"
	},

	airports = {
		airport = "Lennujaam",
		press_to_access_spawner = "Vajuta ~INPUT_CONTEXT~, et avada sõidukite spawner.",
		no_spawner_licenses = "Sul ei ole lubasid selle sõidukite spawneri jaoks.",
		vehicle_lists = "Sõidukite loendid",
		parked_vehicle = "Pargitud sõiduk.",
		press_to_park_vehicle = "Vajuta ~INPUT_CONTEXT~, et parkida sõiduk.",
		no_vehicle_to_park = "Parkimiseks pole ühtegi sõidukit.",
		park_vehicle = "Parki Sõiduk",
		park_vehicle_outside = "Parki Sõiduk Väljaspool",
		close_menu = "Sulge Menüü",
		spawned_vehicle = "Sõiduk loodud.",
		spawner_on_timeout = "Sõidukite loomise funktsioon on hetkel ajutiselt keelatud. Proovi hiljem uuesti.",
		spawn_area_not_clear = "Sõiduki loomisel valitud piirkond ei ole vaba.",
		return_button = "Tagasi",
		deposit = "$${amount} Tagatis",
		no_deposit = "Tagatiseta",
		deposit_not_enough_money = "Sul pole piisavalt raha, et maksta tagatist.",
		helipad = "Helikopteri maandumisplats"
	},

	airstrike = {
		airstrike_success = "Õhurünnak loodi edukalt.",
		airstrike_failed = "Õhurünnaku loomine ebaõnnestus."
	},

	airsupport = {
		distance = "Kaugus: ${distance}${unit}",
		time_to_impact = "Aeg sihtmärgile jõudmiseni: ${timeToImpact}",

		out_of_range = "~r~VÄLJAS",

		km = "km",
		mi = "mi",

		airsupport_failed = "Lisatoetuse kutsumine ebaõnnestus."
	},

	alcohol = {
		now_sober = "Sa oled jälle kaine.",
		drunk_state_1 = "Sa oled kergelt joobes.",
		drunk_state_2 = "Oled joobes.",
		drunk_state_3 = "Oled väga joobes.",
		drunk_state_4 = "Oled ohtlikult joobes."
	},

	arcade = {
		use_arcade_machine = "Vajuta ~INPUT_CONTEXT~, et kasutada Arcade'i masinat. Hind on $${cost}.",
		finished_arcade_logs_title = "Mängitud arcade",
		finished_arcade_logs_details = "${consoleName} mängis arcade mängu ja saavutas skoori `${score}`."
	},

	archives = {
		press_to_access_archives = "Vajuta ~INPUT_CONTEXT~, et avada arhiive.",
		archives_title = "Arhiivid",
		no_archives = "Siin pole ühtegi arhiivi.",
		close_menu = "Sulge menüü",
		archive_label = "Juhtum nr. ${case}",

		failed_get_archives = "Arhiivide saamine ebaõnnestus.",
		failed_not_on_duty = "Sa ei ole tööl.",

		archive_created = "Juhtum nr. ${case} loodud.",
		invalid_case_number = "Vigane juhtumi number (täisarv vahemikus 1 kuni 99999).",
		not_near_archive = "Sa pole arhiivi lähedal.",
		failed_create_archive = "Arhiivi loomine ebaõnnestus.",
		archive_already_exists = "Juhtumi number on selles arhiivis juba olemas.",
		archive_destroyed = "Arhiiv koos juhtumi numbriga ${case} hävitati edukalt.",
		archive_maximum_case_count = "Uute juhtumite loomine pole võimalik.",
		failed_destroy_archive = "Arhiivi hävitamine ebaõnnestus.",
		destroy_not_empty = "Saad hävitada ainult tühje arhiive.",

		create_archive_logs_title = "Arhiivi loodud",
		create_archive_logs_details = "${consoleName} lõi loo `${archiveName}` arhiivis, kasutades juhtumit numbriga `${caseNumber}`.",
		destroy_archive_logs_title = "Arhiivi hävitatud",
		destroy_archive_logs_details = "${consoleName} hävitas loo `${archiveName}` arhiivis, kasutades juhtumit numbriga `${caseNumber}`."
	},

	arena = {
		player_died = "${name} suri.",
		player_suicide = "${consoleName} recogió 1x Hongo.",
		player_killed = "${killerName} tappis ${name} relvaga ${deathCause} (${distance}m).",
		hud_info = "Mängijate arv: ${playerAmount}\n\nSurmad: ${deaths}\nTapmised: ${kills}",
		press_to_access_menu = "Vajuta ~INPUT_INTERACTION_MENU~, et avada Arena menüü.",
		this_command_is_only_for_arena = "See käsk on ainult Arena jaoks.",
		stand_still_to_respawn = "Seisa paigal 5 sekundit, et uuesti sündida.",
		respawn_cancelled = "Uuesti sünde tühistati, kuna liikusid.",
		arena_suicide_reason = "Ise tapmine",
		arena = "Arena",
		ordered_airdrop = "Tellitud õhuabi",

		store = "Pood",
		team = "Meeskond",
		leaderboard = "Tabel",
		search = "Otsi",
		add_to_cart = "Lisa ostukorvi",
		unlocks_at_level = "Avaneb tasemel ${level}",
		show_vehicles = "Näita sõidukeid",
		hide_vehicles = "Peida sõidukid",
		balance = "Kontoseis: $${balance}",
		shopping_cart = "${items} eset ($${cost})",
		buy_now = "Osta kohe",
		call_airdrop = "Kutsu kasti",
		empty = "Tühi",
		clear_cart = "Tühjenda ostukorv",
		can_not_afford = "Ei suuda osta",
		brokie_lol = "Brokie lol",
		confirmation_exit_arena = "Kas oled kindel, et soovid lahku arenast?",
		confirmation_buy_now = "Kas oled kindel, et soovid osta ${label} hinnaga $${cost}?",
		yes = "Jah",
		no = "Ei",
		empty_slot = "Tühi koht",
		team_name = "Meeskonna nimi",
		level = "Tase",
		arena = "Arena",
		battle_royale = "Võitlus kuninglikus lahingus",
		arena_gun_game = "Aarene gun game",
		lottery = "Loterii",
		jackpot = "Jackpot",
		daily_tasks = "Igapäevased ülesanded",
		screenshots = "Ekraanipildid",
		categories = "Kategooriad",
		refresh = "Värskenda",
		refreshing = "Laadimine...",
		not_available = "Puudub",

		kill = "Tapmine",
		headshot = "Pähe laskmine",
		killstreak = "Tapmistsükkel",
		assist = "Abistamine",
		battle_royale_win = "Battle Royale Võit",

		level = "Tase",
		position = "Asukoht",
		name = "Nimi",
		kills = "Tapmised",
		deaths = "Surmad",
		kd = "T/S",
		hits = "Pihtimised",
		hits_headshots = "PP",
		headshot_ratio = "HS suhe",
		damage_dealt = "Tehtud kahjustus",
		damage_taken = "Saadud kahjustus",
		matches_played = "Mängud",
		wins = "Võidud",
		win_ratio = "Võiduprotsent",
		xp = "Kogemuspunktid",
		money_won = "Võidetud raha",
		average_percentage = "Keskmine protsent",
		streak = "Järjestikused võidud",
		money_lost = "Raha kaotatud",
		net = "Võrk",
		net_ratio = "Võrgusuhe",
		items_gambled = "Panustatud esemed",
		screenshots_taken = "Ekraanipildid tehtud",

		called_airdrop_logs_title = "Kutsuti Lennuvälja",
		called_airdrop_logs_details = "${consoleName} kutsus lennuvälja."
	},

	atms = {
		withdraw = "Võta välja",
		deposit = "Sissemakse",
		balance = "Kontoseis",
		transfer = "Ülekanne",
		savings_bonds = "Bloqueador de Radio",
		back = "Tagasi",

		amount = "Summa",
		target = "Saaja",
		total = "Entrar Submarino",

		confirm_target = "Kas soovid kanda $${amount} kasutajale nimega \"${name}\"?",
		cancel = "Ei, tühista",
		confirm_transfer = "Jah, kanna raha",

		failed_deposit = "Sissemakse ebaõnnestus",
		failed_withdraw = "Väljavõtt ebaõnnestus",
		failed_transfer = "Ülekanne ebaõnnestus",
		failed_deposit_bonds = "[${InteractionKey}] Entrar Submarino",

		processing = "Töödeldakse...",
		counting_bills = "Rahatähtede loendamine...",

		something_went_wrong = "Midagi läks valesti.",
		error_not_online = "Sinu sihtmärk pole saadaval.",
		error_not_enough_money = "Ei piisa rahast.",
		deposit_amount_big = "ATM-i sissemaksed on piiratud 4 000 dollariga.",
		withdraw_amount_big = "ATM-ist väljavõtud on piiratud 6 000 dollariga.",

		retrieving_card = "Kaardi tagasivõtmine",
		atm_damaged = "See ATM on kahjustatud.",

		press_to_use = "Vajuta ~g~${InteractionKey} ~w~, et kasutada ATM-i.",
		press_to_interact_bank = "Vajuta ~g~${InteractionKey} ~w~, et suhelda pangaga.",

		deposit_log_bank_title = "Pankade deposiidid",
		deposit_log_atm_title = "ATM-i deposiidid",
		deposit_log = "${consoleName} kandis kontole $${amount}.",

		withdraw_log_bank_title = "Panga väljavõtud",
		withdraw_log_atm_title = "ATM väljavõtud",
		withdraw_log = "${consoleName} võttis kontolt maha $${amount}.",

		transfer_log_title = "Panga ülekanne",
		transfer_log = "${consoleName} (#${characterId}) kandis kontolt $${amount} üle kasutajale ${targetConsoleName} (#${targetCharacterId}).",

		deposit_log_bonds_title = "Salir Submarino",
		deposit_bonds_log = "[${InteractionKey}] Salir Submarino"
	},

	attachments = {
		cancel_attachments = "Tühista",
		finish_attachments = "Kinnita",

		modifying_attachments = "No se ha establecido un destino.",

		failed_apply = "Kinnitusi ei õnnestunud rakendada.",
		no_item = "Relv ei ole enam teie inventaris.",
		no_attachment = "Teil pole vajalikku kinnitusi.",
		no_paint = "Teil pole värvi.",
		success = "Kinnitusi rakendati edukalt.",

		not_available = "Teil pole seda kinnitusi oma inventaris.",

		attachment_label_suppressor = "Summuti",
		attachment_label_flashlight = "Taskulamp",
		attachment_label_extended_clip = "Pikendatud padrunipesa",
		attachment_label_extended_pistol_clip = "Pikendatud püstolipadrunipesa",
		attachment_label_extended_smg_clip = "Pikendatud SMG padrun",
		attachment_label_extended_shotgun_clip = "Pikendatud püssirohu padrun",
		attachment_label_luxury = "Luksuslik viimistlus",
		attachment_label_incendiary = "Süütav padrun",
		attachment_label_tracer = "Jälituspadrun",
		attachment_label_hollow_point = "Tühi tipuga padrun",
		attachment_label_scope = "Sihtmärk",
		attachment_label_grip = "Haare",
		attachment_label_drum = "Trommipadrun",
		attachment_label_heavy_barrel = "Raske toru",
		attachment_label_armor_piercing = "Armor-pierce padrunid",
		attachment_label_explosive = "Lõhkelaengutega kuulid",
		attachment_label_sight = "Holograafiline sihik",
		attachment_label_pistol_sight = "Püstoli sihik",
		attachment_label_fmj = "Täiskupliga kuulid",
		attachment_label_scope_nv = "Öise nägemisega optiline sihik",
		attachment_label_scope_thermal = "Termiline optiline sihik",
		attachment_label_stock = "Varu",

		attachment_label_luxury1 = "Luksuslik kammitseja",
		attachment_label_luxury2 = "Ballas",
		attachment_label_luxury3 = "Hustler",
		attachment_label_luxury4 = "Rock",
		attachment_label_luxury5 = "Hater",
		attachment_label_luxury6 = "Armastaja",
		attachment_label_luxury7 = "Mängumees",
		attachment_label_luxury8 = "Kuningas",
		attachment_label_luxury9 = "Vagos",

		attachment_label_luxury_knife_1 = "VIP variatsioon",
		attachment_label_luxury_knife_2 = "Turvamehe variant",

		attachment_label_stock_folded = "Kokkupandav vints",
		attachment_label_stock_unfolded = "Lahtikäiv vints",

		attachment_label_skin_patriotic = "Patriootiline kate",
		attachment_label_skin_brushstroke = "Harjatud kate",
		attachment_label_skin_skull = "Koljukate",
		attachment_label_skin_leopard = "Leopardi nahk",
		attachment_label_skin_zebra = "Sebra nahk",
		attachment_label_skin_geometric = "Geomeetriline nahk",

		label_no_skin = "Ei ole nahka",

		no_tint = "Ilma toonita",

		tint_normal_0 = "Must",
		tint_normal_1 = "Roheline",
		tint_normal_2 = "Kuldne",
		tint_normal_3 = "Roosa",
		tint_normal_4 = "Armee",
		tint_normal_5 = "LSPD",
		tint_normal_6 = "Oranž",
		tint_normal_7 = "Plaatina",

		tint_mk2_0 = "Klassikaline must",
		tint_mk2_1 = "Klassikaline hall",
		tint_mk2_2 = "Klassikaline kahevärviline",
		tint_mk2_3 = "Klassikaline valge",
		tint_mk2_4 = "Klassikaline beež",
		tint_mk2_5 = "Klassikaline roheline",
		tint_mk2_6 = "Klassikaline sinine",
		tint_mk2_7 = "Klassikaline pruun",
		tint_mk2_8 = "Klassikaline pruun ja must",
		tint_mk2_9 = "Punane kontrast",
		tint_mk2_10 = "Sinine kontrast",
		tint_mk2_11 = "Kollane kontrast",
		tint_mk2_12 = "Oranž kontrast",
		tint_mk2_13 = "Julge roosa",
		tint_mk2_14 = "Julge lilla ja kollane",
		tint_mk2_15 = "Julge oranž",
		tint_mk2_16 = "Julge roheline ja lilla",
		tint_mk2_17 = "Julged punased omadused",
		tint_mk2_18 = "Julged rohelised omadused",
		tint_mk2_19 = "Julged tsüaani omadused",
		tint_mk2_20 = "Julged kollased omadused",
		tint_mk2_21 = "Julge punane ja valge",
		tint_mk2_22 = "Julge sinine ja valge",
		tint_mk2_23 = "Metallik kuldne",
		tint_mk2_24 = "Metallik plaatina",
		tint_mk2_25 = "Metallikhall ja lilla",
		tint_mk2_26 = "Metalliklilla ja laim",
		tint_mk2_27 = "Metallikpunane",
		tint_mk2_28 = "Metallikroheline",
		tint_mk2_29 = "Metalliksinine",
		tint_mk2_30 = "Metallikvalge ja akvamariin",
		tint_mk2_31 = "Metallikpunane ja kollane",

		tint_ray_0 = "Kosmoserändur",
		tint_ray_1 = "Lilla",
		tint_ray_2 = "Roheline",
		tint_ray_3 = "Oranž",
		tint_ray_4 = "Roosa",
		tint_ray_5 = "Kuldne",
		tint_ray_6 = "Plaatina",

		last_concat = "ja",

		attachments_logs_title = "Lisaosad ja toonid",
		attachments_logs_details = "${consoleName} muutis oma relva `${weaponName}`: ${modifications}.",

		removed_attachments = "Eemaldatud ${removed}",
		added_attachments = "Lisatud ${added}",
		tint_changed = "Muudeti läige väärtuseks `${before}` kuni `${after}`"
	},

	audio = {
		audio_id = "Audio ${audioId}",
		illegal_sound_effect = "Üritati öelda teistele klientidele mängida välise heli ilma nõuetekohaste õigusteta.",
		url_invalid = "Sisestatud URL pole kehtiv. Seda peab olema üles laaditud turvalise ühendusega (https://).",
		url_missing = "Palun lisa heli URL, mida soovid mängida.",
		played_audio_for_self = "Mängiti audio endale.",
		played_audio_for_player = "Mängiti audio mängijale ${consoleName}.",
		played_audio_for_everyone = "Esitus heli kõigi jaoks.",
		played_audio_effect_for_everyone_title = "Esitatud heli efekt kõigile",
		played_audio_effect_for_everyone_details = "${consoleName} esitas heli efekti kõigile. Heli URL oli `${url}` ja mängimise helitugevus oli `${volume}`.",
		played_audio_effect_for_player_title = "Esitatud heli efekt mängijale",
		played_audio_effect_for_player_details = "${consoleName} esitas heli efekti mängijale ${targetConsoleName}. Heli URL oli `${url}` ja mängimise helitugevus oli `${volume}`."
	},

	balls = {
		press_to_pick_up_ball = "Vajuta ~INPUT_CONTEXT~, et korvpalli üles võtta."
	},

	banana_peels = {
		slipped_logs_title = "Libises banaanikoore peal",
		slipped_logs_details = "${consoleName} libises banaanikoore peal üle ${slipForce}.",

		slip_0 = "kõndimine",
		slip_1 = "jooksmine",
		slip_2 = "jooks"
	},

	bandaids = {
		label = "${type} Plaastrid",

		baby_yoda = "Bebe-Yoda",
		batman = "Batman",
		care_bear = "Hoolivad Karud",
		hello_kitty = "Tere-Kitty",
		hotwheels = "Kuumad Rattad",
		mc_queen = "Võidusõiduauto Saabastega Kass",
		minions = "Nässakad",
		pony = "Minu Väike Poni",
		power_puff = "Power-Puff Tüdrukud",
		spiderman = "Ämblikmees",
		star_wars = "Tähesõjad",

		failed_random_bandaid = "Ei õnnestunud saada juhuslikku plaastrit.",

		received_bandaid_logs_title = "Vastuvõetud plaastrid",
		received_bandaid_logs_details = "${consoleName} sai lennutranspordiga 1x ${bandaid}-i.",
		spawned_bandaid_logs_details = "${consoleName} andis endale 1x ${plaastrit}."
	},

	battle_royale = {
		failed_to_toggle_battle_royale = "Ei õnnestunud lülitada sisse lahinguroja.",
		toggled_battle_royale_on = "Lülitas lahinguroja sisse.",
		toggled_battle_royale_off = "Lülitas lahinguroja välja.",
		battle_royale_info = "Oled lahinguroja järjekorras! Hetkel on järjekorras ${battleRoyaleQueueLength} mängijat.",
		toggle_battle_royale_missing_permissions = "Mängija üritas lülitada lahinguroja sisse, kuid tal pole selleks vajalikke õigusi.",
		start_battle_royale_missing_permissions = "Mängija üritas käivitada lahingukuningriiki, kuid tal ei olnud selleks vajalikke õigusi.",
		unable_to_start_battle_royale_not_active = "Lahingukuningriiki ei saa käivitada, kuna see pole lubatud.",
		not_enough_players_in_queue = "Lahingukuningriiki ei saa käivitada, kuna järjekorras pole piisavalt mängijaid.",
		zone_idling = "Tsoon on nüüd ooteasendis.",
		zone_advancing = "Tsooni edenemine toimub nüüd.",
		player_died = "${name} suri: järelejäänud mängijaid on ${remainingPlayers}.",
		player_suicide = "${name} tegi enesetapu ${deathCause}ga: järelejäänud mängijaid on ${remainingPlayers}.",
		player_killed = "${killerName} tappis ${name} ${deathCause}ga (${distance}m): järelejäänud mängijaid on ${remainingPlayers}.",
		player_won = "${name} on võitnud!",
		your_team = "Sinu võistkond:",
		received_lobby_invite = "Sa oled saanud kutsungi serverisse ${serverId}. Liitu serveriga kasutades `/br_join ${serverId}`",
		unable_to_invite_yourself = "Sa ei saa ennast kutsuda.",
		unable_to_join_yourself = "Sa ei saa ennast liita.",
		player_already_invited = "Mängija id-ga `${serverId}` on juba kutsutud.",
		sent_player_invite = "Kutsusid mängijat ID-ga `${serverId}`",
		joined_lobby = "Liitusid fuajeega.",
		player_not_invited = "Sind ei ole kutsutud sellesse fuajeesse.",
		you_are_not_in_a_lobby = "Sa ei ole üheski fuajees.",
		left_lobby = "Lahkusid fuajeest.",
		created_match = "Lõin mängu ${playerAmount} mängijaga.",
		created_match_no_vehicles = "Lõin mängu ilma sõidukiteta ${playerAmount} mängijaga.",
		zone_complete = "Tsoon on lõpule jõudnud.",
		battle_royale_match_info = "Praegune tsoon: ${zoneId}/${zoneAmount}\nJärelejäänud aeg: ${remainingTime}s\nHetkel: ${currentlyLabel}\nJärelejäänud mängijad: ${remainingPlayers}\nTapetud: ${kills}",
		idling = "Ootamine",
		advancing = "Edasiliikumine",
		battle_royale = "Lahing Royale",
		press_to_deploy_parachute = "Vajuta ~INPUT_PARACHUTE_DEPLOY~, et laskuda langevarjuga.",
		join_battle_royale_instance_missing_permissions = "Mängija üritas ühineda lahingu royale instantsiga, kuid tal ei olnud selleks vajalikke õigusi.",
		no_match_found = "${consoleName} ei ole üheski mängus.",
		joined_instance = "Liitun instantsiga ${consoleName}.",
		leave_battle_royale_instance_missing_permissions = "Mängija üritas lahkuda lahing royale instantsist, kuid tal ei olnud selleks vajalikke õigusi.",
		left_instance = "Lahkusite juhtumist.",
		failed_to_leave_instance = "Ei saanud juhtumist lahkuda, kuna te ei olnud üheski.",
		already_in_match = "Ei saa ühineda juhtumiga, kuna te juba olete matšis.",
		lobby_is_full = "Üritati liituda täis lobiga.",
		zone_center = "Tsooni keskus",
		team_marker = "Meeskonna marker",
		trophy_information_top = "${name} on parim!",
		trophy_information_bottom = "Kokku oli matšis ${playerAmount} mängijat ja tapeti ${kills} neist.",
		not_able_to_join_while_in_match = "Te ei saa matšis olles liituda lobby'ga."
	},

	bazaar = {
		access_bazaar = "Vajuta ~INPUT_CONTEXT~, et pääseda bazaaari.",

		bazaar_blip = "Turg",

		no_items = " Sul pole siin midagi müüa.",
		price_total = "${price} kogu maksumus",
		price_per = "${price} ühe kohta",

		sold_logs_title = "Turu müük",
		sold_logs_details = "${consoleName} müüs ${amount}x `${itemName}` eest $${price}.",

		sold_items = "Müüsid ${amount}x ${label} eest $${money}.",
		failed_sell_items = "Esemete müük ebaõnnestus.",

		store_title = "Bazaari pood",

		close_menu = "Sulge menüü"
	},

	beds = {
		no_nearby_available_bed_found = "Läheduses ei leitud saadaval voodit.",
		press_to_leave_bed = "Väljumiseks vajutage ~INPUT_CONTEXT~."
	},

	bicycles = {
		no_bicycle_nearby = "Ühtegi jalgratast läheduses pole.",
		failed_pickup_bicycle = "Jalgratta võtmine ebaõnnestus.",
		picking_up = "Jalgratta võtmine",
		moving_too_fast = "Liigud liiga kiiresti, et jalgratast võtta.",

		picked_up_logs_title = "Jalgratta võtmine",
		picked_up_logs_details = "${consoleName} võttis jalgratta võrgu id-ga #${networkId} (`${modelName}`).",
		dropped_bicycle_logs_title = "Mahajäetud jalgratas",
		dropped_bicycle_logs_details = "${consoleName} jäi maha jalgrattaga, mida nad kandsid."
	},

	bills = {
		select_player = "Vali mängija",
		no_nearby_players = "Sinu lähedal ei ole mängijaid, keda saaks arvele võtta.",

		amount = "Kogusumma",
		reason = "Põhjus",
		bill_title = "Uus saadetud arve",
		sender = "Saatja",
		amount = "Kogusumma",
		reason = "Põhjus",
		no_receipt = "Taskukviitung puudub",
		yes_receipt = "Taskukviitung",
		tip = "Vihje",
		none = "Puudub",
		custom = "Erisoodustus",
		custom_tip = "Erisoodustuse näit (summas $)",

		close = "Sulge",
		back = "Tagasi",
		send = "Saada",
		pay = "Maksa",

		receipt = "Taskukviitung (${name})",
		receipt_text = "Arve kasutajalt ${name}\n\nSumma: ${amount} dollarit\nPõhjus: ${reason}",

		invalid_player = "Mängija on eemal või liiga kaugel.",
		bill_created = "Edukalt saadeti arve summaga $${amount} ${name}-le.",
		failed_create_bill = "Ebaõnnestus arve saatmine summaga $${amount} ${name}-le.",
		no_reason = "Põhjust ei ole määratud.",
		failed_pay_bill = "Ebaõnnestus arve tasumine.",
		not_enough_money = "Sul ei ole piisavalt raha selle arve tasumiseks.",
		bill_paid = "Edukalt maksti $${amount} ${name}-le.",
		bill_paid_notification = "${name} tasus sinu arve ${tip} dollarise lisatasuga.",

		paid_bill_title = "Makstud Arve",
		paid_bill_details = "${consoleName} tasus ${targetName} arve ${amount} dollariga (lisatasuga ${tip}).",
		bill_created_title = "Arve loodud",
		bill_created_details = "${consoleName} saatis arve summas $${amount} kasutajale ${targetName} põhjusega `${reason}`."
	},

	blackjack = {
		play_blackjack = "Blackjacki mängimiseks vajutage ~INPUT_CONTEXT~.",
		play_blackjack_high_limit = "Kõrglimiidiga Blackjacki mängimiseks vajutage ~INPUT_CONTEXT~."
	},

	blindfold = {
		blindfolding_player = "Paberikoti panemine mängijale",
		blindfolding_self = "Paberikoti panemine endale",
		hold_to_take_blindfold_off = "Paberikoti eemaldamiseks hoia ~INPUT_VEH_HEADLIGHT~.",
		hold_to_take_blindfold_off_holding = "Paberkoti eemaldamise jätkamiseks hoia edasi.",
		hold_to_take_blindfold_off_chat = "Vajuta ja hoia **${HeadlightKey}** nuppu, et eemaldada kottpaber peast."
	},

	blips = {
		comedy_club = "Komöödiaklubi",
		bean_machine = "Oa Masin",
		arcade_bar = "Arkaadibaar",
		japanese_restaurant = "Jaapani Restoran",
		luxury_autos = "Luksusautod",
		rockford_records = "Rockfordi Plaadifirma",
		dispensary = "Ravimite Väljastuspunkt",
		haunted_high_school = "Kummitav Keskkool",
		sushi_restaurant = "Sushi Restoran",

		bank = "Pank",
		hospital = "Haigla",
		bolingbroke = "Bolingbroke Vangla",
		police_department = "Politseijaoskond",
		motel = "Motel",
		tattoo_parlor = "Tatoveerimis Salong",
		repair_shop = "Remonditöökoda",
		material_vendor = "Materjalide müüja",
		pdm = "Premium Deluxe Motorsport",
		ls_customs = "Los Santos Customs",
		jewelry_store = "Vangelico Juveelipood",
		pd_air_hq = "Politsei õhuväe peakorter",
		pd_sea_hq = "Politsei mereväe peakorter",
		ems_air_hq = "KIIRABI õhuväe peakorter",
		ems_boat_hq = "KIIRABI paadi peakorter",
		ems_garage = "KIIRABI garaaž"
	},

	bombs = {
		not_in_plane = "Sa ei ole lennukis.",
		not_in_plane_anymore = "Sa pole enam lennukis.",
		interaction_menu = "~INPUT_CONTEXT~ Lisa ${name} pommi, ~INPUT_VEH_HEADLIGHT~ Vaheta tüüpi.",
		too_low = "Te olete liiga madalal, et pomme maha visata.",

		you_are_not_in_a_vehicle = "Te ei sõida praegu ühegi sõidukiga.",
		ignition_bomb_on = "Lülitasite süüteküünla pommi sisse.",
		ignition_bomb_off = "Lülitasite süüteküünla pommi välja.",
		failed_ignition_bomb = "Ebaõnnestus süüteküünla pommi lülitamine.",

		recharging_countermeasures = "Laadimine vastumeetmeid ${percentage}%.",

		ignition_bomb_triggered_logs_title = "Süüteküünla pomm",
		ignition_bomb_triggered_logs_details = "${consoleName} käivitas mootori sõidukis, mille süüteküünla külge oli paigaldatud pomm.",

		toggle_ignition_bomb_missing_permissions = "Mängija üritas käivitamis-pommi sisse/välja lülitada, kuid neil puudusid nõutavad õigused."
	},

	boomboxes = {
		boombox = "Boombox",
		play = "Mängi",
		pause = "Paus",
		skip_song = "Järgmine lugu",
		volume = "Helitugevus",
		music = "Muusika",

		mute_boomboxes = "Vaigista boomboxid",
		mute_boomboxes_enabled = "Kõik boomboxid on nüüd vaigistatud.",
		mute_boomboxes_disabled = "Kõik boomboxid pole enam vaigistatud.",

		store_boombox = "Pane Boombox oma inventari",
		put_boombox_down = "Pane Boombox maha",
		use_boombox = "Kasuta Boomboxi",
		hold_to_pick_boombox_up = "Hoia nuppu, et võtta Boombox üles",
		illegal_boombox_item_id = "Üritati kasutada ebaseadusliku eseme ID-ga boomboxi.",
		logs_attempted_to_add_song_title = "Üritatud lisada laulu",
		logs_attempted_to_add_song_details = "${consoleName} üritas lisada laulu video URL-iga `${url}` boomboxile ID-ga `${boomboxId}`.",
		logs_wiped_all_boomboxes_title = "Kustutatud kõik boomboxid",
		logs_wiped_all_boomboxes_details = "${consoleName} kustutas kõik boomboxid.",
		logs_wiped_nearby_boomboxes_title = "Kustutatud läheduses olevad boomboxid",
		logs_wiped_nearby_boomboxes_details = "${consoleName} kustutas kõik raadiuses `${radius}` olevad boomboxid.",
		radius_invalid = "Raadius `${radius}` pole sobiv väärtus.",
		wiped_all_boomboxes = "Kustutati ${boomboxesWiped} boombox'id.",
		wiped_nearby_boomboxes = "Kustutati ${boomboxesWiped} boombox'id raadiuses `${radius}`.",
		failed_to_wipe_boomboxes = "Boomboxide kustutamine ebaõnnestus.",
		no_boomboxes = "Boomboxe ei leitud kustutamiseks.",
		no_boomboxes_within_radius = "Boomboxe ei leitud kustutamiseks raadiuses `${radius}`."
	},

	boosting = {
		boosting_contracts = "Lisateenimise Lepingud",
		join_queue = "Liitu järjekorraga",
		leave_queue = "Lahku järjekorrast",

		transfer_crypt = "Kryptode ülekanne",
		transfer_crypt_info = "Sisesta summa ja mängija serveri ID, kellele soovid üle kanda.",

		amount = "Summa",
		server_id = "Serveri ID",

		transfer = "Kanna üle",
		cancel = "Tühista",

		start_contract = "Alusta lepingut",
		start_contract_info = "Kas oled kindel, et soovid selle lepingu alustada?",

		yes = "Jah",
		no = "Ei",

		transfer_contract = "Lepingu ülekanne",
		transfer_contract_info = "Sisesta isiku serveri ID, kellele soovid lepingu üle kanda.",

		decline_contract = "Keeldu lepingust",
		decline_contract_info = "Kas soovite kindlasti selle lepingu tagasi lükata?",

		cancel_contract = "Tühista leping",
		cancel_contract_info = "Kas olete kindel, et soovite selle lepingu tühistada?",

		no_contracts = "Teil pole ühtegi lepingut saadaval. Järgige järjekorda, et neid saada.",

		model = "Mudel",
		plate = "Registreerimisnumber",
		buy_in = "Sisseostuhind",
		expires_in = "Aegumine",

		start_contract_type = "Mida soovite teha?",
		start_contract_type_info = "Kas soovite teha pakikohaletoimetamise või VIN-kratsimise? VIN-kratsimine maksab lisatasu ${cost} CRYPT.",

		drop_off = "Mahalaadimine",
		vin_scratch = "VIN kriimustus",

		start_contract = "Alusta lepingut",
		transfer_contract = "Lepingu ülekanne",
		decline_contract = "Keeldu lepingust",
		mark_pickup = "Tähista kättesaamine",
		cancel_contract = "Tühista leping",

		new_contract = "Sul on uus täiendav leping. (Klass: ${className})",
		started_contract = "Alustatud leping.",
		failed_contract = "Ebaõnnestunud leping.",
		completed_contract = "Lõpetatud leping. Sulle maksti ${payout} CRYPT.",
		completed_contract_vin_scratch = "Lõpetatud leping. Sõiduk asub teie garaažis.",
		marked_pickup = "Märgitud korje.",

		vehicle_tracker_is_being_hacked = "Sõiduki jälgimisseade on häkitud. Jääb ${hacksRemaining} häkk(i).",
		use_chip_to_hack_vehicle_tracker = "Sõiduki jälgimisseadme häkkimiseks kasutage kiipi. Jääb ${hacksRemaining} häkk(i).",
		vehicle_hacking_is_timed_out = "Peate enne järgmist häkkimist veidi ootama. Jääb ${hacksRemaining} häkk(i).",
		drop_the_vehicle_off = "Asetage sõiduk märgitud kohta.",
		drop_off = "Mahalaadimine",
		exit_the_vehicle = "Väljuge sõidukist ja lahkuge piirkonnast ülesande lõpetamiseks.",

		vehicle_is_being_tampered = "Sõidukit ${locationLabel} lähedal üritatakse omavoliliselt kasutada. Sõiduki mudel on ${modelLabel} (klass ${className}) ja registreerimisnumber on ${plate}.",
		vehicle_tamper = "Sõiduki puutumatuse rikkumine (${plate})",
		vehicle_tracker_alert = "Sõiduki jälitus hoiatus (${plate})",

		exit_the_vehicle_to_scratch = "Väljuge sõidukist VIN kriipsu tegemiseks.",

		scratch = "VIN-koodi kriimustamine",
		press_to_scratch = "Vajuta ~g~${InteractionKey} ~w~, et VIN-koodi kriimustada.",

		scratching_vehicle = "Sõiduki VIN-koodi kriimustamine",

		deleted_boosted_vehicle_logs_title = "Kustutatud tõstetud sõiduki logid",
		deleted_boosted_vehicle_logs_details = "${consoleName} kustutas tõstetud sõiduki ID-ga ${vehicleId}.",

		spawned_contract = "Edukalt tekitati leping.",
		spawned_contract_for = "Edukalt tekitati leping kasutajale ${displayName}.",

		already_max_vin_scratched_vehicles = "Teil on juba maksimaalne arv VIN-koodiga sõidukeid oma garaažis.",
		contract_has_expired = "See leping on aegunud.",
		you_already_have_a_contract_started = "Teil on juba alustatud leping."
	},

	brochure = {
		welcome_to = "Tere tulemast",
		san_andreas = "San Andreasesse",

		getting_started = "Alustamine",
		getting_started_1 = "Oled just lennujaama saabunud ja tõenäoliselt küsid endalt, kuhu nüüd minna? Kõik uued kodanikud saavad tasuta algaja auto. See ei pruugi olla parim, kuid see on sinu oma. Sa leiad selle parklast.",
		getting_started_2 = "Kui sõiduauto juhtimine ei meeldi teile, saate ka kõndida, paluda sõbral teile järele tulla või helistada taksoteenusele oma telefoni abil. Telefoni saate avada ``P`` nuppu vajutades.",
		getting_started_3 = "Enamus sõidukeid on pagasiruumiga, kuhu võite panna mitte ainult esemeid, vaid ka teisi inimesi. Teil on võimalik kedagi tõsta /carry käsuga, seejärel minna pagasiruumi juurde, seda avada (/door) ja inimene sinna panna. Samamoodi saab nad sealt ka välja tuua. Kui teie sõiduk on tagurpidi, saate selle uuesti õigetele ratastele teha käsuga /flip.",

		where_now = "Kus nüüd?",
		where_now_1 = "Nüüd, kui olete hankinud endale esimese sõiduki, saate hakata uurima linna. Kuna peate olema hästi söönud ja joonud, on toidukauplus hea koht alustamiseks. Seal saate osta toitu ja jooke ning ka sidemeid, mis aitavad teil vigastustest kiiremini paraneda.",
		where_now_2 = "Kui olete varustusega varunud, peaksite minema kohtumajja ja saama kodaniku kaardi. See toimib teie ID-kaardi, juhiloa ja relvaloa all.",

		getting_a_job = "Töö leidmine",
		getting_a_job_1 = "Kuidas raha teenida? Alustada saate töö otsimisest. Töökuulutusi leiate Life Invaderilt. Selle ikooni leiad kaardilt punase dokumendikohvri ikoonina. Siin saate leida valiku erinevatest töödest, millele saate kandideerida.",
		getting_a_job_2 = "Veokitöö nõuab kaupade kohaletoimetamist erinevatesse asukohtadesse. Peate esmalt ostma veoki veokitöölisi peakorterist 2000 dollariga.",
		getting_a_job_3 = "Töökoha valimisel saab kulleritöö puhul kätte kättetoimetamise peakontori kaudu pakitud kättetoimetamise. Pakid tuleb seejärel erinevatesse linnaosadesse kohale toimetada. Kullerfirma tagaluugi saab avada, kui lähened sellele ja vajutad /door.",
		getting_a_job_4 = "Saate hakata ka jäätmeveoks. Jäätmeveo peakorteris saate kaasa võtta prügiveoki ja hakata jäätmeid koguma.",
		getting_a_job_5 = "Kui olete ühe töökohtadele registreerunud, näete kaardil mitmesuguseid märke. Suunapunkt näitab, kuhu minna, et alustada.",

		your_appearance = "Teie välimus",
		your_appearance_1 = "Riideid nagu püksid, kingad, särk ja muud saab tasuta muuta igas rõivakaupluses. Saate oma juukseid, habe ja meiki muuta juuksurisalongis. Mõlemad rõivakauplused ja juuksurisalongid on kaardi peal nähtavad.",
		your_appearance_2 = "Pärast esimesel korral sisse logimist, ei saa sa enam üldist välimust nagu nahavärv, näojooned jne muuta. Kui sul juhtub väljanägemisega tõrkeid või lõpetad liiga kiirelt, siis saad küsida uut välimust kasutades /report.",

		medical_care = "Meditsiiniabi",
		medical_care_1 = "Kui sa said vigastada, võid minna haiglasse sisse registreerima ja ennast ravima. Haigla asukoht on kaardil märgitud. Sulle võib abi olla ka sidemetest ja esmaabikomplektidest, millega saad ennast ise ravida.",
		medical_care_2 = "Kui sa taaselustud ilma haiglasse toomata või lõpetad mängu olles vigastatud, võid kaotada osa oma esemetest. Serveri taaskäivitamine loetakse 'mängu lõpetamiseks'.",

		safety_hint = "Vihje: Saate relva ohutuks muutmiseks kasutada klahvi ${keybind}. Olge turvaline!",

		closing_sentence = "Linnas on palju teisigi asju teha! Küsige ringi ja leidke sõpru ;)"
	},

	buddy_pass = {
		buddy_pass = "Sõbra Pääse",
		information_part_1 = "Pushige oma sõber järjekorras koheselt sõbra pääsmega!",
		information_part_2 = "Kõigil God Tieri toetajatel on see funktsioon tasuta üks kord kasutada.",
		information_part_3 = "'Pääse' on aktiivne kuni teie sõber katkestab ühenduse serveriga. Seejärel saate teise inimese läbi lasta.",
		information_part_4 = "Küsi neilt järjekorra PIN-koodi, et nad edasi lükata!",
		queue_pin = "Järjekorra PIN-kood",
		available = "Saadaval",
		close = "Sulge",
		webstore = "Veebipood",
		buddy_passes = "Sõbrapiletid",
		push_through = "Lükka edasi!",
		queue_pin_not_set = "Sa pead lisama järjekorra PIN-koodi.",
		queue_pin_is_a_4_digit_pin = "Järjekorra PIN-kood on 4-kohaline kood.",
		no_buddy_passes = "Sul pole ühtegi sõbrapiletit.",
		no_buddy_passes_available = "Sul pole ühtegi saadaolevat sõbrapiletit.",
		no_queue_with_queue_pin = "Järjekorras ei olnud kedagi selle koodiga.",
		buddy_pushed_through = "Sa surusid ${playerName} järjekorrast läbi!",

		buddy_pass_used_logs_title = "Buddy Pass'i kasutati",
		buddy_pass_used_logs_details = "${consoleName} kasutas oma Buddy Pass'it, et lükata läbi ${targetConsoleName}."
	},

	bus_map = {
		bus_tracker = "Buss"
	},

	cache = {
		download_progress = "Allalaadimise edenemine:\n- Sõidukid: ${vehiclesDone}/${vehiclesTotal}\n- Objektid: ${objectsDone}/${objectsTotal}\n- NPC-d: ${pedsDone}/${pedsTotal}\n- Riided: ${clothingRequested}/${clothingTotal}",
		slow_download_enabled = "Aeglane allalaadimine on lubatud.",
		slow_download_disabled = "Aeglane allalaadimine on keelatud.",

		join_cache_disabled = "Join vahemälu on keelatud.",
		join_cache_enable = "Join vahemälu on lubatud."
	},

	caffeine = {
		chest_pain = "Sul on rinnusvalu.",
		heart_attack = "Sul on südameatakk.",
		heart_attack_death = "Südameatakk (kofeiin)"
	},

	capri_sun = {
		capri_sun_name = "Capri Sun (${flavor})"
	},

	cargo = {
		cargo_already_active = "Cargo on juba aktiivne.",
		started_cargo = "Cargo on käivitatud.",
		cargo_not_active = "Cargo ei ole aktiivne.",
		ended_cargo = "Kaup on lõppenud.",
		cargo_crate = "Kaubakast",
		use_chip_to_hack_crate = "Kasuta ~g~kiipi ~w~ kaubakasti häkkimiseks.",
		crate_is_being_hacked = "Kast on häkkimisel.",
		crate_will_unlock_in = "Kast lahti lukustub ~g~${time}~w~ pärast.",
		press_k_to_access = "Vajuta ~g~K ~w~, et siseneda."
	},

	casino = {
		successfully_set_screen_label = "Ekraani identifikaatori väärtus on edukalt muudetud: `${screenLabel}`.",
		successfully_queued_screen_label = "Ekraan nimega `${screenLabel}` on edukalt lisatud järjekorda.",
		failed_to_set_screen_label = "Ekraani nimega `${screenLabel}` seadmine ebaõnnestus.",
		invalid_screen_label = "Ekraani nimega `${screenLabel}` ei eksisteeri.",
		missing_screen_label = "Puudub ekraani nimega parameeter.",
		set_screen_label_already_set_to = "Ekraani nimi on juba määratud kui `${screenLabel}`.",
		only_available_in_the_casino = "Seda saab teha ainult kasiinos olles.",
		casino_blip = "Kasiino"
	},

	cayo_perico = {
		approaching_out_of_bounds = "Te lähenete kaardipiiridele",
		out_of_bounds = "Te olete kaardipiiridest väljas"
	},

	cayo_perico_world = {
		keep_heading_in_direction_in = "Jätkake suunaga ${direction}, et jõuda Cayo Perico'le. \n(Jäänud ${distanceToTeleport}m)",
		keep_heading_in_direction_out = "Jätkake suunaga ${direction}, et jõuda Los Santosele. \n(Jäänud ${distanceToTeleport}m)",

		south = "lõuna",
		south_east = "edel",
		east = "ida",
		north_east = "kirre",
		north = "põhi",
		north_west = "loode",
		west = "lääs",

		not_the_driver = "Selleks, et saaks Cayo Pericole lendama pead sa juhtima sõidukit.",
		not_a_cayo_vehicle = "Cayo Pericole saamiseks pead olema paadis, lennukis või helikopteris.",
		entering_cayo_perico_logs_title = "Sisenen Cayo Pericole",
		entering_cayo_perico_logs_details = "${consoleName} sisenes Cayo Pericole.",
		exiting_cayo_perico_logs_title = "Lahkun Cayo Pericolt",
		exiting_cayo_perico_logs_details = "${consoleName} lahkus Cayo Pericolt.",
		entering_cayo_perico_with_passengers_logs_title = "Sisenen Cayo Pericole reisijatega",
		entering_cayo_perico_with_passengers_logs_details = "${consoleName} siseneb Cayo Pericosse ${passengersAmount} kaasreisijaga.",
		exiting_cayo_perico_with_passengers_logs_title = "Lahkus Cayo Pericost koos kaasreisijatega",
		exiting_cayo_perico_with_passengers_logs_details = "${consoleName} lahkub Cayo Pericost ${passengersAmount} kaasreisijaga."
	},

	christmas = {
		claimed_advent_calendar_hatch_title = "Nõutud advendikalendri luuk",
		claimed_money = "${consoleName} nõudis $${amount}.",
		claimed_item = "${consoleName} nõudis `${itemLabel}`.",
		claimed_vehicle = "${consoleName} võttis omale jõuluteemalise sõiduki.",
		claimed_queue_priority = "${consoleName} võttis endale nädala jagu järjekorra prioriteeti.",

		claimed_advent_calendar_bonus_title = "Võeti vastu Advent-kalendri boonus",
		claimed_advent_calendar_bonus_details = "${consoleName} võttis vastu advent-kalendri boonuse, mis on sõiduk mudeli nimega `${modelName}`."
	},

	cinema = {
		failed_to_find_cinema_identifier = "Ei õnnestunud leida kino identifikaatorit.",

		screen_model_size = "Suurus: x: ${sizeX}, y: ${sizeY}",
		screen_model_offset = "Nihke koordinaadid: x: ${offsetX}, y: ${offsetY}, z: ${offsetZ}",
		screen_model_rotation = "Pööramine: x: ${rotationX}, y: ${rotationY}, z: ${rotationZ}",
		screen_model_volume = "Helitugevus: ${volumeRadius} (${volumeCutOffRadius})",
		screen_model_model = "Mudel: ${modelName}",

		locked = "Lukustatud",

		add_video_to_queue_title = "Lisa video järjekorda",
		add_video_to_queue_details = "${consoleName} lisas video järjekorda kinosaalis video võtmega `${videoType}:${videoId}`.",

		blacklisted_video = "Keelatud video võtmega `${videoKey}`.",
		failed_to_blacklist_video = "Ei õnnestunud keelata video võtmega `${videoKey}`.",
		video_is_already_blacklisted = "Video '${videoKey}' on juba mustas nimekirjas.",

		watching_movie = "Vaatab filmi '${title}'",

		cinema = "Kino",
		doppler_cinema = "Doppler kino",
		sandy_cinema = "Sandy kino",
		tv = "Telekas",
		monitor = "Monitor",
		laptop = "Sülearvuti",
		projector = "Projektor",

		zoom = "Nihuta kaamera edasi ja tagasi",
		slow = "Aeglane",
		toggle_lights = "Lülita tuled sisse/välja",
		exit = "Välju",

		-- NOTE: UI locales
		title = "Pealkiri",
		length = "Pikkus",
		date = "Kuupäev",
		author = "Autor",
		queue = "Järjekord",
		search_through_library = "Otsi raamatukogust...",
		add_to_library = "Lisa video raamatukokku (URL)...",

		share_your_screen = "Jaga oma ekraani",
		how_to_share_screen = "Ekraani jagamine OBS-iga:",
		how_to_share_screen_part_1 = "Ava OBS ja mine seadetesse.",
		how_to_share_screen_part_2 = "'Stream' sektsioonis vali 'Custom...' teenusena.",
		how_to_share_screen_part_3 = "Sisesta järgmised väärtused.",
		how_to_share_screen_part_4 = "Alusta OBS-is voogedastamist.",
		how_to_share_screen_part_5 = "Klõpsa allpool nuppu 'Mine otseülekandesse'.",
		server = "Server",
		stream_key = "Voogedastuse võti",
		cancel = "Tühista",
		go_live = "Mine otseülekandesse!",
		copied = "Kopeeritud!",
		low_latency = "Voogedastuse latentsuse vähendamine:",
		how_to_reduce_latency_part_1 = "Ava OBS ja mine seadistuste juurde.",
		how_to_reduce_latency_part_2 = "Vali 'Väljundrežiimi' all 'Väljund' jaotises 'Täpsem' valik.",
		how_to_reduce_latency_part_3 = "Otsi kodeerija seadetest välja Keyframe'i intervalli seadet.",
		how_to_reduce_latency_part_4 = "Seadista võtme intervall 1 sekundiks.",
		custom_stream = "Kohandatud voog"
	},

	cinematic = {
		cinematic = "Kinomäng",
		black_bars_set_to = "Kinomängu mustad ribad on nüüd seatud ${blackBarsHeight}% peale."
	},

	claymores = {
		arm_claymore = "[${InteractionKey}] Seadista",
		disarm_claymore = "[${InteractionKey}] Eemalda",

		disarming = "Eemaldamine",
		arming = "Seadistamine"
	},

	clothing = {
		outfit_failed = "Riietuse rakendamine ebaõnnestus.",
		missing_outfit = "Puuduva riietuse tõttu olekut ei rakendatud.",
		missing_outfit_name = "Riietusnime puudu.",
		invalid_outfit = "Vigane riietus.",
		no_nearby_clothing_spot = "Läheduses pole ühtegi riietumiskohta.",
		trunk_closed = "Pagasnik on suletud.",
		trunk_too_far = "Oled liiga kaugel pagasnikust.",
		moved_too_far_trunk = "Liikusid liiga kaugele pagasnikust.",
		invalid_job = "Sul ei ole vajalikku ametit selle riietumiskoha kasutamiseks.",
		outfit_list = "Riietused",
		no_saved_outfits = "Sul pole salvestatud ühtegi riietust.",
		saved_outfit = "Salvestatud riietus `${name}` edukalt.",
		replaced_outfit = "Asendatud riietus `${name}` edukalt.",
		failed_save_outfit_exists = "Salvestamine ebaõnnestus, riietus ${name} on juba olemas.",
		failed_save_outfit = "Riietuse salvestamine ebaõnnestus.",
		deleted_outfit = "Riietus ${name} kustutatud edukalt.",
		failed_delete_outfit_doesnt_exists = "Kustutamine ebaõnnestus, riietus ${name} ei ole olemas.",
		failed_delete_outfit = "Riietuse kustutamine ebaõnnestus.",

		player_model_missmatch = "Sa ei saa jagada riietust selle mängijaga.",
		player_too_far = "Mängija on liiga kaugel.",
		shared_outfit_too_far = "${displayName} jagas riietust sinuga, kuid sa ei ole lähedal riietuspoele.",
		outfit_shared = "Riiete komplekti jagamine õnnestus.",
		outfit_not_shared = "Riiete komplekti jagamine ebaõnnestus.",
		shared_outfit = "${displayName} jagas sinuga riiete komplekti. Kirjuta `yes`, et nõustuda või `no`, et keelduda. (See aegub 30 sekundi pärast)",
		applied_shared_outfit = "Jagatud riiete komplekti rakendamine õnnestus.",
		declined_shared_outfit = "Keelduti jagatud riiete komplektist.",

		no_nearby_dead_player = "Läheduses ei ole surnud mängijat.",
		failed_to_steal_shoes = "Jalatsite varastamine ebaõnnestus.",

		loading_model = "Laadin mängija mudelit...",
		loading_spawn = "Loodud mängija mudel...",
		loading_preload_data = "Laadin pede andmeid...",
		loading_set_data = "Seadistatakse tegelase andmeid...",
		loading_tattoos = "Seadistatakse tätoveeringud...",
		loading_finalize = "Viimistletakse..."
	},

	clothing_bag = {
		packed_outfit = "Riietus on edukalt kotikesse pakitud.",
		packed_outfit_failed = "Riietuse kotikesse panemine ebaõnnestus.",

		item_description_filled = "Riietus \"<i>${outfit}</i>\" on pakitud.",
		item_description_empty = "Riidekotti ei ole midagi pakitud.",

		bag_empty = "Riidekott on tühi.",
		wrong_ped_model = "See riietus ei sobi sinusuguse kehakuvandiga tegelasele.",
		cant_use_in_vehicle = "Sa ei saa riidekotti kasutada sõiduki juures.",
		cant_use_while_moving = "Te ei saa riidekotti liikudes kasutada.",

		opening_bag = "Ava kott"
	},

	clothing_menu = {
		component = "Osa",
		texture = "Tekstuur",
		palette = "Palett",

		clothing = "Riided",
		accessories = "Aksessuaarid",
		face = "Nägu",
		outfits = "Riietekomplektid",

		reset_zoom = "Lähtesta suum",
		zoom_level = "Suum",

		variation = "Variatsioon",
		color = "Värv",
		secondary_color = "Teine värv",
		opacity = "Läbipaistvus",

		limited_customization = "Sellel tegelasel puuduvad/piiratud kohandamisvõimalused.",

		press_to_access = "Vajutage ~INPUT_CONTEXT~, et pääseda riietuspoesse.",
		press_no_freemode = "See tegelaskuju ei saa riietuspoesse ligi.",
		press_no_freemode_barber = "Selle ped-mudeli juurdepääs juuksurile pole võimalik.",
		press_to_access_barber = "Vajuta ~INPUT_CONTEXT~, et minna juuksurisse.",
		press_to_change_outfit = "Vajuta ~INPUT_CONTEXT~, et vahetada rõivastust.",

		clothingstore = "Rõivapood",
		barbershop = "Juuksurisalong",

		changing_area = "Riietusruum",
		barber = "Juuksemeister",

		switch_outfit = "Vahetada rõivastust.",
		replace_outfit = "Asenda see rõivastus.",
		new_outfit = "Salvesta rõivastus",
		no_saved_outfits = "Salvestatud rõivastusi pole.",
		last_updated = "Viimati uuendatud ${ago}.",

		save_outfit_title = "Salvesta uus rõivastus",
		save_outfit_label = "Riiete nimi:",
		save_outfit_button = "Salvesta",

		replace_outfit_title = "Asenda riietus",
		replace_outfit_description = "Kas soovite kindlasti asendada riietuse nimega ${outfit}?",
		replace_outfit_button = "Asenda",

		delete_outfit_title = "Kustuta riietus",
		delete_outfit_description = "Kas soovite kindlasti kustutada riietuse nimega ${outfit}?",
		delete_outfit_button = "Kustuta",

		packing_outfit_title = "Riiete pakkimine",
		packing_outfit_description = "Valige riietekoti pesa, kuhu soovite pakkida riietuse \"${outfit}\".",

		cancel_button = "Tühista",

		remove_button = "Eemalda ${label}",
		menu_description = "Vajuta \"V\", et lülitada kaamerat. Saad hiirega liigutada liugureid või kasutada nooleklahve. Saad vajutada \"A\" ja \"D\" oma positsiooni muutmiseks.",

		failed_toggle_clothing_menu = "Viga riiete menüü avamisel.",
		clothing_menu_success = "Riiete menüü avati edukalt mängijale ${consoleName}.",
		barber_menu_success = "Viga juuksuri menüü avamisel.",
		failed_toggle_barber_menu = "Juuksuri menüü avati edukalt mängijale ${consoleName}.",

		hats_and_helmets = "Mütsid/Kiivrid",
		glasses = "Päikseprillid",
		earrings = "Kõrvarõngad",
		left_wrist = "Vasak randme",
		right_wrist = "Parem randme",

		pants = "Püksid",
		shoes = "Jalatsid",
		undershirt = "Allpesu",
		necklaces_and_ties = "Kaelakeed ja lipsud",
		decals = "Kleepsud",
		shirts = "Särgid",
		arms = "Käed",
		masks = "Maskid",
		armor = "Rüü",
		parachute_and_bag = "Langevari ja kott",

		hair = "Juuste stiil",

		blemishes = "Plekid näol",
		facial_hair = "Lõua- ja põskkarvad",
		eyebrows = "Kulmud",
		ageing = "Vananemine",
		makeup = "Meik",
		blush = "Põsepuna",
		complexion = "Naha jume",
		sun_damage = "Päikesekahjustus",
		lipstick = "Huulepulk",
		moles_and_freckles = "Sünnimärgid ja tedretähnid",
		chest_hair = "Rinnakarvad",
		body_blemishes = "Keha plekid",
		add_body_blemish = "Lisa keha plekk"
	},

	command_socket = {
		connected = "Ühendatud käsu sokliga.",
		disconnected = "Lahutatud käsu soklist.",
		failed_reconnect = "Ei õnnestunud uuesti ühenduda käsu sokliga."
	},

	containers = {
		drill_container = "Vajuta ~INPUT_CONTEXT~, et avada anumat puurimisega.",

		drilling_container = "Puuri konteiner",
		failed_drill = "Konteineri puurimine ebaõnnestus.",
		drill_success = "Konteineri avamine puurimise abil õnnestus.",

		container_blip = "Konteiner"
	},

	crafting = {
		menu_title = "Käsitöö",
		close_menu = "Sulge menüü",

		smelt_materials = "Materjalide sulatamine",
		press_to_smelt_materials = "[${SeatEjectKey}] Materjalide sulatamine",

		glass_recipe = "Sulata klaas",
		steel_recipe = "Sulata teras",
		scrap_metal_recipe = "Sulata taaskasutatud metall",
		aluminium_recipe = "Sulata alumiinium",

		smelting_materials = "Sulatan ${usedItems}",
		smelted_materials = "Sulatati ${usedItems}.",
		failed_smelt_materials = "Materjalide sulatamine ebaõnnestus.",

		scrap_knife = "Vanametallist noad",
		press_to_scrap_knife = "[${SeatEjectKey}] Vanametalli nuga",
		failed_scrap_knife = "Nuga ei saa vanametalliks muuta.",

		scrap_item = "Vanametallist esemed",
		press_to_scrap_item = "[${SeatEjectKey}] Vanametallist esemed",
		failed_scrap_item = "Esemeid ei saa vanametalliks muuta.",

		cut_item = "Lõigatud kartulid",
		press_to_cut_item = "[${SeatEjectKey}] Lõika kartulid",
		cutting_item = "Lõikan 3 kartulit",
		cut_item_done = "Lõikasin kartulid friikartuliteks.",
		failed_cut_item = "Kartulite lõikamine ebaõnnestus.",

		fry_item = "Fritüüri friikartuleid",
		press_to_fry_item = "[${SeatEjectKey}] Fritüüri friikartuleid",
		frying_item = "Friikartulite fritüürimine",
		fried_item = "Valmistatud Belgia friikartulid.",
		failed_fry_item = "Friikartulite valmistamine ebaõnnestus.",

		grill_item = "Grill",
		press_to_grill_item = "[${SeatEjectKey}] Grill",
		grilling_patty = "Grilli Pats",
		grilled_patty = "Grillitud kotlet",
		failed_grill_patty = "Kotleti grillimine ebaõnnestus.",
		grilling_bacon = "Bekoniga grillimine",
		grilled_bacon = "Grillitud bekon",
		failed_grill_bacon = "Bekoni grillimine ebaõnnestus.",
		frying_egg = "Muna praadimine",
		fried_egg = "Praetud muna",
		failed_fry_egg = "Muna praadimine ebaõnnestus.",

		patty_recipe = "Kotleti grillimine",
		bacon_recipe = "Suitsuliha",
		egg_recipe = "Muna praadimine",

		hamburger_recipe = "Hamburger",
		cheeseburger_recipe = "Juustuburger",
		bacon_burger_recipe = "Bekoniburger",
		bne_burger_recipe = "Bekoni ja muna burger",
		veggie_burger_recipe = "Taimetoitlane burger",

		assemble_burger = "Koosta burger",
		press_to_assemble_burger = "[${SeatEjectKey}] Koosta burger",
		assembling_burger = "Hamburgeri valmistamine",
		assembled_burger = "Valmistas hamburgeri",
		failed_assemble_burger = "Hamburgeri valmistamine ebaõnnestus.",
		assembling_cheeseburger = "Valmistab juustuburgerit",
		assembled_cheeseburger = "Valmistas juustuburgeri",
		failed_assemble_cheeseburger = "Juustuburgeri valmistamine ebaõnnestus.",
		assembling_bacon_burger = "Valmistab peekoniburgerit",
		assembled_bacon_burger = "Valmistas peekoniburgeri",
		failed_assemble_bacon_burger = "Pekoniburgeri valmistamine ebaõnnestus.",
		assembling_bne_burger = "Valmistab peekoni- ja munaburgerit",
		assembled_bne_burger = "Valmistas peekoni ja muna burgeri",
		failed_assemble_bne_burger = "Bakoni ja muna burgeri valmistamine ebaõnnestus.",
		assembling_veggie_burger = "Vegiburgeri valmistamine",
		assembled_veggie_burger = "Valmis Vegiburger",
		failed_assemble_veggie_burger = "Vegiburgeri valmistamine ebaõnnestus.",

		mix_avocado_smoothie = "Sega avokaado smoothie",
		press_to_mix_avocado_smoothie = "[${SeatEjectKey}] Sega avokaado smoothie",
		mixing_avocado_smoothie = "Avokaado smuuti segamine",
		mixed_avocado_smoothie = "Valmis avokaado smuuti",
		failed_mix_avocado_smoothie = "Avokaado smuuti segamine ebaõnnestus.",

		fill_nitro_tank = "Täitke nitrotank",
		press_to_fill_nitro_tank = "[${SeatEjectKey}] Täida nitrotank",
		filling_nitro_tank = "Nitrotanki täitmine",
		filled_nitro_tank = "Nitrotank täidetud",
		failed_fill_nitro_tank = "Nitrotanki täitmine ebaõnnestus.",

		craft_sheet_metal = "Loo lehtmetall",
		press_to_craft_sheet_metal = "[${SeatEjectKey}] Loo lehtmetall",
		crafting_sheet_metal = "Lehe Metalli Töötlemine",
		crafted_sheet_metal = "Valmistatud lehe metall.",
		failed_craft_sheet_metal = "Lehe metalli töötlemine ebaõnnestus.",

		craft_empty_tank = "Tühja Mahuti Kokkupanek",
		press_to_craft_empty_tank = "[${SeatEjectKey}] Kokku panna tühi mahuti",
		crafting_empty_tank = "Tühja mahuti kokkupanek",
		crafted_empty_tank = "Tühi mahuti on kokku pandud.",
		failed_craft_empty_tank = "Tühja mahuti kokkupanek ebaõnnestus.",

		craft_valve = "Ventiili Kokkupanek",
		press_to_craft_valve = "[${SeatEjectKey}] Kokku panna ventiil",
		crafting_valve = "Klapi kokkupanek",
		crafted_valve = "Klapiga kokkupandud.",
		failed_craft_valve = "Klapiga kokkupanemine ebaõnnestus.",

		craft_nitro_tank = "Lisavarustuse paagi kokkupanek",
		press_to_craft_nitro_tank = "[${SeatEjectKey}] Lisavarustuse paagi kokkupanek",
		crafting_nitro_tank = "Lisavarustuse paagi kokkupanek käib",
		crafted_nitro_tank = "Lisavarustuse paaki kokku pandud.",
		failed_craft_nitro_tank = "Lisavarustuse paagi kokkupanek ebaõnnestus.",

		salvage_meth_table = "Metamfetamiini valmistuslaualt osade eemaldamine",
		press_to_salvage_meth_table = "[${SeatEjectKey}] Metamfetamiini valmistuslaualt osade eemaldamine",
		salvaging_meth_table = "Metamfetamiini valmistuslaualt osade eemaldamine käib",
		salvaged_meth_table = "Taastatud meth laud.",
		failed_salvage_meth_table = "Meth laua taastamine ebaõnnestus.",

		refill_vape = "Täida e-sigaret",
		press_to_refill_vape = "[${SeatEjectKey}] Täida e-sigaret",
		refilling_vape = "E-sigareti täitmine käsil",
		refilled_vape = "E-sigaret on täidetud.",
		failed_refill_vape = "E-sigareti täitmine ebaõnnestus.",

		plain_vape = "Tavaline (Ilma maitseta)",
		weed_vape = "THC õli",
		mango_vape = "Mango maitse",
		strawberry_vape = "Maasika maitse",
		menthol_vape = "Mentooli maitse",
		apple_vape = "Õunte maitse",
		blueberry_vape = "Mustika maitse",

		deconstructing_item = "Lammutan ${usedItems}",
		deconstructed_item = "Lammutatud ${usedItems}.",

		deconstruct_pistol = "Lammuta püstol",
		press_to_deconstruct_pistol = "[${SeatEjectKey}] Lammuta püstol",
		failed_deconstruct_pistol = "Püstolu lammutamine ebaõnnestus.",

		deconstruct_smg = "Lammuta SMG",
		press_to_deconstruct_smg = "[${SeatEjectKey}] Lammuta SMG",
		failed_deconstruct_smg = "SMG lammutamine ebaõnnestus.",

		deconstruct_shotgun = "Lammuta Pumppüss",
		press_to_deconstruct_shotgun = "[${SeatEjectKey}] Lammuta pumppüss",
		failed_deconstruct_shotgun = "Pumppüssi lammutamine ebaõnnestus.",

		deconstruct_rifle = "Lammuta Vintpüss",
		press_to_deconstruct_rifle = "[${SeatEjectKey}] Lammuta vintpüss",
		failed_deconstruct_rifle = "Väljalaskepüssi lammutamine ebaõnnestus.",

		extract_copper = "Ekstraheerige vask",
		press_extract_copper = "[${SeatEjectKey}] Ekstraheerige vask",
		extracting_copper = "Vase ekstraheerimine",
		extracted_copper = "Vask on ekstraheeritud.",
		failed_extract_copper = "Vase ekstraheerimine ebaõnnestus.",

		processing_item = "Töödeldakse ${usedItems}",
		processed_item = "${usedItems} töödeldud.",

		process_copper = "Töötle vasenuggetsid",
		press_process_copper = "[${SeatEjectKey}] Töötle vasenuggetsid",
		failed_process_copper = "Vasenuggetside töötlemine ebaõnnestus.",

		process_rubber = "Kumm töötlemine",
		press_process_rubber = "[${SeatEjectKey}] Töötle kummi",
		failed_process_rubber = "Kummi töötlemine ebaõnnestus.",

		craft_pvc_pipe = "Valmista PVC toru",
		press_craft_pvc_pipe = "[${SeatEjectKey}] Valmista PVC toru",
		crafting_pvc_pipe = "Valmistatakse PVC toru",
		crafted_pvc_pipe = "Valmistatud PVC toru.",
		failed_craft_pvc_pipe = "PVC toru valmistamine ebaõnnestus.",

		process_aluminium = "Alumiiniumi töötlemine",
		press_process_aluminium = "[${SeatEjectKey}] Töötle alumiiniumi",
		failed_process_aluminium = "Alumiiniumi töötlemine ebaõnnestus.",

		process_steel = "Terase töötlemine",
		press_process_steel = "[${SeatEjectKey}] Töötle terast",
		failed_process_steel = "Terase töötlemine ebaõnnestus.",

		craft_lens = "Läätse valmistamine",
		press_craft_lens = "[${SeatEjectKey}] Valmista lääts",
		crafting_lens = "Prillide valmistamine",
		crafted_lens = "Valmistatud lääts.",
		failed_craft_lens = "Läätse valmistamine ebaõnnestus.",

		craft_sight = "Sihi valmistamine",
		press_craft_sight = "[${SeatEjectKey}] Valmista Siht",
		crafting_sight = "Sihi valmistamine",
		crafted_sight = "Siht on valmistatud.",
		failed_craft_sight = "Sihi valmistamine ebaõnnestus.",

		craft_pistol_sight = "Püstolisihi valmistamine",
		press_craft_pistol_sight = "[${SeatEjectKey}] Valmista Püstolisiht",
		crafting_pistol_sight = "Püstolisihi valmistamine",
		crafted_pistol_sight = "Püstolisiht on valmistatud.",
		failed_craft_pistol_sight = "Püstoli optilise sihiku valmistamine ebaõnnestus.",

		craft_scope = "Valmista püssi vaatlusvahend",
		press_craft_scope = "[${SeatEjectKey}] Valmista püssi vaatlusvahend",
		crafting_scope = "Püssi vaatlusvahendi valmistamine",
		crafted_scope = "Valmistatud püssi vaatlusvahend.",
		failed_craft_scope = "Püssi vaatlusvahendi valmistamine ebaõnnestus.",

		craft_grip = "Valmista haarats",
		press_craft_grip = "[${SeatEjectKey}] Valmista haarats",
		crafting_grip = "Haaratsi valmistamine",
		crafted_grip = "Valmistatud haarats.",
		failed_craft_grip = "Haaratsi valmistamine ebaõnnestus.",

		craft_extended_clip = "Valmista pikendatud padrunipakk",
		press_craft_extended_clip = "[${SeatEjectKey}] Valmista pikendatud padrunipakk",
		crafting_extended_clip = "Laiendatud klipi valmistamine",
		crafted_extended_clip = "Laiendatud klipp valmistatud.",
		failed_craft_extended_clip = "Laiendatud klipi valmistamine ebaõnnestus.",

		craft_extended_smg_clip = "Laiendatud SMG klipi valmistamine",
		press_craft_extended_smg_clip = "[${SeatEjectKey}] Laiendatud SMG klipi valmistamine",
		crafting_extended_smg_clip = "Laiendatud SMG klipi valmistamine",
		crafted_extended_smg_clip = "Laiendatud SMG klipp valmistatud.",
		failed_craft_extended_smg_clip = "Laiendatud SMG klipi valmistamine ebaõnnestus.",

		craft_extended_shotgun_clip = "Laiendatud Püssikuuli klipi valmistamine",
		press_craft_extended_shotgun_clip = "[${SeatEjectKey}] Valmista pikendatud püssirohu patroon",
		crafting_extended_shotgun_clip = "Valmistatakse pikendatud püssirohu patrooni",
		crafted_extended_shotgun_clip = "Pikendatud püssirohu patroon on valmistatud.",
		failed_craft_extended_shotgun_clip = "Pikendatud püssirohu patrooni valmistamine ebaõnnestus.",

		craft_extended_pistol_clip = "Valmista pikendatud püstoli patroon",
		press_craft_extended_pistol_clip = "[${SeatEjectKey}] Valmista pikendatud püstoli patroon",
		crafting_extended_pistol_clip = "Valmistatakse pikendatud püstoli patrooni",
		crafted_extended_pistol_clip = "Pikendatud püstolipadruni valmistatud edukalt.",
		failed_craft_extended_pistol_clip = "Pikendatud püstolipadruni valmistamine ebaõnnestus.",

		craft_drum = "Valmista trummelmagaasitankur",
		press_craft_drum = "[${SeatEjectKey}] Valmista trummelmagaasitankur",
		crafting_drum = "Trummelmagaasitankri valmistamine",
		crafted_drum = "Trummelmagaasitankri valmistamine õnnestus.",
		failed_craft_drum = "Trummelmagaasitankri valmistamine ebaõnnestus.",

		craft_suppressor = "Valmista summuti",
		press_craft_suppressor = "[${SeatEjectKey}] Valmista summuti",
		crafting_suppressor = "Summuti valmistamine",
		crafted_suppressor = "Summuti valmistamine õnnestus.",
		failed_craft_suppressor = "Vaigistaja valmistamisel tekkis viga.",

		craft_flashlight = "Valmista taskulamp",
		press_craft_flashlight = "[${SeatEjectKey}] Valmista taskulamp",
		crafting_flashlight = "Taskulambi valmistamine",
		crafted_flashlight = "Taskulamp on valmistatud.",
		failed_craft_flashlight = "Taskulambi valmistamisel tekkis viga.",

		mix_paint = "Sega värvi",
		press_mix_paint = "[${SeatEjectKey}] Sega värvi",
		mixing_paint = "Värvi segamine",
		mixed_paint = "Värv on segatud.",
		failed_mix_paint = "Värvi segamisel tekkis viga.",

		modify_knuckle = "Muuda messingnukke",
		press_modify_knuckle = "[${SeatEjectKey}] Muuda Brass Knuckles",
		modifying_knuckle = "Muudan Brass Knuckles'i",
		modified_knuckle = "Brass Knuckles on muudetud.",
		failed_modify_knuckle = "Brass Knuckles'i muutmine ebaõnnestus.",

		craft_jammer = "Valmista Jammer",
		press_craft_jammer = "[${SeatEjectKey}] Valmista Jammer",
		crafting_jammer = "Valmistan Jammerit",
		crafted_jammer = "Jammer on valmistatud.",
		failed_craft_jammer = "Jammeri valmistamine ebaõnnestus.",

		craft_advanced_repair_kit = "Valmista Edasijõudnud remondikomplekt",
		press_craft_advanced_repair_kit = "[${SeatEjectKey}] Valmista Edasijõudnud remondikomplekt",
		crafting_advanced_repair_kit = "Tööriista kasti edasijõudnud kursuse valmistamine",
		crafted_advanced_repair_kit = "Käsitööna valmistatud edasijõudnud tööriista kast.",
		failed_craft_advanced_repair_kit = "Edasijõudnud tööriista kasti valmistamine ebaõnnestus.",

		process_metal = "Töötle metalli",
		press_process_metal = "[${SeatEjectKey}] Töötle metalli",

		aluminium_powder_recipe = "Valmista alumiiniumipulbrit",
		pulverizing_aluminium = "Alumiiniumi purustamine",
		pulverized_aluminium = "Purustatud alumiinium.",
		failed_pulverize_aluminium = "Alumiiniumi purustamine ebaõnnestus.",

		iron_oxide_recipe = "Fabricar óxido de hierro",
		pulverizing_steel = "Terase purustamine",
		pulverized_steel = "Purustatud teras.",
		failed_pulverize_steel = "Teras ei purunenud.",

		steel_filings_recipe = "Fabricar limaduras de acero",
		filing_steel = "Limando acero",
		filed_steel = "Acero limado.",
		failed_file_steel = "Error al limar el acero.",

		craft_steel_file = "Fabricar lima de acero",
		press_craft_steel_file = "[${SeatEjectKey}] Fabricar lima de acero",
		crafting_steel_file = "Elaborando lima de acero",
		crafted_steel_file = "Lima de acero elaborada.",
		failed_craft_steel_file = "Error al elaborar la lima de acero.",

		mix_thermite = "Sega termiit",
		press_mix_thermite = "[${SeatEjectKey}] Sega termiit",
		mixing_thermite = "Termiidi segamine",
		mixed_thermite = "Segatud termiit.",
		failed_mix_thermite = "Termiidi segamine ebaõnnestus.",

		deconstruct_phone = "Lammuta telefon",
		press_deconstruct_phone = "[${SeatEjectKey}] Lammuta telefon",
		failed_deconstruct_phone = "Telefoni lammutamine ebaõnnestus.",

		deconstruct_radio = "Lammuta raadio",
		press_deconstruct_radio = "[${SeatEjectKey}] Lammuta raadio",
		failed_deconstruct_radio = "Raadio lammutamine ebaõnnestus.",

		deconstruct_raspberry = "Lammuta vaarikas",
		press_deconstruct_raspberry = "[${SeatEjectKey}] Lammuta vaarikas",
		failed_deconstruct_raspberry = "Vaarika lammutamine ebaõnnestus.",

		deconstruct_chip = "Lammuta kiip",
		press_deconstruct_chip = "[${SeatEjectKey}] Lammuta kiip",
		failed_deconstruct_chip = "Kiipide lammutamine ebaõnnestus.",

		craft_device_scanner = "Valmista Seadme skanner",
		press_craft_device_scanner = "[${SeatEjectKey}] Valmista Seadme skanner",
		crafting_device_scanner = "Valmistatakse Seadme skannerit",
		crafted_device_scanner = "Valmistati seadme skanner.",
		failed_craft_device_scanner = "Seadme skanneri valmistamine ebaõnnestus.",

		craft_decryption_key = "Valmista Dekrüpteerimisvõti",
		press_craft_decryption_key = "[${SeatEjectKey}] Valmista Dekrüpteerimisvõti",
		crafting_decryption_key = "Valmistatakse Dekrüpteerimisvõtit",
		crafted_decryption_key = "Valmistatud dekrüpteerimisvõti.",
		failed_craft_decryption_key = "Dekrüpteerimisvõtme valmistamine ebaõnnestus.",

		break_decryption_key = "Murra dekrüpteerimisvõti",
		press_break_decryption_key = "[${SeatEjectKey}] Murra dekrüpteerimisvõti",
		breaking_decryption_key = "Krakitud krüpteerimisvõti",
		broke_decryption_key = "Krüpteerimisvõti on purustatud.",
		failed_break_decryption_key = "Krüpteerimisvõtme purustamine ebaõnnestus.",

		craft_tire_wall = "Valmistada rehvisein",
		press_craft_tire_wall = "[${SeatEjectKey}] Valmistada rehvisein",
		crafting_tire_wall = "Rehviseina valmistamine",
		crafted_tire_wall = "Rehvisein valmistatud.",
		failed_craft_tire_wall = "Rehviseina valmistamine ebaõnnestus.",

		fix_tire_wall = "Paranda rehvisein",
		press_fix_tire_wall = "[${SeatEjectKey}] Paranda rehvisein",
		fixing_tire_wall = "Rehviseina parandamine",
		fixed_tire_wall = "Rehvisein parandatud.",
		failed_fix_tire_wall = "Rehvikindla fikseerimine ebaõnnestus.",

		saw_shotgun = "Saha püssirohi",
		press_saw_shotgun = "[${SeatEjectKey}] Saha püssirohi",
		sawing_shotgun = "Püssirohu saagimine",
		sawed_shotgun = "Püssirohi saetud.",
		failed_saw_shotgun = "Püssirohu saagimine ebaõnnestus.",

		use_microwave = "Kasuta mikrolaineahju",
		press_to_use_microwave = "[${SeatEjectKey}] Kasuta mikrolaineahju",

		brownies_recipe = "Brownie'd",
		baking_brownies = "Pruunide küpsiste küpsetamine",
		baked_brownies = "Pruunid küpsised küpsetatud.",
		failed_bake_brownies = "Pruunide küpsiste küpsetamine ebaõnnestus.",

		weed_gummies_recipe = "Canabisega geelikarud",
		making_weed_gummies = "Valmistatakse canabisega geelikarusid",
		made_weed_gummies = "Valmistatud canabisega geelikarud.",
		failed_make_weed_gummies = "Canabisega geelikarude valmistamine ebaõnnestus.",

		mix_brushstroke_paint = "Sega harjavärv",
		press_mix_brushstroke_paint = "[${SeatEjectKey}] Segage pintslilöökide värv",
		mixing_brushstroke_paint = "Segan pintslilöökide värvi",
		mixed_brushstroke_paint = "Segatud pintslilöökide värv.",
		failed_mix_brushstroke_paint = "Pintslilöökide värvi segamisel tekkis viga.",

		mix_skull_paint = "Segage koljumaali",
		press_mix_skull_paint = "[${SeatEjectKey}] Segage koljumaali",
		mixing_skull_paint = "Segan koljumaali",
		mixed_skull_paint = "Segatud koljumaal.",
		failed_mix_skull_paint = "Koljumaali segamisel tekkis viga.",

		mix_leopard_paint = "Segage leopardimaali",
		press_mix_leopard_paint = "[${SeatEjectKey}] Sega leopardi värvi",
		mixing_leopard_paint = "Segan leopardi värvi",
		mixed_leopard_paint = "Leopardi värv on valmis.",
		failed_mix_leopard_paint = "Ebaõnnestus segada leopardi värvi.",

		mix_zebra_paint = "Sega sebra värvi",
		press_mix_zebra_paint = "[${SeatEjectKey}] Sega sebra värvi",
		mixing_zebra_paint = "Segan sebra värvi",
		mixed_zebra_paint = "Sebra värv on valmis.",
		failed_mix_zebra_paint = "Ebaõnnestus segada sebra värvi.",

		mix_geometric_paint = "Sega geomeetrilist värvi",
		press_mix_geometric_paint = "[${SeatEjectKey}] Sega geomeetrilist värvi",
		mixing_geometric_paint = "Segan geomeetrilist värvi",
		mixed_geometric_paint = "Segatud geomeetriline värv.",
		failed_mix_geometric_paint = "Geomeetrilise värvi segamine ebaõnnestus.",

		mix_patriotic_paint = "Segan patriootilist värvi",
		press_mix_patriotic_paint = "[${SeatEjectKey}] Sega patriootilist värvi",
		mixing_patriotic_paint = "Segan patriootilist värvi",
		mixed_patriotic_paint = "Segatud patriootiline värv.",
		failed_mix_patriotic_paint = "Patriootilise värvi segamine ebaõnnestus.",

		craft_radio_decrypter = "Valmista raadio dekrüpteerija",
		press_craft_radio_decrypter = "[${SeatEjectKey}] Valmista raadio dekrüpteerija",
		crafting_radio_decrypter = "Raadio dekrüpteerija valmistamine",
		crafted_radio_decrypter = "Valmistatud raadio dekrüpteerija.",
		failed_craft_radio_decrypter = "Raadio dekrüpteerija valmistamisel tekkis viga.",

		craft_grenade_shell = "Granaadi kesta valmistamine",
		press_craft_grenade_shell = "[${SeatEjectKey}] Valmista granaadi kest",
		crafting_grenade_shell = "Granaadi kesta valmistamine",
		crafted_grenade_shell = "Valmistatud granaadi kest.",
		failed_craft_grenade_shell = "Granaadi kesta valmistamisel tekkis viga.",

		craft_grenade_pin = "Granaadi hargi valmistamine",
		press_craft_grenade_pin = "[${SeatEjectKey}] Valmista granaadi hari",
		crafting_grenade_pin = "Granaaditüübi näppu valmistamine",
		crafted_grenade_pin = "Granaadi näpp valmistatud.",
		failed_craft_grenade_pin = "Granaadi näpu valmistamine ebaõnnestus.",

		craft_gas_grenade = "Gaasi granaadi valmistamine",
		press_craft_gas_grenade = "[${SeatEjectKey}] Valmista gaasi granaat",
		crafting_gas_grenade = "Gaasi granaadi valmistamine",
		crafted_gas_grenade = "Gaasi granaat valmistatud.",
		failed_craft_gas_grenade = "Gaasi granaadi valmistamine ebaõnnestus.",

		break_apart_ring = "Lahuta sõrmus",
		press_break_apart_ring = "[${SeatEjectKey}] Lahuta sõrmus",
		breaking_ring = "Sõrmuse lahtiharutamine",
		broke_ring = "Sõrmus lahtiharutatud.",
		failed_break_ring = "Sõrmuse lahtiharutamine ebaõnnestus.",

		mix_lean = "Sega Lean",
		press_to_mix_lean = "[${SeatEjectKey}] Sega Lean",
		mixing_lean = "Segan Lean'i",
		mixed_lean = "Lean on segatud.",
		failed_mix_lean = "Lean'i segamine ebaõnnestus.",

		craft_pager = "Valmista Pager",
		press_to_craft_pager = "[${SeatEjectKey}] Valmista Pager",
		crafting_pager = "Pageri valmistamine",
		crafted_pager = "Pager on valmistatud.",
		failed_craft_pager = "Pagari valmistamine ebaõnnestus.",

		craft_multi_tool = "Valmista Mitmekülgne Tööriist",
		press_to_craft_multi_tool = "[${SeatEjectKey}] Valmista Mitmekülgne Tööriist",
		crafting_multi_tool = "Valmistan Mitmekülgset Tööriista",
		crafted_multi_tool = "Mitmekülgne tööriist on valmistatud.",
		failed_craft_multi_tool = "Mitmekülgse tööriista valmistamine ebaõnnestus.",

		mix_grimace_shake = "Sega Grimace Shake",
		press_to_mix_grimace_shake = "[${SeatEjectKey}] Sega Grimace Shake",
		mixing_grimace_shake = "Segan Grimace Shake'i",
		mixed_grimace_shake = "Segatud grimace shake.",
		failed_mix_grimace_shake = "Ebaõnnestus grimassi shake'i segamine.",

		assemble_snowlauncher = "Koosta lumepallipilduja",
		press_to_assemble_snowlauncher = "[${SeatEjectKey}] Kokkupanemine Lumepalli loopija",
		assembling_snowlauncher = "Lumepalli loopija koostamine",
		assembled_snowlauncher = "Kokku pandud lumepalli loopija.",
		failed_assemble_snowlauncher = "Lumepalli loopija kokkupanemine ebaõnnestus.",

		deconstruct_ammo = "Lammuta laskemoon",
		press_to_deconstruct_ammo = "[${SeatEjectKey}] Lammuta laskemoon",

		pistol_deconstruct_recipe = "Lammuta püstoli laskemoon",
		shotgun_deconstruct_recipe = "Lammuta püssi laskemoon",
		sub_deconstruct_recipe = "Lammuta automaadi laskemoon",
		rifle_deconstruct_recipe = "Lahuta automaadivõrku",

		deconstructing_ammo = "Võrgu lahutamine",
		deconstructed_ammo = "Võrgu lahutamine õnnestus.",
		failed_deconstruct_ammo = "Võrgu lahutamine ebaõnnestus.",

		craft_ammo = "Loo võrk",
		press_to_craft_ammo = "[${SeatEjectKey}] Loo võrk",

		pistol_ammo_recipe = "Loo käsiõhupüstoli võrk",
		shotgun_ammo_recipe = "Loo püssihaavli võrk",
		sub_ammo_recipe = "Loo automaadivõrk",
		rifle_ammo_recipe = "Loo püssivõrk",

		crafting_ammo = "Võrgu loomine",
		crafted_ammo = "Võrgu loomine õnnestus.",
		failed_craft_ammo = "Ebaõnnestus laskemoona valmistamine.",

		process_weed = "Käitle Kanepit",
		press_to_process_weed = "[${SeatEjectKey}] Käitle kanepit",

		package_1q_recipe = "Pakend 4x 1q Kanepit",
		packaging_1q = "4x 1q Kanepi pakendamine",
		packaged_1q = "Pakendatud 4x 1q kanepit.",
		failed_package_1q = "Ebaõnnestus 4x 1q kanepi pakendamine.",

		process_bud_recipe = "Töötle kanepit",
		processing_bud = "Kanepi töötlemine",
		processed_bud = "Töödeldud kanep",
		failed_process_bud = "Kanepi töötlemine ebaõnnestus",

		process_meat = "Töötle liha",
		press_to_process_meat = "[${SeatEjectKey}] Töötle liha",

		beef_sausages_recipe = "Veiseliha vorstid",
		crafting_beef_sausages = "Veiseliha vorstide valmistamine",
		crafted_beef_sausages = "Valmistatud veiseliha vorstid",
		failed_craft_beef_sausages = "Veiseliha vorstide valmistamine ebaõnnestus",

		bacon_recipe = "Suitsuliha",
		crafting_bacon = "Suitsuliha valmistamine",
		crafted_bacon = "Valmistatud peekon.",
		failed_craft_bacon = "Pekoni valmistamine ebaõnnestus.",

		no_required_items = "Sul pole kõiki vajalikke esemeid.",

		debug_multi = "-Mitmed väljundid-",

		used_crafting_station_title = "Valmistamisejaam",
		used_crafting_station_details = "${consoleName} kasutas valmistamisjaama, et valmistada ${amount}x ${itemName}."
	},

	crashes = {
		crash_failed = "Ei õnnestunud põhjustada kokkujooksu mängijale ${consoleName}.",
		crash_success = "Mängijale ${consoleName} põhjustati kokkujooks."
	},

	creation = {
		turn_right = "Pööra paremale",
		turn_left = "Pööra vasakule",
		toggle_light = "Lülitada tuli",
		move_menu = "Menú de movimiento",
		change_colors = "Cambiar colores",
		move_sliders = "Mover control deslizante",
		enter = "Failed to automatically generate translation.",
		back = "Failed to automatically generate translation."
	},

	creation_menu = {
		character_creation = "Tegelase loomine",
		new_character = "UUS TEGELANE",

		select_a_model = "Vali mudel.",

		heritage = "Pärand",
		heritage_description = "Valige, et valida oma vanemad.",
		mom = "Ema",
		mom_description = "Vali oma ema.",
		dad = "Isa",
		dad_description = "Vali oma isa.",
		resemblance = "Sarnasus",
		resemblance_description = "Valige, kas teie tunnusjooni mõjutab rohkem ema või isa.",
		skin_tone = "Nahatoon",
		skin_tone_description = "Valige, kas teie nahatoon on rohkem mõjutatud emalt või isalt.",
		divorced = "Lahutatud",
		divorced_description = "Valige, kas teie vanemad on lahutatud.",

		["in"] = "In",
		out = "Väljas",
		up = "Üles",
		down = "Alla",
		brow = "kulm",
		brow_description = "Muuda oma füüsilisi omadusi.",

		squint = "silmad kisus",
		wide = "laia vahemaa",
		eyes = "silmad",
		eyes_description = "Muuda oma füüsilisi omadusi.",

		narrow = "kitsad",
		wide = "laia vahemaa",
		nose = "nina",
		nose_description = "Muuda oma füüsilisi omadusi.",

		short = "lühike",
		long = "pikk",
		crooked = "kõver",
		curved = "kaardus",
		nose_profile = "ninaprofiil",
		nose_profile_description = "Muuda oma füüsilisi omadusi.",

		broken_left = "vasak pool katki",
		broken_right = "Katki parem",
		tip_up = "Üles kallutatud",
		tip_down = "Alla kallutatud",
		nose_tip = "Ninatipp",
		nose_tip_description = "Tee muudatusi oma füüsilistes omadustes.",

		cheekbones = "Põsesarnad",
		cheekbones_description = "Tee muudatusi oma füüsilistes omadustes.",

		gaunt = "Kõhn",
		puffed = "Pundunud",
		cheeks = "Põsed",
		cheeks_description = "Tee muudatusi oma füüsilistes omadustes.",

		thin = "Kõhn",
		fat = "Paks",
		lips = "Huuled",
		lips_description = "Tee muudatusi oma füüsilistes omadustes.",

		round = "Ümar",
		square = "Ruut",
		jaw = "Lõug",
		jaw_description = "Muuda oma füüsilisi omadusi.",

		chin_profile = "Lõua profiil",
		chin_profile_description = "Muuda oma füüsilisi omadusi.",

		pointed = "Terav",
		rounded = "Ümar",
		bum = "Künka",
		chin_shape = "Lõua kuju",
		chin_shape_description = "Muuda oma füüsilisi omadusi.",

		thick = "Paks",
		neck_thickness = "Kaela paksus",
		neck_thickness_description = "Muuda oma füüsilisi omadusi.",

		features = "Omadused",
		appearance = "Välimus",
		save_and_continue = "Salvesta ja jätkan",
		components = "Komponendid",
		props = "Rekvisiidid",
		ambient_females = "Häälitsevad naised",
		ambient_male = "Häälitsevad mehed",
		animals = "Loomad",
		cutscene = "Lõikuvaate-mood",
		gang_female = "Jõugunaiste",
		gang_male = "Jõugumeeste",
		multiplayer = "Mitmikmäng",
		scenario_female = "Stsenaariuminaised",
		scenario_male = "Stsenaariumimehed",
		story = "Lugu",
		story_scenario_female = "Loost lahtilokitunaiste",
		story_scenario_male = "Loost lahtilokitunmeeste",
		models = "Mudelid",

		features_description = "Valige näojoonte muutmiseks.",

		unknown_hair = "Tundmatu juuste (${hairId})",
		unknown_eyebrow = "Tundmatu kulm (${eyebrowId})",
		unknown_facial_hair = "Tundmatu näokarv (${facialHairId})",
		unknown_skin_blemish = "Tundmatu nahadefekt (${skinBlemishId})",
		unknown_skin_aging = "Tundmatu nahavananemine (${skinAgingId})",
		unknown_skin_complexion = "Tundmatu nahatüüp (${skinComplexionId})",
		unknown_moles_and_freckles = "Tundmatud mutid ja tedretähnid (${molesAndFrecklesId})",
		unknown_skin_damage = "Tundmatu nahakahjustus (${skinDamageId})",
		unknown_eye_makeup = "Tundmatu silmameik (${eyeMakeupId})",
		unknown_blusher = "Tundmatu põsepuna (${blusherId})",
		unknown_lipstick = "Tundmatu huulepulk (${lipstickId})",
		unknown_chest_hair = "Tundmatud rinnakarvad (${chestHairId})",

		color = "Värv",
		opacity = "Läbipaistvus",

		hair = "Juuste stiil",
		hair_description = "Muuda oma välimust.",

		eyebrows = "Kulmud",
		eyebrows_description = "Muuda oma välimust.",

		facial_hair = "Näokarvad",
		facial_hair_description = "Muuda oma välimust.",

		skin_blemishes = "Naha plekid",
		skin_blemishes_description = "Muuda oma välimust.",

		skin_aging = "Naha vananemine",
		skin_aging_description = "Muuda oma välimust.",

		skin_complexion = "Naha toonus",
		skin_complexion_description = "Muuda oma välimust.",

		moles_and_freckles = "Sünnimärgid ja tedretähnid",
		moles_and_freckles_description = "Muuda oma välimust.",

		skin_damage = "Naha kahjustus",
		skin_damage_description = "Muuda oma välimust.",

		eye_color = "Silma värvus",
		eye_color_description = "Muuda oma välimust.",

		eye_makeup = "Silmameik",
		eye_makeup_description = "Tee muudatusi oma välimuses.",

		blusher = "Põsepuna",
		blusher_description = "Tee muudatusi oma välimuses.",

		lipstick = "Huulepulk",
		lipstick_description = "Tee muudatusi oma välimuses.",

		chesthair = "Rinnakarvad",
		chesthair_description = "Tee muudatusi oma välimuses.",

		ready_to_start_playing = "Kas olete valmis mängima?",
		no = "Ei",
		go_back = "Mine tagasi.",
		yes = "Jah",
		you_will_not_be_able_to_return = "Sa ei saa tagasi minna.",

		freemode = "Vaba režiim",
		freemode_description = "Valige, kas soovite kasutada vabarežiimi mudelit. Freemode mudelid on kõrgelt kohandatavad.",

		sex = "Sugu",
		sex_description = "Vali oma tegelaskuju sugu.",
		male = "Mees",
		female = "Naine",

		props_description = "Valige oma eelistatud aksessuaarid.",

		hat = "Müts",
		glass = "Prillid",
		ear = "Kõrvarõngad",
		watch = "Käekell",
		bracelet = "Käevõru",

		appearance_description = "Valige oma välimuse muutmise võimalused.",
		components_description = "Vali oma eelistatud välimuse lisad.",

		none = "Puudub",

		texture = "Tekstuur ${textureId}",
		drawable = "Riietus ${drawableId}",

		clean_shaven = "Sile nägu",

		face = "Nägu",
		mask = "Mask",
		hair = "Juuste stiil",
		torso = "Kere",
		leg = "Jalad",
		parachute_and_bag = "Langevari / kott",
		shoes = "Jalatsid",
		accessory = "Aksessuaar",
		undershirt = "Alussärk",
		kevlar = "Kevlarvest",
		badge = "Märk",
		torso_two = "Kere 2"
	},

	crosshair = {
		copied_config = "Konfiguratsioon kopeeritud lõikelauale.",
		imported_config = "Konfiguratsioon imporditud.",
		disabled_crosshair = "Eemaldatud kohandatud täpsusmärk.",

		invalid_url_title = "Vigane pildi URL",
		invalid_url_description = "Sisestatud pildi URL on vigane. See peab olema otse toimiv link pildile, mitte link veebilehele, mis sisaldab seda pilti. Link peab algama ühe järgnevatest aadressitest:",
		cancel_button = "Okay",

		center = "Keskel",
		main = "Peamine",
		outer = "Välimine",
		kill = "Tapab välklambi",

		enabled = "Sisse lülitatud",
		size = "Suurus",
		image = "Pilt",
		length = "Pikkus",
		offset = "Offset",
		secondary_offset = "Teisene offset",
		rotation = "Pööramine",
		color = "Värv",
		duration = "Kestus (ms)",

		flash_no_image = "Tapmise välk ei tööta kohandatud pildiga.",
		do_flash = "Tekita välk",
		flashing = "Välgutamine"
	},

	clip_saver = {
		start_recording = "Alusta salvestust",
		clip_save = "Salvesta klipp",
		clip_discard = "Loobu klipist"
	},

	compass = {
		north = "N",
		north_east = "NE",
		east = "E",
		south_east = "SE",
		south = "S",
		south_West = "SW",
		west = "W",
		north_west = "NW"
	},

	confirm = {
		confirm_purchase = "Kinnita ost",
		confirm_purchase_label = "${label} | ${cost}",

		deny_purchase = "Ei, ma ei soovi seda",
		accept_purchase = "Jah, ma soovin seda osta",
		accept_purchase_info = "Olete kindel, et soovite selle ostu teha? Seda ei saa tagasi võtta."
	},

	courthouse = {
		press_to_use_gavel = "Vajuta ~INPUT_CONTEXT~, et kasutada vasarat."
	},

	daily_activities = {
		not_enough_money = "Sul pole piisavalt raha.",

		press_to_daily_activities = "[${InteractionKey}] Igapäevased tegevused",
		daily_activities = "Igapäevased tegevused",
		resets_in = "Lähtestub ${resetsIn}...",
		complete_the_other_tasks_to_unlock = "Täitke teised ülesanded, et avada... ",
		remain = "${remain} jääb",
		remain_money = "${remain} dollarit jäänud",
		claimed = "Korjatud",
		claim = "Nõua",
		streak_reward_one = "Kui teie järjestikus on 7 või rohkem, saate veel ühe tasuta päevase keerutuse Lucky Wheel'is.",
		streak_reward_two = "Kui teie järjestikus on 30 või rohkem, on teil võimalus võita eriline sõiduk oma 4. ülesandega.",

		special_vehicle_won = "Te olete võitnud erilise sõiduki! Leiate selle oma garaažist.",

		reset_daily_activities = "Lähtesta igapäevased tegevused.",

		task_progress = "Ülesande edenemine: ${task} (${remain} alles)",
		task_progress_money = "Ülesande edenemine: ${task} ($${remain} alles)",
		task_finished = "Ülesanne lõppenud: ${task}",

		parachute_from_location = "Langevarjuga ${kohast} hüpata.",
		gamble_at_blackjack = "Mängi ${summa} käsi Blackjacki lauas.",
		bring_in_items = "Too järgnevad esemed kohale.",
		kills_in_arena = "Saada ${kogus} tapmist Arenal.",
		headshot_kills_in_arena = "Saada ${kogus} pealööki Arenal.",
		punch_locals = "Löö ${kogus} kohalikku elanikku.",
		move_from_place_to_place = "Liigu kohast ${algselt} kohasse ${lõpuks} ${ajaga} sekundiga.",
		put_bets_in_jackpot = "Pane kihlvedusid väärtuses $${summa} Ohjuspoti mängu.",
		win_bets_in_jackpot = "Võida esemeid väärtuses $${amount} Jackpotis.",
		chop_vehicles = "Lõhka ${amount} autot.",
		purchase_ammo = "Osta ${amount} padrunit.",
		collect_items_from_diving = "Kogu ${amount}x ${itemLabel} sukeldumisest.",
		take_zombie_pills = "Võta ${amount} zombi pilli.",
		dig_up_a_treasure = "Kaeva üles aare kaardi abil.",
		refine_gems = "Töötle ${amount} kivi.",
		visit_location = "Külasta kohta: ${location}.",
		visit_the_location = "Külasta ${location}.",

		confirm_task_refresh = "Kas olete kindel, et soovite selle ülesande uuesti laadida? Hind on $${cost}.",
		yes = "Jah",
		no = "Ei",

		logs_daily_streak_changed_title = "Päevas kestus muutus",
		logs_daily_streak_changed_details = "${consoleName}il on nüüd igapäevane järjestikune arvestus `${streak}`.",

		logs_daily_task_completed_title = "Igapäevane ülesanne täidetud",
		logs_daily_task_completed_details = "${consoleName} täitis igapäevase ülesande nimega `${taskName}`.",

		restore_streak = "Taasta järjepidevus ${streak}",
		confirm_streak_restore = "Kas soovite kindlasti taastada oma ${streak} päeva järjepidevuse? Hind on ${cost} OP punkti.",

		not_enough_op_points = "Järjepidevuse taastamiseks on teil vaja ${cost} OP punkti. Teil on ${points} OP punkti.",
		streak_restored = "Sinu ${streak} päeva pikkune järjepidevus on taastatud hinnaga ${cost} OP Points."
	},

	dashcam = {
		video = "Video",
		time = "Aeg",
		date = "Kuupäev",

		unit_id = "Üksuse ID",
		unit_name = "Üksuse Nimi",
		unit_speed = "Üksuse Kiirus",

		state_seal_one = "Selle sõiduki litsents kuulub",
		state_seal_two = "San Andrease osariigile",
		state_seal_three = "Iga volitamata kasutamine on karistatav raskete karistustega vastavalt 13 S.A. Pen. Kood 502(a) punktile.",

		kmh = "km/h",
		mph = "miili tunnis",

		set_unit_id_to = "Sinu üksuse ID on nüüd määratud kui ${unitId}.",
		reset_unit_id = "Sinu üksuse ID on nüüd lähtestatud.",
		failed_to_set_unit_id = "Üksuse ID seadmine ebaõnnestus.",
		unit_id_already_set_to = "Sinu üksuse ID on juba määratud kui ${unitId}.",
		unit_id_already_reset = "Sinu üksuse ID on juba nullitud.",
		invalid_unit_id = "Üksuse ID peab olema täisarv vahemikus 1 kuni 999.",

		unit_id_vehicles_updated = "Sinu hädaolukorra sõidukid on uuendatud vastavalt sinu uuele üksuse ID-le `${unitId}`."
	},

	debug = {
		ped = "Jalakäija",
		vehicle = "Sõiduk",
		object = "Objekt",
		owned_by_us = "Kuulub meile",
		owned_by = "Kuulub",
		one_state_set = "Failed to automatically generate translation.",
		many_states_set = "Failed to automatically generate translation.",
		no_states = "Ühtegi olekut pole",
		native_model = "Failed to automatically generate translation.",
		owned_by_server = "Server",
		owned_by_you = "Sinu oma",
		first_owned_short = "Esimene omanik: ${firstOwned}",
		current_owned_short = "Praegune omanik: ${currentOwner}",
		network_id_side = "Võrgu ID: ${networkId}",
		no_target = "Ei valitud sihtmärki",
		loading_owner = "Registreeritud ~y~Laadimine...",
		owner_npc = "Registreeritud ~b~${fullName}-le",
		owner_player = "Registreeritud ~g~${fullName}-le",
		character_known = "Tegelane: ~g~${fullName}",
		character_unknown = "Tegelane: ~r~Tundmatu",
		invalid_radius_parameter = "Vigane `raadius` parameeter.",
		inject_code_invalid_player = "Serveri ID '${serverId}'-ga mängijaid pole.",
		inject_code_success_for_everyone = "Koodi süstimine õnnestus kõigile.",
		inject_code_success_for_player = "${consoleName} koodi süstimine õnnestus.",
		inject_code_success = "Koodi edukalt sisestatud.",
		inject_code_target_user_not_found = "Sihtkasutajat ei leitud.",
		inject_code_invalid_text = "Kehtetu tekst.",
		inject_code_invalid_input = "Vigane sisend.",
		inject_code_no_permissions = "Puuduvad õigused.",
		inject_code_user_not_found = "Kasutajat ei leitud.",
		inject_code_invalid_url = "Kehtetu URL.",
		inject_code_invalid_radius = "Kehtetu raadius.",
		game_pools = "Mängude plokid:",
		ped_config_flags = "Tegelaskuju konfiguratsiooni lipud:",
		ped_is = "Tegelaskuju on:",
		vehicle_is = "Sõiduk on:",
		world_is = "Maailm:",
		controls = "Juhtimine: ${controls}",
		tasks = "Üleskutsed: ${calls} (${total})",
		invoke_calls = "Failed to automatically generate translation.",
		draw_calls = "Failed to automatically generate translation.",
		player_speed = "Mängija kiirus: ${playerSpeed}",
		player_ped = "Mängija ped: ${playerPedId}",
		heading = "Suund: ${heading}",
		bearing = "Suund: ${bearing}°",
		coords = "Koordinaadid: ${coords}",
		rotation = "Pööramine: ${rotation}",
		normal = "Pind: ${normal}",
		velocity = "Kiirusvektor: ${velocity}",
		ground_material = "Maapinna materjal: ${material}",
		g_force = "G-jõud: ${force}",
		debug_print_f8 = "Tõrkeotsingu info on trükitud sinu F8 konsooli.",
		no_vehicle_bone = "Puudub \"${boneName}\" luu",
		server_vehicles = "Failed to automatically generate translation.",
		not_networked_vehicles = "Failed to automatically generate translation.",
		invisible_vehicles = "Nähtamatud sõidukid: ${count}",
		parked_vehicles = "Failed to automatically generate translation.",
		available_doors = "Saadaval olevad ukse ID-d: ${doors}",

		distance = "Kaugus: ${distance}m",
		distance_first = "Esimese asukoha salvestamine.",

		get_search_invalid = "Vigane otsing (vähemalt 2 tähte).",

		disabled_ped_bone_debug = "Välja lülitatud NPC luu tõrkeotsing.",

		mph = "mi/h",
		vehicle_speed = "Kiirus: ${speed}",
		vehicle_average = "Keskmine: ${speed}",
		vehicle_top_speed = "Tippkiirus: ${speed}",
		vehicle_acceleration = "0 kuni 60: ${time}",
		vehicle_acceleration_120 = "0 kuni 120: ${time}",
		vehicle_acceleration_150 = "0 kuni 150: ${time}",
		vehicle_brake_distance = "Pidurduskaugus: ${distance}m",
		vehicle_acceleration_force = "Stardijõud: ${force}",

		invalid_network_id = "Failed to automatically generate translation.",
		delete_entity_success = "Üksus võrgu-ID-ga ${networkId} kustutatud.",
		delete_entity_failed = "Üksuse kustutamine ebaõnnestus.",
		delete_entity_no_permissions = "Üritati kustutada üksust ilma nõuetekohaste õigusteta.",

		failed_entity_info = "Ebaõnnestus üksuse teabe hankimine.",
		printed_entity_info = "Prinditud üksuse serveri teave F8 klahvi abil.",

		no_entity_network = "Ühtegi võrgu ID-ga üksust pole: ${networkId}.",
		move_entity_success = "Ese edukalt liigutatud, võrgu ID-ga ${networkId}.",
		move_entity_failed = "Ese liigutamine ebaõnnestus.",
		move_entity_no_permissions = "Üritati liigutada üksust ilma nõuetekohaste õigusteta.",

		weapon_name_missing = "Relva nimi puudub parameetritest.",
		weapon_name_invalid = "`${weaponName}` ei ole kehtiv relva nimi.",
		model_name_missing = "Mudeli nimi puudub parameetritest.",
		model_name_invalid = "`${modelName}` ei ole kehtiv mudeli nimi.",
		model_view_enabled = "Mudeli vaade on sisse lülitatud.",
		model_view_disabled = "Mudelivaade on välja lülitatud.",
		invalid_component = "Vigane komponent `${componentName}`.",

		animation_currently_playing = "Hetkel mängitakse animatsiooni.",
		invalid_or_missing_animation_dict = "Vigane või puuduolev animatsiooni sõnastik `${animationDict}`.",
		missing_animation_name = "Puuduolev või vigane animatsiooni nimi `${animationName}`.",
		invalid_animation_flags = "Vigased animatsiooni lipud.",
		animation_played = "Mängin `${animationDict}` `${animationName}` (lipud: ${flags}).",
		no_flags = "Pole määratud",

		invalid_coordinates = "Vigased koordinaadid.",
		added_coordinates_draw = "Lisati koordinaadid `x: ${x}, y: ${y}, z: ${z}` joonistamise nimekirja ID-ga `${drawId}`.",
		no_coordinate_draws_to_destroy = "Pole koordinaadid joonistada hävitamiseks.",
		destroyed_coordinate_draws = "Hävitati `${drawingCoordinatesAmount}` koordinaadid joonistused.",

		debug_damage_enabled = "Kahju silumine on sisse lülitatud.",
		debug_damage_disabled = "Kahju silumine on välja lülitatud.",

		enabled_network_debug = "Objekti võrgu silumine on sisse lülitatud.",
		disabled_network_debug = "Olekuvõrgu silumine keelatud.",
		failed_network_debug = "Ei suudetud lubada olekuvõrgu silumist.",

		network_owner_subscription_no_permissions = "Üritati liituda võrguomanikega ilma korralike õigusteta.",

		missing_ipl = "Puudub ipl parameeter.",
		enabled_ipl = "Ipl `${ipl}` edukalt lubatud.",
		disabled_ipl = "Ipl `${ipl}` edukalt keelatud.",

		enabled_ipl_globally = "Ipl `${ipl}` edukalt globaalselt lubatud.",
		failed_enabled_ipl_globally = "Globaalse ipl-i lubamine ebaõnnestus.",
		disabled_ipl_globally = "IPL-i ${ipl} globaalselt edukalt välja lülitatud.",
		failed_disabled_ipl_globally = "IPL-i üleüldine väljalülitamine ebaõnnestus.",

		enabled_ipls_list = "Lubatud IPL-id: ${list}.",
		no_ipls_enabled = "IPL-id pole lubatud.",

		missing_code = "Puudub koodiparameeter.",
		run_code_success = "Koodijupp edukalt käivitatud.",
		run_code_error = "Koodijupp põhjustas vea.",

		searching_world = "Otsin maailmast:\n${modelNames}",
		copied_clipboard = "Koordinaadid on kopeeritud lõikelauale.",

		saved_vehicle_model_lists_to_file = "Sõidukimudeli nimekirjad on salvestatud failina serverisse.",

		network_debug_logs_title = "Võrgu silumine sisse/välja lülitatud",
		network_debug_logs_details_on = "${consoleName} lülitas oma võrgu silumise sisse.",
		network_debug_logs_details_off = "${consoleName} lülitas oma võrgu silumise välja.",

		debug_info_failed = "Ei õnnestunud koguda silumisandmeid.",
		close = "Sulge",
		import = "Impordi",
		export = "Ekspordi",
		copied = "Kopeeritud!",
		invalid_data = "Kehtetu andmed.",
		invalid_json = "Kehtetu JSON.",

		street_found = "Leid \"${name}\", selle keskpunkt on märgitud teie kaardil.",
		street_not_found = "Tänavat ei leitud, mis sobiks teie otsinguga."
	},

	debug_menu = {
		menu_title = "Debug Menüü",

		timecycles = "Ajatsüklid",
		weather = "Ilm",
		reset = "Reset",
		refresh_interior = "Uuenda sisemust"
	},

	development = {
		developer_ambience_on = "Arendaja taustamüra sisse lülitatud.",
		developer_ambience_off = "Arendaja taustamüra välja lülitatud."
	},

	dna_evidence = {
		taking_sample = "DNA proovi võtmine",
		already_taking_sample = "Sa juba võtad DNA proovi mängijast.",
		sample_no_player = "Lähedal ei ole mängijat, kellest saaksid DNA proovi võtta.",
		sample_no_bags = "Sul pole ühtegi tõendikotti.",
		dna_evidence_bag = "DNA Tõendid",

		evidence_failed = "Ebaõnnestus DNA tõendite võtmine.",

		evidence_text = "Tõendi tüüp: DNA Tõendid\nDNA on kogutud mängijalt ${fullName} #${characterId}\n\nLisainfo:\n • Kogumise aeg: ${time}"
	},

	docks = {
		press_to_access_spawner = "Vajuta ~INPUT_CONTEXT~, et avada sõidukite looja.",
		boat_dock = "Paadisild",
		vehicle_list = "Sõidukiloend",
		park_boat = "Paadi parkla",
		close_menu = "Sulge menüü",
		main_menu = "Peamenüü",
		deposit = "$${amount} Hoius",
		no_deposit = "Hoius puudub",
		area_not_clear = "Ala ei ole puhas.",
		no_vehicle_park = "Parkimiseks ei ole sõidukit.",
		failed_park = "Paadi parkimine ebaõnnestus.",
		deposit_not_enough_money = "Teil pole piisavalt raha tagatise maksmiseks.",
		failed_spawn = "Paadi ilmumise ebaõnnestumine.",
		vehicle_anchor = "Teie paat on ilmunud ja ankrusse pandud, saate kasutada /anchor, et tõsta ankur.",
		too_shallow = "Failed to automatically generate translation."
	},

	doors = {
		locked = "Lukustatud",
		unlocked = "Avatud",
		locked_press_to_unlock = "[${InteractionKey}] Luku avamine",
		unlocked_press_to_lock = "[${InteractionKey}] Lukustamine",
		locking = "Lukustamine",
		unlocking = "Luku avamine",
		jewelry_store_closed = "Juveelipood on hetkel suletud. Palun proovige hiljem uuesti.",
		bank_closed = "Pank on hetkel suletud. Palun proovige hiljem uuesti.",
		store_closed = "Pood on hetkel suletud. Palun proovige hiljem uuesti.",
		failed_to_sync_doors = "Uste sünkroniseerimine ebaõnnestus. Midagi läks vist valesti. Palun proovige uuesti.",
		saved_doors_to_file = "Salvestatud ${amount} uksed faili serveris.",
		no_nearby_doors = "Läheduses pole uksi, mida salvestada.",
		lockpicking_door = "Ukse lukustamise murdmine",

		debug_doors_on = "Uste silumine lülitatud sisse.",
		debug_doors_off = "Uste silumine lülitatud välja.",
		doors_no_job = "Puudub",

		unlocks = "Lukustused: <i>${cluster}</i>."
	},

	effect_zones = {
		in_zones = "Mõjutsoonid: ~g~${zones}",
		not_in_zones = "Ei ole üheski mõjutsoonis.",
		effects = "Efektid: ${effects}"
	},

	elevators = {
		use_elevator = "[${InteractionKey}] Kasuta lifti",
		elevator_title = "Lift",
		close_menu = "Sulge menüü",
		already_on_floor = "Oled juba sellel korrusel.",

		no_elevator_nearby = "Läheduses pole lifti.",
		elevator_enabled = "Lift nr ${elevatorId} on edukalt sisse lülitatud.",
		elevator_disabled = "Edukalt deaktiveeritud lift #${elevatorId}.",
		elevator_toggle_failed = "Lifti vahetus ebaõnnestus.",
		elevator_enabled_all = "Kõik liftid on edukalt aktiveeritud.",

		current_floor = "Praegune",

		out_of_service = "Hoolduses",
		out_of_service_help = "See lift on hetkel hoolduses.",

		floor_tunnel_entrance = "Tunneli sissepääs",
		floor_underground_tunnel = "Maa-alune tunnel",

		floor_lounge = "Lounge",

		floor_garage = "Garaaž",
		floor_lobby = "Peahoone",
		floor_roof = "Katus",
		floor_helipad = "Helikopteri maandumisplats",

		floor_shop = "Pood",

		floor_casino = "Kasiino",
		floor_security = "Turvalisus",
		floor_loading_bay = "Laadimisala",
		floor_vault = "Tresooriruum",

		floor_second_floor = "Teine korrus",
		floor_icu = "Intensiivravi",
		floor_ground = "Esimene korrus",
		floor_surgery = "Kirurgia",

		floor_entrance = "Sissepääs",
		floor_server_room = "Serveriruum",

		floor_50 = "Korrus 50",
		floor_49 = "Korrus 49",
		floor_47 = "Korrus 47",
		floor_basement = "Keldrikorrus",

		floor_exclusive_dealership = "Eksklusiivne autokeskus",
		floor_mayors_office = "Linnavalitsuse büroo",
		floor_mechanic_shop = "Mehaanikapood",

		floor_fourth_floor = "4. korrus",
		floor_third_floor = "3. korrus",

		floor_hangout = "Kohtumispaik",
		floor_penthouse = "Luksus korter",
		floor_theatre_office = "Teatri büroo",
		floor_psychiatrists_office = "Psühhiaatri büroo",
		floor_nightclub_garage = "Ööklubi garaaž",
		floor_submarine = "Allveelaev",

		floor_lower_penthouse = "Alumine luksus korter",
		floor_middle_penthouse = "Keskmine luksus korter",
		floor_upper_penthouse = "Ülemine luksus korter",

		floor_showroom = "Näidistuba",
		floor_office = "Kontor",
		floor_doj_office = "Õigusministeeriumi kantselei",

		floor_penthouse_top = "Penthouse (Ülemine korrus)",
		floor_penthouse_entrance = "Penthouse (Sissepääs)",

		floor_containment = "Tõkestusruum",

		doj_office = "Õigusministeeriumi kantselei",

		used_elevator_logs_title = "Kasutatud lift",
		used_elevator_logs_details = "${consoleName} kasutas lifti ${elevatorId}, et minna korrusele `${floor}`."
	},

	emails = {
		title = "OP-e-post",
		email_domain = "san-andreas.gov",

		app_title = "E-Kiri",

		error_loading_emails = "Midagi läks valesti e-kirjade laadimisel.",

		new_email_notification = "~o~Uus e-kiri",

		email_label = "E-post",
		password_label = "Salasõna",
		set_password = "Määra salasõna",
		inbox = "Sisendkaust",
		outbox = "Saadetud",
		new_email = "Uus E-post",

		loading = "Laadimine...",
		failed_load_email = "E-posti sisu laadimine ebaõnnestus.",

		from_label = "Absendilt",
		to_label = "Saajale",

		send_email = "Saada",

		no_emails = "E-posti sõnumeid pole.",
		to_email = "saatja: ${email}",

		error_no_subject = "E-kiri ei sisalda teemat.",
		error_invalid_target = "Vigane e-posti aadress.",
		error_subject_too_long = "E-posti teema on liiga pikk.",
		error_body_too_long = "E-posti sisu on liiga pikk.",
		error_body_missing = "E- kirja sisu on puudu.",
		error_failed_send = "E-kirja saatmine ebaõnnestus.",
		error_password_empty = "Salasõna ei saa olla tühi.",
		error_password_update_failed = "Parooli uuendamine ebaõnnestus."
	},

	emote_items = {
		give_item = "[${InteractionKey}] Anna ${itemName}",
		received_item = "${firstName} andis sulle ${itemName}.",
		give_item_success = "Andmine mängijale ${itemName} õnnestus.",
		give_item_failed = "Mängijale ${itemName} andmine ebaõnnestus."
	},

	emote_menu = {
		menu_title = "OP-FW Emotes",

		dance_emotes = "🕺 Tantsi emotsioonid",
		dance_emotes_description = "Kõikide tantsu emotsioonide loend.",
		shared_emotes = "👫 Ühised emotsioonid",
		shared_emotes_description = "Kõigi ühiste emotsioonide loend.",
		prop_emotes = "📦 Rekvisiitidega emotsioonid",
		prop_emotes_description = "Kõigi rekvisiitidega emotsioonide loend.",
		animal_emotes = "🐻 Loomaemotsioonid",
		animal_emotes_description = "Kõigi loomaemotsioonide loend.",
		pegi_emotes = "🔞 Pegi emotsioonid",
		pegi_emotes_description = "Kõigi Pegi emotsioonide loend.",
		racing_emotes = "🏁 Võidusõidu emotsioonid",
		racing_emotes_description = "Kõigi võidusõidu emotsioonide loend.",

		emotes = "Emotsioonid",
		emotes_description = "Kõigi emotsioonide loend.",
		moods = "Ilmed / Tuju",
		moods_description = "Muuda oma ilmet / tuju.",
		walkstyles = "Kõnnistiilid",
		walkstyles_description = "Muuda oma kõnnistiili.",
		cancel_emote = "Tühista žest",
		cancel_emote_description = "Tühista hetkel mängitav žest."
	},

	exclusive_dealership = {
		cost_money = "${price} eurot",
		cost_points = "${points} OP punktid",

		marker_label = "${label} | ${cost}",
		marker_label_purchase = "[${SeatEjectKey}] Osta ${label} summas ${cost}",

		purchased_vehicle = "Ostetud ${label} summas ${cost}.",
		insufficient_funds = "Ebapiisav raha.",
		area_not_clear = "Sünnitusala pole selge.",
		invalid_package = "Vale toetaja lubadus.",
		something_went_wrong = "Midagi läks valesti.",

		failed_vehicle_spawn = "Sõiduki esilekutsumine ebaõnnestus. Sõiduk jääb siiski teie garaaži.",

		next_rotation_in = "Järgmine rotatsioon: ${time}",

		exclusive_dealership_blip = "Eksklusiivne Deluxe Motorsport",

		buyback_closed = "Vahetuspunkt on suletud. Saate oma sõiduki müüa teisele mängijale vastava tasemega.",

		log_title = "EDM Ost",
		log_description = "Ostetud `${label}` summas ${cost}."
	},

	failures = {
		engine_failure_chance = "Määratud mootori rikke tõenäosus ${chance}-ks.",
		failure_chance_invalid = "Mootori rikke tõenäosus peab olema vahemikus 1 kuni 1500.",
		engine_failure_reset = "Lähtestatud mootori rikke tõenäosus vaikeväärtusele."
	},

	fake_ids = {
		press_to_purchase = "Vajuta ~INPUT_CONTEXT~, et osta võlts-ID.",

		store_title = "Võlts-ID kauplus",

		female_id = "Naiste võlts-ID",
		male_id = "Mees võlts-ID",
		close_menu = "Sulge menüü",

		logs_purchased_title = "Ostetud võlts-ID",
		logs_purchased_details = "${consoleName} ostis ${type} (${firstName} ${lastName} #${characterId}).",

		something_went_wrong = "Midagi läks valesti.",
		failed_not_on_duty = "Võlts-ID ostmine nõuab ametis olekut.",
		failed_not_enough_money = "Sul ei ole piisavalt raha, et osta võlts-ID.",
		purchase_success = "Võlts-ID ost edukalt sooritatud, hinnaks oli $3,000."
	},

	farming = {
		milk_cow_interact = "[${InteractionKey}] Lüpsa lehma",
		milking_cow = "Lehma lüpsmine",
		milking_cow_moved = "Lehm tundub eemaldunud olevat.",
		milking_cow_failed = "Lehma lüpsemine ebaõnnestus."
	},

	fentanyl = {
		you_are_overdosing = "Te üledoseerite fentanüüli.",
		overdose = "Fentanüüli üledoos",

		grind_painkillers = "[${InteractionKey}] Jahvata valuvaigisteid",
		grinding_painkillers = "Valuvaigistite jahvatamine",
		mix_acetone = "[${InteractionKey}] Sega atsetooniga",
		mixing_acetone = "Segamine atsetooniga",
		add_hydrogen_peroxide = "[${InteractionKey}] Lisa vesinikperoksiid",
		adding_hydrogen_peroxide = "Vesinikperoksiidi lisamine",
		boil = "[${InteractionKey}] Keeda koostisosi",
		boiling = "Koostisainete keetmine",
		cool_down = "[${InteractionKey}] Jahuta maha",
		cooling_down = "Jahutamine",
		fill_ampules = "[${InteractionKey}] Täida ampullid",
		filling_ampules = "Ampullide täitmine",

		selling_fentanyl = "Fentanüüli müümine",
		press_to_sell_fentanyl = "Vajuta ~INPUT_CONTEXT~, et müüa fentanüüli.",
		local_not_interested = "Kohalik ei paista praegu huvitatud olevat.",

		something_went_wrong = "Tekkis viga.",
		made_fentanyl_logs_title = "Valmistas Fentanüüli",
		made_fentanyl_logs_details = "${consoleName} valmistas ${amount}x fentanüüli.",
		sold_fentanyl_logs_title = "Müüs Fentanüüli",
		sold_fentanyl_logs_details = "${consoleName} müüs 1x ampulli fentanüüli eest $${reward}."
	},

	fingerprint = {
		taking_fingerprint = "Võetakse sõrmejälge",
		already_fingerprinting = "Sa juba võtad mängija sõrmejälge.",
		sample_no_player = "Läheduses ei ole mängijaid, kelle sõrmejälgi saaksid võtta.",
		sample_no_bags = "Sul pole ühtegi tõendikotti.",
		fingerprint_evidence = "Sõrmejälg",

		evidence_failed = "Sõrmejälje võtmine ebaõnnestus.",

		evidence_text = "Tõendi tüüp: Sõrmejälg\n${fullName} #${characterId} sõrmejälg\n\nLisainformatsioon:\n • Korjatud: ${time}-l"
	},

	fireworks = {
		fire_firework = "[${InteractionKey}] Lase ilutulestikku"
	},

	flag_swap = {
		toggled_flag_swap_on = "Vahetuslippude lülitamine sisse.",
		toggled_flag_swap_off = "Põrandaaluse lipu vahetus välja lülitatud.",

		showing_flags = "Näitan lippe.",
		not_showing_flags = "Lippude näitamine lõpetatud.",

		flag = "Lipp ${flagId}",

		flag_swap_leaderboard = "Lippude vahetuse edetabel",
		ongoing = "Toimub",
		not_ongoing = "Ei toimu",
		position_and_name = "${position}. ${name}",
		flag_count_one = "1 lipp",
		flag_count = "${flags} lippu",
		players_with_most_flags_will_show_here = "Mängijad, kellel on kõige rohkem lippe, ilmuvad siia.",
		flags_on_ground = "Lipud maas: ${flagsOnGround}"
	},

	flight_radar = {
		callsign_invalid = "Sinu kutsung peab olema 3 kuni 10 tähemärki pikk.",
		callsign_set = "Kutsungi edukalt värskendatud kujule `${callsign}`.",
		callsign_reset = "Kutsung edukalt lähtestatud.",
		callsign_set_failed = "Kutsungi uuendamine ebaõnnestus.",

		emergency_type_1 = "PD",
		emergency_type_2 = "Kiirabi"
	},

	forcefields = {
		invalid_radius = "Vigane raadius (peab olema vahemikus 1–200).",
		failed_create = "Tugevuskilbi loomine ebaõnnestus.",
		forcefield_marker = "ID: ${id}",
		invalid_forcefield_id = "Vigane tõkkevälja ID.",
		failed_destroy = "Tõkkevälja hävitamine ebaõnnestus."
	},

	fortnite = {
		no_buildings_in_radius = "Raadiusega ${radius} ei leitud hooneid.",
		no_buildings = "Hooneid ei leitud.",
		wiped_buildings_in_radius = "Kustutati ${removedBuildings} hoonet raadiusega ${radius}.",
		wiped_buildings = "Kustutati ${removedBuildings} hoonet."
	},

	fortune_cookies = {
		opened_cookie_logs_title = "Avatud õnnepisar",
		opened_cookie_logs_details = "${consoleName} avas õnnepisara ja sai `${fortune}`.",
		created_cookie_logs_title = "Loodi Õnnekuul",
		created_cookie_logs_details = "${consoleName} lõi õnnekuuli sõnumiga `${fortune}`.",

		missing_fortune = "Puuduv sõnum.",
		failed_create_cookie = "Õnnekuuli loomine ebaõnnestus.",
		failed_open = "Õnnepisara avamine ebaõnnestus."
	},

	freecam = {
		enabled_freecam = "Vaba kaamera on lubatud.",
		disabled_freecam = "Vaba kaamera on keelatud.",
		freecam_failed = "Vaba kaamera lubamine ebaõnnestus. Kas teil on noclip või midagi sarnast lubatud?",

		freecam_no_dead = "Sa ei saa vabakambrit lubada, kui sa oled maha kukkunud.",

		freecam_logs_title = "Vabakäigu režiim lülitatud sisse",
		freecam_on_logs_details = "${consoleName} lülitas sisse vabakäigu režiimi.",
		freecam_off_logs_details = "${consoleName} lülitas välja vabakäigu režiimi.",

		freecam_inactive = "Te ei ole praegu vaba kaamera režiimis.",
		added_point = "Lisati kaamera punkt indeksiga ${index} (Üleminek: ${transition}ms).",
		disable_freecam = "Režiimi vahetamiseks lõpetage vaba kaamera kasutamine.",
		not_enough_points = "Kaamera punkte on vaja mängimiseks vähemalt 2.",
		already_replaying = "Te esitate juba kaamera punkte.",
		cleared_points = "Kustutati kõik kaamera punktid.",
		replaced_point = "Asendati kaamera punkt indeksiga ${index} (Üleminek: ${transition}ms).",
		moved_to_point = "Liigutati vaba kaamera kaamera punkti ${index} juurde (Üleminek: ${transition}ms).",
		invalid_point_index = "Sobimatu kaamera punkti indeks."
	},

	frisk = {
		frisk_no_player = "Läheduses ei ole ühtegi mängijat, keda läbi otsida.",
		already_frisking = "Sa juba läbi otsid üht mängijat.",
		frisk_failed = "Ebaõnnestus mängija läbiotsimine.",
		frisking = "Läbiotsin mängijat",

		frisk_category_0 = "Paistab, et tal pole relvi.",
		frisk_category_1 = "Paistab, et tal võib olla relv.",
		frisk_category_2 = "Paistab, et tal on relv.",
		frisk_category_3 = "Paistab kindlalt, et tal on suur relv.",
		frisk_category_4 = "Kindlasti on tal suur relv."
	},

	fruits = {
		pick_fruit = "[${InteractionKey}] Võta ${fruit}",
		picking_fruit = "Võtan ${fruit}",

		shake_tree = "Vajuta ~INPUT_CONTEXT~, et puud raputada.",
		shaking_tree = "Puud raputan...",

		extract_rubber = "Vajuta ~INPUT_CONTEXT~, et kummipuu tüvest kummi ekstraheerida.",
		extracting_rubber = "Kummi ekstraheerimine",

		tree_klonk = "Midagi kukkus puult ja tabas sind peaga."
	},

	gas_masks = {
		gas_grenade = "Gaasigranaat",
		in_gas_circle = "Gaasiringis!",
		not_in_gas_circle = "Pole gaasiringis.",
		gas_time_left = "Sul on gaasimaski jaoks ${gasTime} sekundit jäänud.",
		hold_to_take_gas_mask_off = "Hoia alla ~INPUT_VEH_HEADLIGHT~, et võtta gaasimask ära.",
		hold_to_take_gas_mask_off_holding = "Jätka hoidmist, et võtta gaasimask ära."
	},

	golf = {
		pickup_ball = "Failed to automatically generate translation.",

		failed_pickup = "Eliminar Cuenta de Ahorros",
		failed_place = "${consoleName} eliminó una cuenta de ahorros llamada `${accountName}` con el ID ${accountId}."
	},

	gps = {
		altitude = "Kõrgus",
		latitude = "Laiuskraad",
		longitude = "Pikkuskraad",
		speed = "Kiirus",

		distance = "Vahemaa",
		heading = "Suund",

		reset_target = "Taasta GPS sihtkoht.",
		set_gps_target = "Sea GPS sihtkoht ${x}, ${y}.",
		gps_blip = "GPS Sihtmärk",
		no_gps_item = " Sul ei ole GPS-i.",

		collar_no_target = "Sellel kaelarihmal ei ole sellega seotud telefoni.",
		collar_timeout = "Sa just saatsid teavituse, palun oota enne uue saatmist natukene aega.",
		collar_sent = "Teatis saadetud ${firstName} ${lastName}-le (${phoneNumber}).",

		mph = "mi/h",
		kph = "km/h",
		ft = "ft",
		m = "m",
		km = "km",
		mi = "mi",
		deg = "kraadi"
	},

	gravity = {
		gravity_success_on = "Lülitasin gravitatsiooni välja ${consoleName}-i jaoks.",
		gravity_success_off = "Lülitasin gravitatsiooni tagasi sisse ${consoleName}-i jaoks.",
		gravity_client_failed = "Ebaõnnestus gravitatsiooni lülitamine ${consoleName} jaoks.",
		gravity_failed = "Midagi läks gravitatsiooni lülitamisel valesti.",
		yourself = "iseenda"
	},

	gravity_gun = {
		name_override = "Gravitatsiooni-Püss",

		failed_item_spawn = "Ebaõnnestus gravitatsiooni-püssi eseme tekitamine."
	},

	grills = {
		campfire = "Lõkkease",
		use_campfire = "[${InteractionKey}] Kasuta lõkkeaset",
		grill = "Grill",
		use_grill = "[${InteractionKey}] Kasuta grilli"
	},

	gumballs = {
		use_gumball_machine = "[${InteractionKey}] Sisesta münt",
		using_gumball_machine = "Mündi sisestamine",
		not_enough_money = "Sul pole piisavalt sularaha, et osta närimiskummi.",
		something_went_wrong = "Midagi läks valesti, kui üritati osta närimiskummi.",

		flavor = "Närimiskumm (${flavor})"
	},

	gun_running = {
		insert_key = "Sisesta võti: ${key}",
		wrong_key = "Sisestasid vale võtme.",
		decrypting = "Dekodeerimine",
		guns_disabled = "Relvakaubandus on praegu keelatud.",
		high_level_cooldown = "FIB serveriga ühenduse loomine ebaõnnestus, proovi hiljem uuesti.",
		timeout_cooldown = "FIB tulemüür blokeeris ühenduse, proovi hiljem uuesti.",
		failed_start_run = "Relvatehingu alustamine ebaõnnestus.",
		hack_timeout = "Ühendus serveriga kaotas ühenduse, proovi uuesti.",

		started_run_logs_title = "Relvarun",
		started_run_logs_details = "${consoleName} alustas relvarunni häkkimist.",
		finished_run_logs_title = "Relvarunni laskumine",
		finished_run_logs_details = "${consoleName} puuris relvade mahalaadimise konteineri ja leidis 1x ${item}."
	},

	gun_trader = {
		press_e_to_talk = "Vajuta ~INPUT_CONTEXT~, et rääkida Jimiga.",
		trader_closed = "Jim'i pood on praegu suletud.",

		sorry_closed = "Vabandust, pood on suletud.",
		sorry_closed_hug = "Tänan kallistuse eest :)",
		sorry_closed_finger = "Mis asja, see on ebaviisakas!",
		sorry_closed_kiss = "Woah, sõber, ma pole sellest huvitatud...",
		sorry_closed_dab = "Dab hatersite peale, tõsiselt, ausalt, jumala eest!",
		sorry_closed_fight = "Rahune maha, sõber, ma pole midagi teinud.",

		trader_locked = "Jim vajab paar asja sinult enne, kui ta on nõus oma poodi avama.",
		unlock_trader = "Anna ese Jimile.",

		trader_duty = "Tere, ametnik. Vabandust pettumuse pärast, kuid ma just sulgesin poe. Tulge tagasi teine ​​kord!",

		purchase = "Osta",
		out_of_stock = "Läbimüüdud",
		special_offer = "Eripakkumine!",

		failed_trader_closed = "Ei õnnestunud relva osta, Jim'i pood on suletud.",
		failed_no_stock = "Ei õnnestunud relva osta, enam pole kaupa.",
		failed_no_money = "Ei õnnestunud relva osta, sul pole piisavalt raha.",
		failed_something_went_wrong = "Relvade ostmine ebaõnnestus, midagi läks valesti.",
		failed_trader_not_locked = "Lukustamine ebaõnnestus, Jim'i pood on juba avatud.",
		failed_no_item = "Lukustamine ebaõnnestus, Jim'is pole seda eset vaja.",
		failed_no_enough_items = "Lukustamine ebaõnnestus, sul pole selleks eset piisavalt.",

		bought_gun_logs_title = "Jim'i relvapood",
		bought_gun_logs_details = "${consoleName} ostis Jim'ilt 1x ${itemName} eest $${price}.",

		trader_active = "Müüja (avatud)",
		trader_inactive = "Müüja (suletud)",

		slogan_1 = "Mäletage, et esimene reegel relvavõitluses on... omada relva!",
		slogan_2 = "Relvadel on ainult kaks vaenlast: rooste ja poliitikud",
		slogan_3 = "Kui kahtled ... võta see välja!",
		slogan_4 = "Relv käes on parem kui korrarikkumisest politsei teavitamine.",

		copyright = "Autoriõigus © 2009-2016 Jim'i Relvapood NC. Kõik õigused kaitstud.",

		remaining_messages = "Jäänud sõnumid: ${messages}",
		no_messages_left = "Piiksujas ei ole enam sõnumeid.",
		just_used_pager = "Sa kasutasid piiksujat hiljuti, oota enne selle uuesti kasutamist.",
		page_trader_closed = "Jim ei vasta, ta peab olema suletud.",
		page_success = "Jim saatis märguande oma asukoha ligikaudsest piirkonnast."
	},

	hacking = {
		local_disk = "Kohalik kõvaketas (C:)",
		network = "Võrk",
		external_device = "Väline seade (J:)",
		hack_connect = "HackConnect.exe",
		brute_force = "BruteForce.exe",

		my_computer = "Minu Arvuti",
		power_off = "Väljalülitus",

		password_cracked = "Parool purustatud!",
		brute_force_failed = "Brute Force ebaõnnestus!",

		writing_data = "Andmete kirjutamine puhvrisse ...",
		executing_code = "Kahjuliku koodi käivitamine ...",
		memory_leak_detected = "Mälu leke tuvastatud, süsteem sulgub ..."
	},

	halloween = {
		is_in_school = "On Koolis: ${isInSchool}",
		yes = "Jah",
		no = "Ei",
		press_to_hide_in_locker = "Vajuta ~INPUT_CONTEXT~, et peitu pugeda kappi.",
		locker_is_occupied = "Kapp on hõivatud.",
		press_to_exit_locker = "Vajuta ~INPUT_CONTEXT~, et kapist väljuda.",
		failed_to_start_escape_room = "Escape tuba käivitamine ebaõnnestus.",
		started_escape_room = "Alustati escape tuba ${playerAmount} mängijaga.",
		escape_instructions = "Kui olete valmis, uksed avanevad ja saate hoone lahkuda.",
		answer_the_phone = "Vastake telefonile.",

		-- NOTE: temp
		none = "Puudub"
	},

	health = {
		successfully_revived_player = "${consoleName} edukalt elustatud.",
		successfully_revived_player_removed_injuries = "${consoleName} edukalt elustatud ja nende vigastused eemaldatud.",
		successfully_revived_everyone = "Kõigile edukalt elustatud.",
		successfully_revived_everyone_removed_injuries = "Kõik on edukalt elustatud ja nende vigastused eemaldatud.",
		failed_to_revive = "Ei õnnestunud korrektselt täita '/revive' käsku.",
		revived_self_removed_injuries_title = "Elu äratatud ja vigastused eemaldatud",
		revived_self_removed_injuries_details = "${consoleName} tõmbas ennast tagasi ja eemaldas oma vigastused.",
		revived_self_title = "Elustas ennast",
		revived_self_details = "${consoleName} elustas ennast.",
		revived_everyone_removed_injuries_title = "Elustas kõik ja eemaldas vigastused",
		revived_everyone_removed_injuries_details = "${consoleName} elustas kõik ja eemaldas nende vigastused.",
		revived_everyone_title = "Elustas kõik",
		revived_everyone_details = "${consoleName} elustas kõik.",
		revived_player_removed_injuries_title = "Elustas mängija ja eemaldas vigastused",
		revived_player_removed_injuries_details = "${consoleName} elustas ${targetConsoleName} ja eemaldas nende vigastused.",
		revived_player_title = "Elustatud mängija",
		revived_player_details = "${consoleName} elustas ${targetConsoleName}.",
		revived_range_self_title = "Taaselustas Vahemiku Ja Iseenda",
		revived_range_self_details = "${consoleName} taaselustas kõik ${radius}m raadiuses, kaasa arvatud iseenda.",
		revived_range_title = "Taaselustatud Piirkond",
		revived_range_details = "${consoleName} taaselustas kõik ${raadius}m raadiuses.",
		death_alcohol_poisoning = "Sa jäid alkoholimürgitusse.",
		character_has_hardcore_died = "${fullName} on surnud. Sa saad valida uue tegelaskuju.",

		death_timer_override_already_set_to = "Surmaaja ülekirjutus on juba määratud ajale `${time}`.",
		set_death_timer_override = "Surmaaja eiramine on määratud ${time} sekundiks.",
		time_parameter_is_invalid = "'Aeg' parameeter on vigane.",
		death_timer_override_removed = "Surmaaja eiramine eemaldatud.",
		no_death_timer_override_set = "Surmaaja eirangut pole määratud.",

		no_nearby_ped = "Läheduses ei ole pedi.",
		ped_not_dead = "Ped pole surnud.",
		performing_cpr = "Elustamistööde tegemine",

		invalid_distance = "Vigane elustamiskaugus (peab olema vahemikus 1 kuni 50).",
		no_players_in_range = "Elustatavaid mängijaid ${distance} m raadiuses pole.",
		successfully_revived_range = "Edukalt elustatud ${amount} mängijat ${distance} m raadiuses.",
		failed_revive_range = "Mängijate elustamine ebaõnnestus.",

		cpr_ped_logs_title = "Elustatud ped",
		cpr_ped_logs_details = "${consoleName} tegi elustamistöid pedile ja teenis ${money} dollarit.",
		cpr_player_logs_title = "Elustatud mängija",
		cpr_player_logs_details = "${consoleName} tegi elustamistöid mängija ${targetConsoleName} ja sai raha."
	},

	hitmarkers = {
		hitmarkers_enabled = "Tulistamismärgid on sisse lülitatud.",
		hitmarkers_disabled = "Tulistamismärgid on välja lülitatud."
	},

	hud = {
		knots = "sõlme",
		ft = "jalg",
		m = "meeter",
		belt = "TURVAVÖÖ",
		oil = "ÕLI",
		manual = "Retiro de Ahorros",
		limiter = "KIIRUSEPIIRAJA",
		gear_uc = "KÄIGU",
		fuel = "kütus",
		nitro = "lämmastik",
		battery = "aku",
		fps = "FPS",
		ping = "PING",
		tps = "TPS",
		autopilot = "autopiloot",
		ground_asl = "Maapinna kõrgus (${unit})",
		heading = "SUUND",
		gear = "käik",
		rpm = "p/min",
		degrees = "°C",
		degrees_f = "°F",
		npc_kills = "${consoleName} retiró $${amount} de la cuenta de ahorros ${accountId}.",
		steps_walked_deaths = "${stepsWalked} sammu ~t~/~w~ ${deaths} maha jooksu",
		altitude_temperature = "${altitude} ${unit} ~t~/~w~ ${temperature}${degrees}",
		scuba_timer = "Jäänud hapnik: ${timer}",

		alignment_warning_title = "HUD-i seadistus",
		alignment_warning = "Depósito de Ahorros",

		muted = "Vaigistatud",
		tx = "Edastamine",
		rx = "Vastuvõtmine",

		fps_unit = "kaadrit/sekundis",
		ping_unit = "ms",
		tps_unit = "tps",

		smart_warnings = "Hoiatus: ${warnings}!",
		dehydrated = "vedelikupuudus",
		starving = "nälg",
		injured = "vigastatud",
		seriously_injured = "raskesti vigastatud",
		how_are_you_alive = "${consoleName} depositó $${amount} en la cuenta de ahorros ${accountId}.",
		incapacitated = "võimetu",
		stressed = "stressis",

		and_seperator = "ja",

		toggle_phone_gps_off = "Telefoni GPS on välja lülitatud.",
		toggle_phone_gps_on = "Telefoni GPS on sisse lülitatud.",

		advanced_hud_on = "Täpse HUD-i sisse lülitamine.",
		advanced_hud_off = "Täpse HUD-i välja lülitamine.",

		hud_gauges_on = "HUD-indikaatorite sisse lülitamine.",
		hud_gauges_off = "HUD-indikaatorite välja lülitamine."
	},

	hunting = {
		hold_to_skin = "[${InteractionKey}] Hoia nahastamiseks",
		skinning_animal = "Surnud looma nahk välja võetud",
		animal_is_being_skinned = "Looma nahka võetakse välja.",

		hold_to_remove = "[${InteractionKey}] Hoia all, et eemaldada surnukeha",
		removing_carcass = "Eemaldatakse vigastatud surnukeha",
		carcass_damaged = "Surnukeha on liiga vigastatud naha eemaldamiseks.",

		meat_too_damaged = "Looma liha oli liiga rikutud, et seda koristada.",

		skinned_logs_title = "Kooritud loom",
		skinned_logs_details = "${consoleName} kooris looma (${modelName}) ja sai ${skinnedItems}.",
		received_nothing = "mitte midagi"
	},

	identification = {
		los_santos = "Los Santos",
		citizen_card = "Kodaniku Kaart",
		driver_license = "Juhi Load",
		first_name = "Eesnimi",
		last_name = "Perekonnanimi",
		gender = "Sugu",
		gender_male = "Mees",
		gender_female = "Naine",
		date_of_birth = "Sünnikuupäev",
		citizen_id = "Isikukood",

		dl_no = "DL NR.",
		class = "KLASS",

		fn = "EESNIMI",
		cid = "CID",
		dob = "SÜNNIKUUPÄEV",
		sex = "SOO",
		iss = "EMISS",
		cls = "KLASS",
		["end"] = "END",

		citizenship = "Kodakondsus",
		citizenship_value = "USA",
		surname = "Perekonnanimi",
		issued_on = "Väljastatud",
		expires_on = "Aegub",

		month_1 = "Jaan",
		month_2 = "Veebr",
		month_3 = "Märts",
		month_4 = "Apr",
		month_5 = "Mai",
		month_6 = "Juuni",
		month_7 = "Juuli",
		month_8 = "Aug",
		month_9 = "Sept",
		month_10 = "Okt",
		month_11 = "Nov",
		month_12 = "Dets",

		citizen_card_details = "${firstName} ${lastName} | Sünnikuupäev: ${dateOfBirth} | Sugu: ${gender} | Isikukood: ${characterId}",
		just_showed_citizen_card = "Teie kodaniku kaarti vaadati. Palun oodake pisut.",
		driver_license_details = "${eesnimi} ${perekonnanimi} | Sünnikuupäev: ${sunnikuupaev} | Sugu: ${soo} | Kodaniku ID: ${tegelaskujuId}",
		just_showed_driver_license = "Näitasid just juhiluba. Palun oota hetk.",

		boat_license = "Paadiluba",
		boat_license_details = "Paadiluba | ${firstName} ${lastName} | Isikukood: ${characterId}",
		hunting_license = "Jahiluba",
		hunting_license_details = "Jahiluba | ${firstName} ${lastName} | Kodaniku ID: ${characterId}",
		fishing_license = "Kalastusluba",
		fishing_license_details = "Kalastusluba | ${firstName} ${lastName} | Kodaniku ID: ${characterId}",
		pilot_license = "Piloodiluba",
		pilot_license_details = "Piloodiluba | ${firstName} ${lastName} | Kodaniku ID: ${characterId}",
		weapon_license = "Relvaluba",
		weapon_license_details = "Relvaluba | ${firstName} ${lastName} | Kodaniku ID: ${characterId}",
		mining_license = "Kaevandamisload",
		mining_license_details = "Kaevandamisload | ${firstName} ${lastName} | Isikutunnistuse number: ${characterId}",
		just_showed_license = "Te näitasite just litsentsit. Palun oodake veidi.",

		just_showed_badge = "Te näitasite just silti. Palun oodake veidi.",
		sasp_badge = "SASP'i silt",
		sasp_badge_details = "SASP | ${firstName} ${lastName} | Positsioon: ${positionName}",
		bcso_badge = "BCSO silt",
		bcso_badge_details = "BCSO | ${firstName} ${lastName} | Positsioon: ${positionName}",
		sahp_badge = "SAHP'i silt",
		sahp_badge_details = "SAHP | ${firstName} ${lastName} | Positsioon: ${positionName}",
		iaa_badge = "IAA silt",
		iaa_badge_details = "IAA | ${firstName} ${lastName} | Positsioon: ${positionName}",
		fib_badge = "FIB-i tähis",
		fib_badge_details = "FIB | ${firstName} ${lastName} | Positsioon: ${positionName}",
		swat_badge = "SWAT-i tähis",
		swat_badge_details = "SWAT | ${firstName} ${lastName} | Positsioon: ${positionName}",
		management_badge = "Juhtkonna tähis",
		management_badge_details = "Juhtkond | ${firstName} ${lastName} | Positsioon: ${positionName}",
		ftp_badge = "FTP märk",
		ftp_badge_details = "FTP | ${firstName} ${lastName} | Positsioon: ${positionName}",
		ems_badge = "EMS isikutunnistus",
		ems_badge_details = "EMS | ${firstName} ${lastName} | Positsioon: ${positionName}",
		doctor_badge = "Arsti isikutunnistus",
		doctor_badge_details = "Arst | ${firstName} ${lastName} | Positsioon: ${positionName}",
		bcfd_badge = "BCFD märk",
		bcfd_badge_details = "BCFD | ${firstName} ${lastName} | Positsioon: ${positionName}",
		state_badge = "Osaühingu ID",
		state_badge_details = "Osaühing | ${firstName} ${lastName} | Ametikoht: ${positionName}",
		state_security_badge = "Riigi Julgeoleku ID",
		state_security_badge_details = "Riigi Julgeoleku Departemang | ${firstName} ${lastName}",
		doj_badge = "DOJ ID",
		doj_badge_details = "DOJ | ${firstName} ${lastName} | Positsioon: ${positionName}",
		doc_badge = "DOK Tunnus",
		doc_badge_details = "DOK | ${firstName} ${lastName} | Ametikoht: ${positionName}",

		badge_type_sasp = "San Andrease Riigi Politsia",
		badge_type_bcso = "Blaine'i Maakonna Sheriffi Amet",
		badge_type_sahp = "San Andrease Kiirtee Patrull",
		badge_type_iaa = "Sisemine Asjade Amet",
		badge_type_fib = "Föderaalne Uurimisbüroo",
		badge_type_swat = "Erivahendid ja Taktika",
		badge_type_management = "SASP Juhtimine",
		badge_type_ftp = "Väljaõppe programm väljas",
		badge_type_ems = "Kiirabi",
		badge_type_doctor = "Meditsiiniline residentuur",
		badge_type_bcfd = "Blaine'i Maakonna Tuletõrje",
		badge_type_state = "San Andrease osaühing",
		badge_type_state_security = "Riigi Julgeolekuamet",
		badge_type_doj = "Justiitsministeerium",
		badge_type_doc = "Korrektsioonide Osakond",

		badge_type_short_sasp = "SASP",
		badge_type_short_bcso = "BCSO",
		badge_type_short_sahp = "SAHP",
		badge_type_short_iaa = "IAA",
		badge_type_short_fib = "FIB",
		badge_type_short_swat = "SWAT",
		badge_type_short_management = "Juhtimine",
		badge_type_short_ftp = "FTP",
		badge_type_short_ems = "Kiirabi",
		badge_type_short_doctor = "Arst",
		badge_type_short_bcfd = "BCFD",
		badge_type_short_state = "Osaühing",
		badge_type_short_state_security = "SSD",
		badge_type_short_doc = "DOK"
	},

	import_export = {
		press_to_access = "Vajuta ~INPUT_CONTEXT~, et pääseda Import/Ekspordi menüüsse.",

		storage_units = "Tubería Rota",
		minutes = "minutit",

		total = "Kokku",
		header = "Cayo Perico - Importi/Eksporti",
		header_small = "Saada kaup Cayo Pericole ja sealt kiiresti ning lihtsalt.",

		loading = "Laen...",

		order_arrived = "Saabus",
		claim = "Nõuan",

		claim_cayo = "Nõuan Cayo's",
		claim_lsia = "Nõuan LSIA",

		big_goods = "Suured Kaubad",
		go_postal = "Go Postal",
		caipira = "Caipira Lennufirma",

		no_items = "Pole ühtegi kaupa saadaval.",

		confirm_dialog = "~b~Dr. Nancy",
		confirm = "Jah",

		no_active_order = "Sul ei ole hetkel ühtegi saadetist.",
		order_not_completed = "Sinu saadetis ei ole veel saabunud.",

		order_claimed = "Oled nõudnud oma saadetist.",

		not_enough_items = "Teil ei ole piisavalt esemeid selle saatmiseks.",
		not_enough_money = "Teil pole piisavalt raha saadetise loomiseks.",
		already_has_order = "Teil on juba aktiivne saadetis.",
		something_went_wrong = "Midagi läks valesti.",

		order_success = "Teie saadetis on teel! See saabub ${minutes} minuti jooksul.",

		created_shipment_title = "Saadetis loodud",
		created_shipment_details = "${consoleName} ha creado un envío de ${weight}su por $${price} con ${company}.",

		claimed_shipment_title = "Saadetis kätte saadud",
		claimed_shipment_details = "${consoleName} ha reclamado un envío de ${weight}su con ${company}.",

		blip_label = "Sisse- / Väljaveo kaup"
	},

	injuries = {
		inspect_no_player = "Läheduses pole mängijat, keda saaks uurida.",
		already_inspecting = "Sa uurid juba ühte mängijat.",
		inspect_failed = "Mängija uurimine ebaõnnestus.",
		inspecting = "Mängija uurimine",
		no_injuries = "Vigastusi ega verejookse pole",
		patient_bleeding = "Patsient veritseb.",
		injury = "${label} vigastus"
	},

	instances = {
		instance_created_added = "Loo eksemplar ID-ga `${instanceId}` (Lisatud mängijad: ${serverIds}).",
		instance_created = "Loo eksemplar ID-ga `${instanceId}`.",
		instance_creation_failed = "Eksemplari loomine ebaõnnestus.",
		instance_destroyed = "Hävita eksemplar ID-ga `${instanceId}`.",
		instance_destruction_failed = "Eksemplari hävitamine ebaõnnestus.",
		instance_id_parameter_invalid = "Eksemplari ID parameeter on vigane.",
		added_player_to_instance = "Lisati ${consoleName} instantsi ID-ga `${instanceId}`.",
		failed_to_add_player_to_instance = "Mängija lisamine eksemplari ebaõnnestus.",
		server_id_parameter_invalid = "Serveri ID parameeter on vigane.",
		removed_player_from_instance = "Eemaldati mängija ${consoleName} eksemplarist ID-ga `${instanceId}`.",
		failed_to_remove_player_from_instance = "Ei õnnestunud mängijat eksemplarist eemaldada.",
		instance_players = "Eksemplari ID-ga `${instanceId}` seotud mängijad: `${players}`.",
		failed_to_get_instance_players = "Ei õnnestunud eksemplari mängijaid hankida.",
		no_players = "Mängijaid ei ole.",

		instance_hud = "Eksemplari ID: ${instanceId}"
	},

	interiors = {
		in_interior = "Siseruumis: ${interiorId} (${portaalid} portaalid).",
		in_room_id = "Toas: ${roomId} (${toaNimi}).",
		total_interiors = "Kokku siseruume: ${totalInteriors} (${kokkuPortaale} kokku portaalid).",
		total_unloaded_interiors = "Kokku laadimata siseruume: ${totalUnloadedInteriors} (${kokkuLaadimataPortaale} kokku laadimata portaalid).",
		portal_text = "id=${portalId} f=${flags}"
	},

	inventory = {
		access_trunk = "Kokkupuuteks pagasiruumiga liigu siia",

		used = "Kasutatud",
		added = "Lisatud",
		received = "Recibido",

		storage_units = "su",
		storage_unit_description = "su = unidad de almacenamiento",

		store = "Salvesta",
		gas_station = "Bensiinijaam",
		gas_station_backdoor = "Bensiinijaama tagauks",
		cleaning_station = "Puhastusjaam",
		grocery_store = "Toidupood",
		dons_country_store = "Doni maapood",
		penthouse_fridge = "Luksuskorteri külmik",
		mug_shots = "Mug Shot'id",
		prison_store = "Vangla pood",
		fruit_vendor = "Puuvilja müüja",
		food_market = "Toitude turg",
		island_store = "Saare pood",
		travel_agency = "Reisibüroo",
		island_bar = "Saare baar",
		burger_bar = "Burgeribaar",
		tool_store = "Tööriistapood",
		gun_store = "Relvapood",
		discount_store = "Allahindlus pood",
		gun_store_with_shooting_range = "Relvapood lasketiiruga",
		green_wonderland = "Roheline Imedemaa",
		copy_shop = "Kopeeri pood",
		electronics_store = "Elektroonikapood",
		submarine_locker = "Casillero de Submarino",
		astrology_stand = "Astroloogiaputka",
		irish_pub = "Iiri Pubi",
		bar = "Baar",
		midnight = "Kesköö Tunershop",
		cinema = "Kino",
		strip_club = "Tantsuklubi",
		police_store = "Politsei kauplus",
		fib_store = "FIB kauplus",
		police_badge_store = "Politsei märgi laud",
		doc_badge_store = "DOK Tunnuste Leti",
		flower_store = "Stacey lillepood",
		gift_store = "Del Perro kingitused",
		ems_store = "Kiirabi kauplus",
		drug_store = "Ravimikapp",
		ems_badge_store = "Kiirabi märgi laud",
		doj_badge_store = "DOJ märgi laud",
		state_store = "Osaühingu pood",
		pharmacy = "Apteek",
		chop_shop = "Autovahetus",
		courthouse = "Kohtumaja",
		burger_shot = "Burger Shot",
		burger_shot_fridge = "Burger Shot'i külmik",
		erp_shop = "ERP Pood",
		pet_shop = "Lemmikloomapood",
		bean_machine = "Oa Masin",
		hunting_store = "Jahipood",
		fishing_store = "Kalapood",
		los_santos_golf_club = "Los Santos Golfiklubi",
		arcade_bar = "Mängutuba Baar",
		japanese_restaurant = "Jaapani Restoran",
		japanese_restaurant_kitchen = "Jaapani restorani köök",
		["945_studios"] = "945 Studios",
		grain_mill = "Teraviljamuuseum",
		pd_prefix = "PD",
		ems_prefix = "EMS",
		government_prefix = "Valitsus",
		wonderland_prefix = "WL",
		br_prefix = "BR",
		inventory_overweight = "Sinu inventar on ülekoormatud!",
		vehicle_locked = "Sõiduk on lukus.",
		press_to_access_store = "Vajuta ~INPUT_REPLAY_SHOWHOTKEY~, et pääseda poe juurde.",
		press_to_access_locker = "Vajuta ~INPUT_REPLAY_SHOWHOTKEY~, et pääseda oma eraprivaatsesse kappi.",
		press_to_access_shared_storage = "Vajuta ~INPUT_REPLAY_SHOWHOTKEY~, et pääseda jagatud salvestusse.",
		device_printout_details = "<b>Tüüp:</b> <i>${type}</i>, <b>Tekst:</b> <i>${text}</i>",
		copy_serial_number = "Kopeeri seerianumber",
		copy_fingerprint = "Kopeeri sõrmejälg",
		serial_number_copied = "${itemName}, Seerianumber: ${serialNumber}",

		failed_give = "No se pudo entregar el/los objeto(s) al jugador.",
		character_too_far = "El jugador está demasiado lejos.",
		target_inventory_full = "El inventario del jugador está lleno.",
		received_item = "${consoleName} ha creado un envío de ${weight}su por $${price} con ${company}.",

		inspect_weapon = "Selle ${itemName} seerianumber tundub olevat `${itemId}`.",
		inspect_weapon_broken = "Selle ${itemName} seerianumber tundub olevat `${itemId}`, kuid see tundub täiesti katki.",
		inspect_bank_property = "${consoleName} ha reclamado un envío de ${weight}su con ${company}.",
		inspect_no_property = "Recibido",

		searching_dumpster = "Prügikasti otsimine",

		nameable_title = "Nimetatava eseme nimi:",

		inventory_restricted = "Sa ei saa seda eset sellesse inventari liigutada.",

		press_to_access_shredder = "[${InteractionKey}] Juurdepääs hävitajale.",

		invalid_item_id = "Vigane eseme ID.",
		item_not_found = "Ei leitud eset ID-ga `${itemId}`.",
		item_lookup = "${label} (${itemId}) hetkel asukohas ${inventoryName}:${inventorySlot}.",

		invalid_evidence_id = "Vale tõendi ID.",
		not_near_evidence_locker = "Sa ei ole tõendite kapis.",
		clear_evidence_success = "Tõend edukalt kustutatud ID-ga `${evidenceId}`.",
		clear_evidence_failed = "Tõendi kustutamine ebaõnnestus.",

		clear_evidence_logs_title = "Tõendite kustutamine",
		clear_evidence_logs_details = "${consoleName} kustutas tõendi ID-ga `${evidenceId}`. Kustutati ${deleted} objekti ja hoiti alles ${kept}.",

		big_inventory_disabled = "Taasta tegelase inventari pesad vaikeseadetele.",
		big_inventory_enabled = "Suurendatud sinu tegelase inventari pesasid ajutiselt.",

		press_to_open_public_inventory = "~INPUT_REPLAY_SHOWHOTKEY~ Avage ${label}",

		burgershot_counter = "Burgershot Lugeja",
		arcade_counter = "Mänguautomaadi leti",
		tequilala_counter = "Tequi-la-la leti",
		prison_counter = "Vangla loendur",

		inventory_name_missing = "Puudu on inventari nime parameeter.",

		shredder_title = "Paberipurustaja",
		shredder_description = "Hoiatus: Kõik siia liigutatud esemed kustutatakse kohe ja neid ei saa taastada.",

		npc_vehicle_inventory = "NPC inventar",

		store_help = "Ostmiseks lohistage asi sekundaarsest inventarist oma enda inventari.",
		store_tax = "Poe maks",
		store_tax_percentage = "${tax}%",

		missing_job = "Teil pole vajalikku töökohta, et kasutada seda inventari.",

		item_is_broken = "See ese on katki.",
		battle_royale_item = "Seda eset saab kasutada ainult lahingurojalisse mängus.",
		battle_royale_item_disallowed = "Seda eset pole lahingurojalises mängus lubatud kasutada.",

		broken_food = "See ese on rikutud.",
		broken_drugs = "See ese on aegunud.",
		vape_empty = "See vape on tühi.",

		craft_combine = "Valmistage <i>${output}</i>",
		combining = "Valmistamine",

		file_serial = "su",
		filing_off_serial_number = "su = unidad de almacenamiento",
		filed_serial_number = "Casillero de Submarino",
		failed_file_serial_number = "No se pudo entregar el/los objeto(s) al jugador.",

		carve_jack_o_lantern = "Pange välja <i>Jack-o-latern</i>",
		crush_cocoa_beans = "Purusta <i>kakaooad</i>",
		mix_hot_chocolate = "Sega <i>kuum šokolaad</i>",
		crush_raw_ruby = "Purusta <i>toore rubiin</i>",
		crush_raw_sapphire = "Purusta <i>toore safiir</i>",
		break_apart_weed = "El jugador está demasiado lejos.",
		brine_meat = "Marinaad <i>toorkala</i>",
		prepare_sandwich = "Valmista <i>BBQ võileiv</i>",
		pickle_cucumbers = "Marinaad <i>kurgid</i>",
		melt_chocolate = "Sulata <i>tume šokolaad</i>",
		craft_torch = "Valmista <i>torch</i>",
		prepare_beans_toast = "Valmista <i>Oad röstsaiaga</i>",
		mix_pancake_batter = "Sega <i>Pannkoogitainas</i>",
		disassemble_bandages = "Lahuta <i>sidemeid</i>",
		craft_tourniquet = "Valmista <i>tourniquet</i>",

		search = "Otsi",
		amount = "Kogus",
		use = "Kasuta",
		close = "Sulge",

		done = "VALMIS",
		burnt = "PÕLENUD",
		danger = "OHTLIK",
		fuel = "Kütus: ${fuel}",

		item_does_stack = "Seda ese saab virnastada.",
		item_does_not_stack = "Seda ese ei saa virnastada.",
		individual_weight = "Üksiku kaal",
		stack_amount = "Virna kogus",

		logs_secondary_inventory_title = "Teisene inventar avatud",
		logs_secondary_inventory_details = "${consoleName} avas sekundaarse inventuuri nimega `${inventoryName}`.",
		logs_ground_inventory_created_title = "Maa inventuur loodud",
		logs_ground_inventory_created_details = "${consoleName} lõi maa inventuuri nimega `${inventoryName}`.",

		logs_item_moved_title = "Ese liigutatud",
		logs_item_moved_details = "${consoleName} liigutas ${moveAmount}x ${itemLabel} asukohta inventuuris ${startInventory}:${startSlot} asukohale ${endInventory}:${endSlot}.",
		logs_item_given_title = "Eseme antud",
		logs_item_given_details = "${consoleName} andis ${amount}x ${label} kasutajale ${targetConsoleName}.",

		logs_item_purchased_title = "Ese(d) ostetud",
		logs_item_purchased_no_tax_details = "${consoleName} ostis ${purchaseAmount}x `${itemLabel}` ${purchaseCost} dollariga.",
		logs_item_purchased_tax_details = "${consoleName} ostis ${purchaseAmount}x `${itemLabel}` ${purchaseCost} dollariga, lisatasuks ${taxCost} dollarit (${salesTaxPercentage}% müügimaksu).",

		radius_invalid = "Raadius `${radius}` ei ole sobilik väärtus.",
		wiped_all_ground_inventories = "${inventoriesWiped} maapõhjal asuvat inventari kustutatud.",
		wiped_nearby_ground_inventories = "${inventoriesWiped} maapõhjas asuvat inventari kustutatud raadiuses `${radius}`.",
		failed_to_wipe_ground_inventories = "Maapõhja inventaride tühjendamine ebaõnnestus.",
		no_ground_inventories = "Maapõhja inventare ei leitud.",
		no_ground_inventories_within_radius = "Maapõhja inventare ei leitud raadiusega ${radius}.",

		logs_wiped_all_ground_inventories_title = "Tühistati kõik maapõhja inventarid",
		logs_wiped_all_ground_inventories_details = "${consoleName} tühjendas kõik maapõhja inventarid.",

		logs_wiped_nearby_ground_inventories_title = "Kustutati Lähedalasuvad Maas Tarned",
		logs_wiped_nearby_ground_inventories_details = "${consoleName} kustutas raadiusega `${radius}` kõik lähedalasuvad maatsed tarned.",

		inventory_crafting_logs_title = "El inventario del jugador está lleno.",
		inventory_crafting_logs_details = "${consoleName} ha creado un envío de ${weight}su por $${price} con ${company}.",

		press_use_campfire = "[${InteractionKey}] Kasuta Lõkkekohta",
		use_campfire = "Kasuta Lõkkekohta",

		dumpster_sandwich = "Hallitanud Võileib",
		dumpster_beer = "Suletud Õlu",
		dumpster_milk = "Aegunud Pigeon Piim",
		dumpster_meat = "Tolmune liha (veidi hallitanud)",
		dumpster_fries = "Vana friikartul",
		dumpster_brownies = "Kuivanud pruunid koogid",
		dumpster_pizza_slice = "Hallitanud pitsatükk",
		dumpster_banana = "Karvane banaan (vesine)",
		dumpster_pepsi = "Lame Pepsi",
		dumpster_almond_milk = "Katkine mandlipiim",
		dumpster_capri_sun = "Pooltühja Capri Sun",
		dumpster_knife = "${consoleName} ha reclamado un envío de ${weight}su con ${company}.",

		-- items & item descriptions
		body_armor = "Kere rüü",
		body_armor_description = "Valmistu sõjaks või igapäevaseks eluks Los Santose tänavatel.",
		first_aid_kit = "Esmaabikomplekt",
		first_aid_kit_description = "Loo iseenda arsti komplekt.",
		bandages = "Sidemed",
		bandages_description = "Kõigeks, mis valus ja haiget teeb.",
		tourniquet = "Tourniquet",
		tourniquet_description = "Elupäästev vahend kriitilistes olukordades, tourniquet on mõeldud tõsise verejooksu kiireks peatamiseks. Kuigi see pakub minimaalset paranemist võrreldes põhjalikumate esmaabivõimalustega, võib selle võime verekaotuse peatamiseks olla määrava tähtsusega erakorralistes olukordades.",
		gauze = "Side",
		gauze_description = "Kriitiline igale esmaabikomplektile, see side on pehme, imav ja ideaalne haavade sidumiseks. See pakub haavahoolduse põhialust, aidates haldada verejooksu ja kaitsta nakkuste eest.",
		oxygen_tank = "Hapnikupaak",
		oxygen_tank_description = "Kopsude laienduspakett.",
		ifak = "IFAK",
		ifak_description = "\"PD toitepakett, mis kindlustab W'd, kui seda kasutatakse. Rohkem kui 1 võtmine põhjustab EZ aplausi tunde koos kriminaalidele osavõtutrofeede jagamisega, kui nad langevad.\"<br><br>-Joe, 2020",

		citizen_card = "Kodaniku kaart",
		citizen_card_description = "Toimib identifitseerimis-, tulirelvade kasutus- ja juhilubadena.",
		driver_license = "Juhi load",
		driver_license_description = "Ametlik juhiluba. Üldse mitte hommikuhelvestepaki tagant pärit.",
		phone = "Telefon",
		phone_description = "never:tm:",
		radio = "Raadio",
		radio_description = "Kasulik vidin kõigile metamängijatele seal!",
		smart_watch = "Nutikell",
		smart_watch_description = "Viha, kui pead kõikjal sularaha maksma? Lihtsalt kasuta oma nutikella! Lisaks on olemas sisseehitatud kompass, kell, GPS ja sammulugeja! Lihtsalt ärge jookske kell 2 öösel.",
		tablet = "Tahvelarvuti",
		tablet_description = "Väga suur telefon.",
		wallet = "Recibido",
		wallet_description = "su",

		gps = "GPS",
		gps_description = "Rahuldage kõik oma vidinavajadused.",

		gps_collar = "GPS kaelarihm",
		gps_collar_description = "GPS-krae oma lemmikloomade jälgimiseks.",

		boosting_tablet = "Boostamise Tahvelarvuti",
		boosting_tablet_description = "Kasutatakse täiesti seaduslike lepingute saamiseks.",

		boat_license = "Paadiluba",
		boat_license_description = "Luba paatide kasutamiseks.",
		hunting_license = "Jahiluba",
		hunting_license_description = "Jahiluba jahtimiseks.",
		fishing_license = "Kalastusluba",
		fishing_license_description = "Kalastusluba kalapüügiks.",
		pilot_license = "Piloodiluba",
		pilot_license_description = "Piloodiluba lennukite ja muude lendavate seadmete lennutamiseks.",
		weapon_license = "Relvaluba",
		weapon_license_description = "Relvaluba kõrgema kategooria relvade omamiseks ja kandmiseks.",
		mining_license = "Kaevandamisload",
		mining_license_description = "Kaevandamiseks mõeldud luba.",

		sasp_badge = "SASP märk",
		sasp_badge_description = "Märk San Andrease politsei osakonna ametnikele.",
		sahp_badge = "SAHP märk",
		sahp_badge_description = "Märk San Andrease kiirteepolitsei ametnikele.",
		bcso_badge = "BCSO märk",
		bcso_badge_description = "Märk Blaine'i maakonna vanglaametnikele.",
		iaa_badge = "IAA märk",
		iaa_badge_description = "Märk Siseasjade Agentuuri ametnikele.",
		fib_badge = "FIB märk",
		fib_badge_description = "Märk Föderaalse Uurimisbüroo agentidele.",
		swat_badge = "SWAT märk",
		swat_badge_description = "Märk eri relvade ja taktika osakonna ohvitseridele.",
		management_badge = "Juhtimise märk",
		management_badge_description = "Märk SASP juhtimisüksuse agentidele.",
		ftp_badge = "FTP märk",
		ftp_badge_description = "Märk väljaõppe programmi treeneritele.",
		ems_badge = "EMS isikutunnistus",
		ems_badge_description = "Isikutunnistus EMS parameedikutele.",
		doctor_badge = "Doktori isikutunnistus",
		doctor_badge_description = "Isikutunnistus arstidele.",
		bcfd_badge = "BCFD märk",
		bcfd_badge_description = "Märk Blaini maakonna tuletõrjeosakonna tuletõrjujatele.",
		state_badge = "Osariigi ID",
		state_badge_description = "ID osariigi San Andrease töötajatele.",
		state_security_badge = "Riigi Julgeoleku ID-kaart",
		state_security_badge_description = "ID-kaart Riigi Julgeoleku agentidele.",
		doj_badge = "DOJ Teenistusmärk",
		doj_badge_description = "Teenistusmärk Justiitsministeeriumi töötajatele.",
		doc_badge = "DOK Tunnus",
		doc_badge_description = "Tunnus Korrektsioonide Osakonna töötajatele.",

		radio_chop_shop = "Demonteerimiskoha raadio",
		radio_chop_shop_description = "Kasutatakse teabe saamiseks 'kuumadest' sõidukitest mitteeksisteerivate inimeste käest, kes töötavad demonteerimiskohas.",

		binoculars = "Binokkel",
		binoculars_description = "Oluline vidin igale kõrvaltvaatajale, kes varitseb Los Santoses!",
		photo_camera = "Fotokaamera",
		photo_camera_description = "Nikon ja Igna on loonud turu kõige uuema professionaalse kaamera. Tänu oma edasijõudnud objektiivile (70-300mm f/4.5-5.6E) on võimalik jäädvustada isegi kõige pisemaid detaile, näiteks väikseid objekte maapinnal.",

		remote_camera = "Kaughalduskaamera",
		remote_camera_description = "Kaamera, mis saab paigutada kuhu iganes ja mida on võimalik vaadata kaugusest.",
		remote_monitor = "Kaughaldusmonitor",
		remote_monitor_description = "Kantav monitor, mida saab kasutada kaughalduskaamerate vaatamiseks.",

		handcuffs = "Pekid",
		handcuffs_description = "Täieliku ERP kogemuse jaoks.",
		bolt_cutter = "Lõikur",
		bolt_cutter_description = "ERP polnud nii lõbus kui oodatud...",
		drill = "Puurtrell",
		drill_description = "Mulle tundub, et paljudel inimestel siin oleks selleks kasutust... arvestades kuidas neil mõned kruvid lahti paistavad olevat.",
		umbrella = "Vihmavari",
		umbrella_description = "Kanaliseeri oma sisemine Poppins.",
		watch = "Käekell",
		watch_description = "Aega pole raisata.",
		compass = "Kompass",
		compass_description = "43,3068 N 0,7668 W",
		map = "Kaart",
		map_description = "Näitab, kuhu sa lähed ja kus oled käinud. Või ehk olid sa seal?",
		bus_map = "Bussikaart",
		bus_map_description = "Kaart Los Santose bussiliinidest. Näitab kõiki peatusi, kus saab bussi peale võtta.",
		flight_radar = "Lennu Radar",
		flight_radar_description = "See arenenud Lennu Radar vastuvõtja on sinu aken taevasse, pakkudes reaalajas ülevaate lennukite liikumistest, kuni nad on radarjaama vahetus läheduses. Täiuslik lennundushuvilistele ja professionaalidele, see pakub põhjalikku ülevaadet õhulendude maastikust, tagades, et oled alati ühendatud ülemise maailmaga.",
		glass_breaker = "Hädaolukorra aknalõhkuja",
		glass_breaker_description = "Kasutatakse autoakende purustamiseks hädaolukorras.",

		picture = "Pilt",
		picture_description = "Koguge kõik mälestused teie ja teie sõprade kohta. (Suurus: 1x1)",
		picture_wide = "Pilt",
		picture_wide_description = "Koguge kõik mälestused teist ja teie sõpradest. (Suurus: 14x8,5)",
		printed_card = "Trükitud Kaart",
		printed_card_description = "Väike trükitud kaart, äkki visiitkaart? (Suurus: 9x5)",
		printed_document = "su = unidad de almacenamiento",
		printed_document_description = "Casillero de Submarino",
		paper = "Foto paber (1x1)",
		paper_description = "Tühi paber nelinurksete fotode printimiseks. (Suurus: 1x1)",
		paper_wide = "Foto paber (14x8.5)",
		paper_wide_description = "Tühi paber laiade fotode printimiseks. (Suurus: 14x8.5)",
		card_paper = "Kaardipaber (9x5)",
		card_paper_description = "El jugador está demasiado lejos.",
		document_paper = "Dokumendipaber (21x28)",
		document_paper_description = "Fucking used for sawing shit off of other shitty things.",
		printer = "Printer",
		printer_description = "Ei faxi, ainult printer.",

		brochure = "Brošüür",
		brochure_description = "Abiks olev brošüür linna tutvumisel.",

		basic_repair_kit = "Põhiline paranduskomplekt",
		basic_repair_kit_description = "Muudab asjad töökorras, kuid vaevalt.",
		advanced_repair_kit = "Edasijõudnud paranduskomplekt",
		advanced_repair_kit_description = "Kasutatakse katkiste hingede parandamiseks.",
		basic_lockpick = "Põhiline lukuvõti",
		basic_lockpick_description = "Kasutatakse lukkude avamiseks.",
		advanced_lockpick = "Edasijõudnud lukuvõti",
		advanced_lockpick_description = "Peidad oma lapsed ja naise",
		cleaning_kit = "Puhastuskomplekt",
		cleaning_kit_description = "Täiuslik oma sõiduki või vereplekkide eemaldamiseks taga istmel.",
		scratch_remover = "Kriimude eemaldaja",
		scratch_remover_description = "Kasutatakse sõidukite mõlkide ja kriimude eemaldamiseks.",
		motor_oil = "Mootori õli",
		motor_oil_description = "Kasutatakse mootori sujuvaks töötamiseks.",
		color_measurer = "Värvi mõõtja",
		color_measurer_description = "Kasutatakse mistahes sõiduki värvi täpseks mõõtmiseks.",
		tint_meter = "Toonikatemeeter",
		tint_meter_description = "Tähtis tööriist õiguskaitseorganitele, et kontrollida sõiduki aknakilede läbipaistvust vastavalt ohutusnõuetele ja nähtavuse standarditele.",

		multi_tool = "Mitmeotstarbeline tööriist",
		multi_tool_description = "Tööriist, mida saab kasutada erinevateks otstarveteks.",

		microphone_bug = "Mikrofoniputukas",
		microphone_bug_description = "Kasutatakse vestluste salvestamiseks.",
		vehicle_tracker = "Sõiduki jälgija",
		vehicle_tracker_description = "See jälgija on täpselt see, mida Michael vajab. Ta on juba seitse aastat kahtlustanud, et tema abikaasa, Amanda, petab teda oma tennise treeneriga.",
		device_scanner = "Seadme skanner",
		device_scanner_description = "Kasutatakse läheduses olevate kõrvaliste seadmete skaneerimiseks.",
		radio_decryptor = "Raadio dekrüpteerija",
		radio_decryptor_description = "Dekrüpteerib raadio sagedused, kui on ühendatud raadioga.",

		paper_bag = "Paberkott",
		paper_bag_description = "Ideaalne toidukaupade säilitamiseks või mõne inimese pea ladustamiseks, kas siis elus- või surnuna.",
		burger_shot_delivery = "Burger Shoti söök",
		burger_shot_delivery_description = "Suurepärane kogum märgade lihapallide, saiade ja muude hõrgutiste näol, mida pakutakse Burger Shotis.",
		bean_machine_delivery = "Bean Machine'i tellimine",
		bean_machine_delivery_description = "Kott täis imelisi maiuseid ühest pisikesest kohvikust kesklinnas.",
		kissaki_delivery = "Kissaki einelaud",
		kissaki_delivery_description = "Maitsvat valikut sushi ja teisi Jaapani hõrgutisi.",
		green_wonderland_delivery = "Roheline Imedemaa Kott",
		green_wonderland_delivery_description = "Seljakott täis sinu lemmik rohelisi maiustusi. #420blazeit",

		ear_defenders = "Kõrvaklapid",
		ear_defenders_description = "Kasutatakse kõrvade kaitsmiseks valjude helide eest.",

		clothing_bag = "Riiete kott",
		clothing_bag_description = "Ära kunagi enam muretse riietuskriiside pärast! Riiete kotiga saad hoiustada oma lemmikrõivaid ja varustada end nendega koheselt ükskõik kus sa ka ei viibiks. See kott on nagu võluväeloomine ilma bibbidi-bobbidi-boo'ta.",

		magnifying_glass = "Luup",
		magnifying_glass_description = "Luup kõigi teie detektiivivajaduste jaoks. Ehk leiad nelja lehega ristiku murult või väikese konnakese mudast?",

		clover = "Nelja Lehega Ristik",
		clover_description = "Haruldane nelja lehega ristik hea õnne jaoks. Sa saad neid leida murult, kui piisavalt hästi otsid.",
		small_frog = "Väike Konn",
		small_frog_description = "Lihtsalt väike konnake. Vaata, kui armas ta on!",
		seashell = "Merikarp",
		seashell_description = "Merikarp rannast. Kui paned selle kõrva juurde, kuuled ookeani.",
		lucky_penny = "Õnnemünt",
		lucky_penny_description = "Leia teel olles õnnemärk - Õnnemünt, haruldane leid teel, mis lubab veidi õnne. Hoia seda lähedal ja lase õnnel oma teed juhtida.",
		small_frog_mk2 = "Väike Konn MK2",
		small_frog_mk2_description = "Mudast leiad väikse elava kaaslase: Väike Konn MK2, mida iseloomustab selle miniaturne sõjaväe kiiver ja pisike AK relv seemnema. Neid uurides läbi suurendusklaasi mudast leida on haruldane ning lõbus auavaldus, tunnistus looduse imepärastest imedest.",
		caterpillar = "Röövik",
		caterpillar_description = "Aia pärliks on see silmapaistev röövik nähtav vaid neile, kellel on luup ja terav uudishimu. Selle erksad triibud ja õrnad liigutused on loodusesõbra rõõm.",

		keys = "Võtmed",
		keys_description = "Paar võtmeid mõne ukse jaoks kuskil.",

		raw_diamond = "Tooriktene",
		raw_diamond_description = "Haruldane ja töötlemata teemant, toores ja puutumatu, sära oma tahkudelt ootab avastamist. Ideaalne neile, kes leiavad ilu toores potentsiaalis, ootab see kalliskivi meistri puudutust, et vallandada täielik hiilgus.",
		raw_morganite = "Toores morganiit",
		raw_morganite_description = "Hele roosa vääriskivi oma looduslikus olekus, toores morganiit on haruldane ja hinnatud oma õrna varjundite tõttu. Lubab rafineeritud ilu veetlust, kui seda lõikab ja poleerib eksperdikäsi.",
		raw_ruby = "Toores rubiin",
		raw_ruby_description = "Rikas ja sügav värvilt see toorelt rubiin peidab endas rabavat ilu oma robustse välispinna all. Kalliskivi, mis sümboliseerib kirge ja võimu, ootab muundumist tükiks, mis tõeliselt köidab tähelepanu.",
		raw_sapphire = "Toores safiir",
		raw_sapphire_description = "See töötlemata safiir oma intensiivsete siniste toonidega räägib sügavusest ja müsteeriumist. Nii vastupidav kui ka kaunis, on see valmis valmistamiseks ehte, mis peegeldab taevast.",
		raw_emerald = "Toores smaragd",
		raw_emerald_description = "Elaav, töötlemata smaragd, mis haarab endasse lopsakate maastike ja sügavate metsade olemuse. Tavaline, ent lummav, see omab potentsiaali lilleks iluks peale viimistlust.",

		ruby_dust = "Rubiini tolm",
		ruby_dust_description = "Erksavärviline punane pulber, valmistatud peenelt purustatud rubiinidest, mida hinnatakse nende rikkaliku sügava värvi eest. See luksuslik pigment on ideaalne julge ja silmapaistva varjundi lisamiseks igasse projekti, eriti kui see on kombineeritud teiste patriootlike toonidega, luues välimuse, mis kindlasti meelitab tähelepanu ja inspireerib rahvuslikku uhkust.",
		sapphire_dust = "Safiiri tolm",
		sapphire_dust_description = "Uimastav sinine pulber, mis on loodud kõrgekvaliteediliste safiiride peenestamisega peeneks tolmus. Selle pigmendi sügavsinine värv on lummav ja meenutab pilvitus taevast ning suursuguseid ookeane, muutes selle ideaalseks valikuks projektide jaoks, mis nõuavad kuninglikku ja kaasahaaravat puudutust. Kui seda kasutada koos teiste värvidega, mis kutsub esile teatud lipuvärava hinge, on tulemus tõeliselt hingemattev.",

		morganite = "Morganit",
		morganite_description = "Soe virsiku tooniga poleeritud morganite võlub südame oma õrna, kuid kaasahaarava säraga. Haruldust ja romantilist külgetõmmet ühendav pärl, ideaalne luksuslike ja kaunite ehetega.",
		ruby = "Rubiin",
		ruby_description = "Nikerdatud täiuslikkuseni, see rubiin sädeleb sügava punase valgusega. Selle erksavärviline toon ja läikiv sära teevad sellest ihaldusväärse kivi esinduslike ehetega kaunistamiseks.",
		sapphire = "Safiir",
		sapphire_description = "Tarkuse ja aadli sümbol, see poleeritud safiir pimestab oma kuningliku sinise säraga. Selle vastupidavus ja läige teevad sellest lemmikkivi nii igapäevaseks kandmiseks kui ka pidulikeks üritusteks.",
		emerald = "Smaragd",
		emerald_description = "Poleeritud, et paljastada kevade elujõudu meenutav särav roheline, on see smaragd looduse hiilguse tunnistus. Hindame selle rikkalikku värvi ja selgust, mistõttu on see mistahes vääriskivikollektsiooni alustala.",

		ring = "Sõrmus",
		ring_description = "Lihtne, kuid elegantne alus isiklikuks loominguks - see tühi sõrmus on valmistatud kvaliteetsest metallist ning valmis kaunistamiseks igasuguse vääriskiviga. Sellele saab graveerida sõnumi, muutes sõrmuse sama unikaalseks nagu kandja enda lugu.",

		diamond_ring = "Teemantsõrmus",
		diamond_ring_description = "See väljavalitud teemantidega sõrmus sisaldab vääriskivi, millel on sädelev lõige, mis on paigutatud elegantse hõbedase sõrmuse sisse, mille ümber on paigutatud pisemad teemandid. Selle ajatu elegants ja läikiv sära teevad sellest lõputu armastuse ja pühendumuse sümboli.",
		morganite_ring = "Morganit-sõrmus",
		morganite_ring_description = "Pehme ja peen, see morganiitrõngas sädeleb sooja virsikuroosa varjundiga. Kalliskivi on paigutatud roosakuldsesse raami, mis rõhutab selle õrna värvi, pakkudes kaasaegset ja romantilist ehet, mis paistab silma oma naiseliku võluga.",
		ruby_ring = "Rubrikkidega sõrmus",
		ruby_ring_description = "Jõuline ja võluv, see rubiinirõngas kiidab heaks sügavpunase kalliskivi südames. Asudes klassikalises hõbedases sõrmuses keeruliste detailidega, sümboliseerib see kirge ja armastuse püsimatu tugevust.",
		sapphire_ring = "Safiiriga sõrmus",
		sapphire_ring_description = "Pidulik ja silmapaistev, see safiirirõngas sisaldab sügavsinist kalliskivi, meenutades kesköötaevas. Hõbese sõrmusega elegantsete küljakividega, pakub see kõrgemat elegantsi puudutust ja kuninglikku aurat igale, kes seda kannab.",
		emerald_ring = "Smaragdiga sõrmus",
		emerald_ring_description = "Esmalt intensiivset ja elurõõmu täis, see smargi sõrmus näitab rikkalikku rohelist kivi, mis on paigutatud õrnalt valmistatud hõbedasse sõrmusesse. See on looduse lopsaka ilu tähistamine, ideaalne neile, kes hindavad kasvu ja uuendust.",

		gemstone_scanner = "Kalliskivide skanner",
		gemstone_scanner_description = "Iga kaevuri jaoks oluline tööriist, Gemstone Scanner on loodud hindama kividesse mattunud vääriskivide stabiilsust. Hindamaks iga kivi struktuurilist terviklikkust, aitab see seade kaevuritel kindlaks teha ohutu lähenemisviisi ekstraktsioonile, vähendades ohtlike plahvatuste tekitamise riski. Hädavajalik, et säilitada nii vääriskivide väärtus kui ka kaevandamisoperatsiooni ohutus.",

		extended_clip = "Laadimiskiiruse suurendaja",
		extended_clip_description = "Vähem laadimist.",
		grip = "Käepide",
		grip_description = "Käepide, mis sobib sinu relvale.",
		sight = "Holograafiline täpsus",
		sight_description = "Kuidas parandada halba täpsust.",
		scope = "Sihik",
		scope_description = "Nii et saad kaugusboonuse.",
		suppressor = "Vaigisti",
		suppressor_description = "Pang pang muutub kwii kwii-ks.",
		flashlight = "Taskulamp",
		flashlight_description = "Pimeduses nägemine tüüpiline beat.",
		extended_pistol_clip = "Laiendatud padrunipesa (Püstol)",
		extended_pistol_clip_description = "Vähem laadimist.",
		extended_smg_clip = "Laiendatud padrunipesa (SMG)",
		extended_smg_clip_description = "Vähem laadimist.",
		extended_shotgun_clip = "Laiendatud padrunipesa (Püss)",
		extended_shotgun_clip_description = "Vähem laadimist.",
		drum = "Trommimagasin",
		drum_description = "Enam ei pea iialgi laadima.",
		pistol_sight = "Püstolitäht",
		pistol_sight_description = "Kuidas parandada halba täpsust.",

		aluminium_plate = "Alumiiniumplaat",
		aluminium_plate_description = "Hoiatus: Ei kaitse kuulide eest... narkar.",
		aluminium_rod = "Alumiiniumvars",
		aluminium_rod_description = "Proovi mitte liiga tugevalt oma sõpru peaga lüüa sellega.",
		copper_nugget = "Vaskpilliroog",
		copper_nugget_description = "Väikest tükikest magusast kuldmustrilisest asjast.",
		copper_wire = "Vasktraat",
		copper_wire_description = "Mitmekülgne juhe, mida saab kasutada peaaegu kõigi elektrooniliste seadmete jaoks.",
		lens = "Objektiiv",
		lens_description = "Kasutatakse prillides ja mikroskoopides, sa friik.",
		polymer_resin = "Polümeervaik",
		polymer_resin_description = "Ei ole suitsetatav liiki, aga ikka lahe.",
		screws = "Kruvid",
		screws_description = "Mida sa kruvid?",
		spring = "Võru",
		spring_description = "Ma ei tea miks, aga inimesed armastavad neid puhastada?",

		grenade_shell = "Granaadi koorik",
		grenade_shell_description = "See tühi granaadikoore on oluline komponent spetsialiseeritud granaatide valmistamisel, näiteks suitsu- või gaasitüüpide puhul. Selle tugev karp on kavandatud erinevate ainete turvaliseks sisaldamiseks ja vabastamiseks, kui seda kasutatakse koos õige käivitusmehhanismiga.",
		grenade_pin = "Granaadi nõel",
		grenade_pin_description = "Oluline turvaliseks käsitlemiseks ja granaatide kasutamiseks, see varras toimib turvalukuna. Kui see ühendatakse granaadikoorega, võimaldab see täpset kontrolli ja ajastust, mida vajatakse efektiivsete suitsu- või gaasilevitusseadmete loomisel taktikaliste olukordade jaoks.",

		paint = "Värv",
		paint_description = "Purgi premiumklassi relvavärviga, saadaval mitmesugustes klassikalistes toonides. Anna oma ustavale kõrvalrelvale stiilimiseks värskendav kiht, mis paneb sõbrad imestama ja vastased hirmu tundma. Üks purk on piisav relva täielikuks ümberehitamiseks, lihtsalt ära hakka seda sisse hingama.",
		paint_brush = "Värvipintsel",
		paint_brush_description = "Kvaliteetne hari peente harjastega, loodud täpseks ja ühtlaseks värvikandmiseks igale relva pinnale. Koos meie premiumvärviga aitab see hari sul osavalt kujundada oma relva uue välimuse, kas soovid julget kamuflaaži või elegantselt stiilseid disaine.",

		skin_patriotic = "Patriootiline nahk",
		skin_patriotic_description = "Näita oma armastust punase, valge ja sinise vastu selle patriootliku relvakattega. Ideaalne kõigile tõelistele ameerika patriootidele, kes soovivad väljendada oma rahvuslikku uhkust, olles relvastatud. See muudab sinu relva silmapaistvamaks, kui võitled vabaduse eest.",
		skin_brushstroke = "Pintsli löögi nahk",
		skin_brushstroke_description = "Ole loominguline oma relvastusega, kasutades seda abstraktset pintslitõmbe kujundusega katet. See on nagu omada kaasaegse kunsti tükki, mis võib ka teie vaenlastel auke tekitada.",
		skin_skull = "Kolju nahk",
		skin_skull_description = "Külvata hirmu oma vaenlaste südames selle ägeda kolju-motiiviga kujundusega. Midagi ei ütle \"ära torgi mind\" päris nii hästi kui ähvardava kolju motiiv sinu valitud relval.",
		skin_leopard = "Leopardi nahk",
		skin_leopard_description = "Vabasta oma metsik pool ja mine jahtima selle ägeda leopardimustriga nahaga. See on täiuslik viis lisada oma varustusele looma magnetismi.",
		skin_zebra = "Sebra nahk",
		skin_zebra_description = "Teenige oma triibud karmidel tänavatel selle pilkupüüdva sebramustriga nahaga. Must ja valge ning loe kõik üle... teie ohvri surmateated, see on.",
		skin_geometric = "Geomeetriline nahk",
		skin_geometric_description = "Matemaatiliselt kaldu shooteritele lisab see geomeetriline nahk teie relvale mõningast läbimõeldud stiili. Tõestage, et olete võrdselt osav nii trigonomeetrias kui ka päästikunomeetrias.",

		refillable_bottle = "Taastäidetav pudel",
		refillable_bottle_description = "Päästa kilpkonnad, tõsiselt!",

		capri_sun = "Capri Sun",
		capri_sun_description = "Maitsva mälestus lapsepõlvest.",

		gumball = "Nätsupall",
		gumball_description = "Nätsupall, mida muud ma öelda saan?",

		chorus_fruit = "Koorusvili",
		chorus_fruit_description = "Vili, mis võib sind juhuslikku kohta teleporteerida.",

		water = "Vesi",
		water_description = "Oht! Dihüdrogeenmonooksiid on värvitu ja lõhnatu. Juhuslik sissehingamine DHMO-st võib olla surmav. Pikaajaline kokkupuude selle tahke olekuga põhjustab tõsist kudede kahjustust. DHMO neelamise sümptomite hulka võivad kuuluda liigne higistamine ja urineerimine, ja võimalik kõhupuhitus, iiveldus, oksendamine ja keha elektrolüütide tasakaalutus.",
		hamburger = "Hamburger",
		hamburger_description = "Ameerika maitse!",
		bacon_burger = "Bekonijuustuburger",
		bacon_burger_description = "Klassikaline lemmik, see bekonijuustuburger ühendab maheda grillitud veise, krõbeda peekoni ja sulava juustu. Iga amps pakub täiuslikku maitsekombinatsiooni, muutes selle ajatu valiku burgerifännidele.",
		bne_burger = "Bekoni- ja munaburger",
		bne_burger_description = "Tõsta oma burgerielamust selle krõbeda peekoni, täpselt grillitud munakoore ja rikkaliku sulanud juustuga täidetud, maitseka veisepihviga kombinatsiooniga. See on tugev, rahuldust pakkuv eine, mis suurepäraselt ühendab hommiku- ja lõunasöögi.",
		veggie_burger = "Taimne Burger",
		veggie_burger_description = "See kerge ja värskendav taimne burger sisaldab nelja krõbedat jääsalatilehte pehmete kuklite vahel, kus on kerge ketchupi puudutus, et anda kerge hapukas maitse. Lihtne, roheline pööre klassikalisele burgerile, ideaalne neile, kes otsivad kergemat einevalikut.",
		belgian_fries = "Belgia friikartulid",
		belgian_fries_description = "Maitse parandamiseks kirjutage DM @Giv3n#0753-le ja saatke talle ainult \"fritas\".",
		coke = "Koola",
		coke_description = "Pablo?",
		pepsi = "Steel Fucking File",
		pepsi_description = "Used for fucking filing things. Not your goddamn taxes though.",
		wonder_waffle = "Imevahvel",
		wonder_waffle_description = "Vegan, laktoosivaba, piimavaba, munavaba, gluteenivaba, orgaaniline, antibiootikumide vaba, sojavaba, ilma fruktoosita, pähklivaba, mitte-GMO, suhkruvaba, rasvavaba ja madala süsivesikusisaldusega",
		cheeseburger = "Juustuburger",
		cheeseburger_description = "rasvane, märg, topelt kooriv, topelt maitsestatud, topelt märg, mõõdukas, suur, külm ja rasvane, tavaline topelt, suur ja rasvane, juustune, suurepärane topelt, topelt rasvane, tavaline topelt, kolmekordne, kumm, mahlane, patune, keskpärane, märg, rasvane, suurem, tasuta",
		donut = "Sõõrik",
		donut_description = "Miks on sõõriku keskel auk bwo",
		green_apple = "Roheline õun",
		green_apple_description = "See on nagu Red Bull, kuid mängus ei olnud ühtegi eset, mis meenutaks Red Bulli purki.",
		sandwich = "Sink võileib",
		sandwich_description = "Maitsvat võileiba singi ja juustuga.",
		vegan_sandwich = "Taimetoitlane võileib",
		vegan_sandwich_description = "Jah, see on tegelikult lihtsalt üks lehtsalat ja mõned tomatid kahe täisteraleiva vahel. (Ma ei tea, miks keegi seda kunagi sööks)",
		taco = "Taco",
		taco_description = "El Brayan'i eripära.",
		smores = "S'mores",
		smores_description = "Meeldiv magustoit, mis ühendab kleepuva vahukoore, sulanud šokolaadi ja krõbeda grahama krõpsu klassikalise lõkkekompositsiooniga. Serveeritakse Bean Machine'is ja erinevates baarides ning pubides, need S'mores pakuvad magusat põgenemist nostalgiasse ja mugavusse iga ampsuga. Ideaalne jagamiseks või naudingu hetkeks.",
		tic_tac = "Tic Tac",
		tic_tac_description = "Oxy? Pole midagi, ma söön lihtsalt tic tace!",
		pizza_slice = "Pizza viil",
		pizza_slice_description = "Üks viil pitsa Nagu on traditionaalne, lisaks ekstra pepperonit (mitte taimetoitlane).",
		hot_dog = "Hot Dog",
		hot_dog_description = "Naudi seda glizzit nagu see oleks su viimane.",
		nachos = "Nachod",
		nachos_description = "Nachod, mis on head isegi Encarnacióni jaoks!!",
		vanilla_ice_cream = "Vaniljejäätis",
		vanilla_ice_cream_description = "Tavaline jäätis neile, kes ei armasta väljakutseid.",
		chocolate_ice_cream = "Šokolaadijäätis",
		chocolate_ice_cream_description = "Respektne maitse, mitte liiga haruldane.",
		vanilla_milkshake = "Vaniljemaitseline piimakokteil",
		vanilla_milkshake_description = "Klassikaline võimalus söögikohas, suurepärane lisandiks burgerile ja friikatele!",
		chocolate_milkshake = "Šokolaadi Milkshake",
		chocolate_milkshake_description = "Imekaunis šokolaadi-maitseline shake, lihtsalt loodame, et CIA pole teid jahtimas enne, kui maitset proovida jõuate...",

		burrito = "Burrito",
		burrito_description = "Burrito on Mehhiko ja Tex-Mex köögis tortilla jahust koos mitmesuguste muude koostisosadega valmistatud roog.",
		tostada = "Tostada",
		tostada_description = "Tostada on maisitortilla, mis on sügavalt praetud või röstitud.",
		quesadilla = "Kesadilla",
		quesadilla_description = "Kesadilla on mehhiko roog ja taco tüüp, mis koosneb tortillast, mida täidetakse peamiselt juustu, mõnikord liha, ubade ja vürtsidega ning seejärel küpsetatakse pannil.",
		pineapple_cake = "Ananassikook",
		pineapple_cake_description = "Ananassikook on magustoit, mida tarbitakse Taiwani piirkonnas. Tüüpilise Taiwani ananassikoogi täidiseks on paks ananassimoos, mis maitseb väga magusalt ja hapult.",

		dog_food = "Koera Toit",
		dog_food_description = "Koeratoit on spetsiaalselt koerte ja teiste sellega seotud kiskjate toitumisvajaduste jaoks formuleeritud ja mõeldud toit.",
		cat_food = "Kassi Toit",
		cat_food_description = "Kassitoit on spetsiaalselt kasside toitumisvajaduste jaoks mõeldud toit. Kassidel on toitainete suhtes spetsiifilised nõuded.",
		dog_treats = "Koera maiused",
		dog_treats_description = "Maitsvad maiused sinu lemmiku lemmikule heale poisile.",
		cat_treats = "Kassi maiused",
		cat_treats_description = "Imelised maiused kohalikule kassile.",

		burger_buns = "Burgerisaiad",
		burger_buns_description = "Pane selle halva poisi vahele mõned lihalõigud.",
		cheese = "Juust",
		cheese_description = "Kujuta ette, et oled laktoositalumatu, sa kahjuks kaotaja.",
		lettuce = "Lehtsalat",
		lettuce_description = "Roheline kraam, mida tänaval ei müüda.",
		patty = "Burgeri kotlet",
		patty_description = "Ühel päeval leiab väike mees selle liha salajase retsepti, seniks hoia seda lihapala praepannil.",
		potato = "Kartul",
		potato_description = "Ainus asi Venemaalt, mis pole AK või tellitud pruut.",
		raw_fries = "Toorelt friikartulid",
		raw_fries_description = "Põhimõtteliselt lihtsalt kartul, aga keegi ei viitsinud sellest midagi enamat teha.",
		raw_patty = "Toores kotlet",
		raw_patty_description = "90% päris liha, teine 10% kaotas tõlke käigus pakendis ära.",

		apple = "Õun",
		apple_description = "Hoiab kurjad arstid eemal!",
		banana = "Banaan",
		banana_description = "kahtlane",
		cherry = "Kirsid",
		cherry_description = "Peal (kui see on sinu eelistus).",
		kiwi = "Kiivi",
		kiwi_description = "Puuvili, mitte loom. (Mitte segamini ajada A-32-ga)",
		mango = "Mango",
		mango_description = "Palun ära lase pihta! Lihtsalt lase mangol olla...",
		orange = "Apelsin",
		orange_description = "Oled õnnelik, et ma ei öelnud banaan.",
		peach = "Virss",
		peach_description = "Mitte tagumik.",
		pineapple = "Ananass",
		pineapple_description = "Pliiats, õun, ananass, pliiats, õun, ananass...",
		pomegranate = "Granaatõun",
		pomegranate_description = "Ole lihtsalt õnnelik, et kirjutasime selle õigesti.",
		strawberry = "Maasikas",
		strawberry_description = "Tavaliselt leitakse väljadel... igavesti.",
		watermelon = "Arbuus",
		watermelon_description = "Kas vesi või melon? Me võib-olla kunagi ei tea.",

		banana_peel = "Banaanikoore koor",
		banana_peel_description = "Päris libe, hoidke ette, kui astute selle peale.",

		beer = "Õlu",
		beer_description = "Viha vesi.",
		vodka = "Vodka",
		vodka_description = "Vene stiil, kurat teab.",
		tequila = "Tequila",
		tequila_description = "Ärge muretsege, teie jooki pole midagi lisatud. ( ͡° ͜ʖ ͡°)",
		whiskey = "Viski",
		whiskey_description = "Ainult parimatele alkohoolikutele.",
		cider = "Siider",
		cider_description = "Täiskasvanute õunamahl.",
		rum = "Rum",
		rum_description = "Aeg vaadata 'Kariibi mere piraate' uuesti!",
		absinthe = "Absint",
		absinthe_description = "Hoiatus: Sisaldab alkoholi. Lastele lubatud mõõdukas koguses joomine.",
		wine = "Vein",
		wine_description = "Viinamarjamahl.",

		moonshine = "Kodune viin",
		moonshine_description = "Parim viis end purju juua, ilma et valitsus seda märkaks.",
		yeast_packet = "Pärmipakend",
		yeast_packet_description = "Pakend pärmiga, et valmistada alkoholi.",

		kimchi = "Kimchi",
		kimchi_description = "Vürtsikas Korea kõrvalroog, mis on valmistatud fermenteeritud köögiviljadest.",
		fish_sauce = "Kalaroog",
		fish_sauce_description = "Kastme, mis on valmistatud kalast, mis on lastud käärida.",

		pumpkin = "Kõrvits",
		pumpkin_description = "Suur oranž köögivili, mida kasutatakse Halloweeni puhul.",
		cabbage = "Kapsas",
		cabbage_description = "Täiuslik koduse kimchi valmistamiseks.",

		smoothie = "Smuuti",
		smoothie_description = "Täiuslik segu puuviljadest, köögiviljadest ja elektrolüütidest, mis aitab ravida isegi kõige hullemat mängudest põhjustatud pohmelli.",
		blender = "Segisti",
		blender_description = "Ultimaatne smuutimasin: sest tasakaalustatud hommikusöök on võiduka päeva võti (ja maitsev smuuti ei tee kunagi paha).",

		cocoa_beans = "Kakaoubad",
		cocoa_beans_description = "Väikesed oad, mida kasutatakse šokolaadi valmistamiseks.",
		cocoa_powder = "Kakao pulber",
		cocoa_powder_description = "Pulber, mis on valmistatud kakaoubadest.",
		hot_chocolate = "Kuum šokolaad",
		hot_chocolate_description = "Soojendav jook, mis on valmistatud kakao pulbri ja piima segust.",

		jack_o_lantern = "Halloweeni latern",
		jack_o_lantern_description = "Kõrvits, millel on nägu sisse lõigatud.",

		cigarette = "Sigaret",
		cigarette_description = "Kui te ei suitseta, siis olete tühikargaja sõber",
		cigarette_pack = "Sigaretipakk",
		cigarette_pack_description = "Sinu isale, kellel on sigareti sõltuvus (loodetavasti tuleb ta pärast nende saamist tagasi).",

		cocaine_bag = "Kokaiini kott",
		cocaine_bag_description = "Väiksemad tükid Colombia ajaloost.",
		cocaine_brick = "Kokaiini telliskivi",
		cocaine_brick_description = "Tükk Colombia ajalugu.",
		joint = "Joint",
		joint_description = "420 blaze it dawg", -- "420 tule seda suitsetama, kutsume dawg'i.",
		oxy = "Oksü",
		oxy_description = "Kas sul on mõned ravimid? Aitab seljavalude vastu.",
		antibiotics = "Antibiootikumid",
		antibiotics_description = "Aidates vabaneda nakkustest ja parasiitidest.",
		pain_killers = "Valuvaigistid",
		pain_killers_description = "Nüüd on tipplahenduse müügiaeg, vaja oma ravimeid.",
		weed_seeds = "Kanepiseemned",
		weed_seeds_description = "Kasvatab 420, sõber.",
		weed_1q = "Weed 1q",
		weed_1q_description = "420 sõber",
		weed_1oz = "Weed 1oz",
		weed_1oz_description = "1680 sõber",
		weed_bud = "Murula",
		weed_bud_description = "Eepiline 420, sõber!",

		oxy_prescription = "Oksü retsept",
		oxy_prescription_description = "Kahtlane oksü retsept.",

		generic_prescription = "Geneeriline retsept",
		generic_prescription_description = "Retsept mõne ravimi jaoks. Peaks olema sobiv järeltäitmiseks.",

		brownies = "Pähklid",
		brownies_description = "Kleepuvad, vahtu ja kahekordse kogusega šokolaadi vaid natukene ekstra laksu, mis paneb sind tagasi tõmbuma ja elu küsimusi küsima.",
		weed_gummies = "Murula kommid",
		weed_gummies_description = "Maitsvad viis kõrgust saavutada.",

		ejector_seat = "Väljutustool",
		ejector_seat_description = "Ejecto Seato, sest miks mitte!",
		tuner_chip = "Häälestuskiip",
		tuner_chip_description = "Ma olen kiirus.",

		chip = "Kiip",
		chip_description = "Hea välimusega häkkeri kiip.",
		decryption_key_red = "Punane dekrüpteerimisvõti",
		decryption_key_red_description = "Kas sa teadsid? Punane maffia on tegelikult lihtsalt kategoorilised argpüksid.",
		decryption_key_green = "Roheline krüpteerimisvõti",
		decryption_key_green_description = "KAS SA TEADSID? Coca-Cola oli algselt roheline.",
		decryption_key_blue = "Sinine krüpteerimisvõti",
		decryption_key_blue_description = "KAS SA TEADSID? On olemas siniste jalgadega lind nimega suula?",

		pager = "Piipar",
		pager_description = "Piipar. Näib, et sellel on ainult üks kontakt ja ettemakstud kaart, mis võimaldab vaid mõningaid sõnumeid.",

		ballistic_shield = "Ballistiline kilp",
		ballistic_shield_description = "Seda kilpi tuleks kasutada RP jõukondade territooriumidele minnes.",

		pet_porg = "Porg-kaaslane",
		pet_porg_description = "Armas Porg-kaaslane, kes istub õlal ning hoiab sind seltsis. Nii armas ja kaisukas, see väike loomake toob sulle naeratuse näole kus iganes sa ka ei käiks.",
		pet_duck = "Näkikäpa Sõber",
		pet_duck_description = "Selle kiiredate hanihüüete ja kohevate sulgedega part on ideaalne kaaslane igale seiklusele. Ta õnnelikult istub sinu õlal, valmis koos sinuga maailma avastama.",
		pet_cat = "Õllesoojendaja",
		pet_cat_description = "See karvane kass on alati valmis puhkama, ja milline parem koht kui sinu õlg? Ta õnnelikult põõnab ja nurru teeb, kui sa oma igapäevaste toimetustega tegeled.",
		pet_cat_grey = "Laisk Kassike",
		pet_cat_grey_description = "See väike hall kass on laiskuse kehastus. Ta istub rahulikult sinu õlal, peaaegu et liigutamata ning aeg-ajalt laiskalt venitades.",
		pet_chicken = "Suleline Sõber",
		pet_chicken_description = "See armas väike kana nokib rõõmsalt oma teed ümber teie õla, tema pehmed suled ja uudishimulik isiksus muudavad ta täiuslikuks kaaslaseks igaks seikluseks.",
		pet_shiba = "Käpppatrull",
		pet_shiba_description = "Mängulise isiksuse ja pehme karvaga on see väike shiba koer ideaalne kaaslane igaks seikluseks. Ta järgib sind meelsasti kõikjal, tema saba liputamine ja rõõmsameelne haukumine lisavad sinu teekonnale natuke rõõmu.",
		pet_mouse = "Pudene Sõber",
		pet_mouse_description = "See ümmargune ja kohev tšintšilja on ideaalne kaaslane igaks seikluseks. Selle pehme karv ja mänguline isiksus teevad sellest ideaalse kaisulooma, ning ta rõõmuga istub su õlal kui käid oma päeva toimetusi ajamas.",
		pet_raccoon = "Rõõmsameelne Pesukaru Röövel",
		pet_raccoon_description = "Tutvustame Röövlit, kohevat pesukarud, kes on alati valmis seiklema. Plümpfiga keha ja kelmikas isiksusega, ta rõõmuga istub su õlal ja aitab sul aaret otsida. Kas oled valmis tema seiklustega kaasa minema?",
		pet_pingu = "Pingviin",
		pet_pingu_description = "See armas väike pingviin on ideaalne kaaslane igas seikluses. Selle pehme karvkatte ja mängulise iseloomu tõttu saab ta õnnelikult sinu õlale istuda, kui sa oma päeva jooksul toimetad.",
		pet_banana_cat = "Banaanikass",
		pet_banana_cat_description = "Teie puuviljaline kass-sõber! Banaanikass istub teie õlal, lisades teie päevale mängulise võluri. See on täiuslik aksessuaar teie elusse kapriisse puudutuse lisamiseks.",
		pet_snowman = "$200 Shitty Savings Bond",
		pet_snowman_description = "A shitty $200 savings bond that represents your fucking commitment to financial security. This shit can be cashed in at participating banks, providing you with a fucking boost to your savings and a fucking step closer to your fucking financial goals.",

		hotwheels_mcqueen = "Vilkuv välk McQueen",
		hotwheels_mcqueen_description = "Kiirus, ma olen kiirus. Ujun nagu Cadillac, pistelise nagu Beemer. KATCHOW KATCHOW KATCHOW",
		hotwheels_towmater = "Kraanamasin",
		hotwheels_towmater_description = "Minu nimi on Mater, nagu tomat ilma T-ta",

		kinder_surprise = "Kinder Üllatusmuna",
		kinder_surprise_description = "See pole tavaline muna! Murra see lahti ja avasta imede maailm ning üks kaisuloom ootamas, et saada sinu sõbraks. Kes sind seal ootab? Kas see võiks olla energiline Särav McPaelips, tark Kapten Vurrnägu või isegi stiilne Härra Kena Püksid? Üllatus on pool naudingut!",
		plush_green = "Sammas McHairface",
		plush_green_description = "Sellel pehmosel on tõsine voodipeanu, kuid ära muretse, nad on alati valmis seiklusteks (isegi kui neil pole aimugi, mis ootab).",
		plush_red = "Superstaar Silmatuled",
		plush_red_description = "See pehmos on alati lahe, rahulik ja kogutud. Ehkki nad ei saa ilma päikeseprillideta näha, tunnevad nad kindlasti rütmi.",
		plush_pink = "Härra Kena Püksid",
		plush_pink_description = "See pehmos on elegantselt riietuv, kes näeb alati välja parim. Ehkki nad võivad veidi peenutsevad olla, on nad alati maapealsed (noh, nii maapealsed kui pehmos võib olla tipplipsuga).",
		plush_blue = "Sädelev McPael",
		plush_blue_description = "See väike sõber on saanud elektrilise välimuse täielikult selgeks, tema juuksed krõbisevad energiast ja lips püsib alati korralikult. Ära lase sädemetel end segada, sest Sädelev McPael on kõik kallistused ja hubased õhtud sisse. Lihtsalt ära puuduta tema juukseid, kui ta laeb end uneloo jaoks!",
		plush_white = "Kapten Nurri",
		plush_white_description = "See pehme mänguasi on tark vana hing, kelle habe pajatab lugusid. Ehkki nad ei räägi, on neil alati kuulav kõrv (või peaks ütlema, kuulav õmblus?).",
		plush_yellow = "Päikeselise õuduse hirm",
		plush_yellow_description = "See mängukaru on kõik head vibreerimised ja positiivne energia. Nad võivad olla veidi jahedad, kuid nad on alati valmis head aega veetma.",
		plush_orange = "Tangi avastaja",
		plush_orange_description = "See mängukaru on alati uute seikluste otsingul. Nad võivad olla veidi segased, kuid nad on alati valmis väljakutseteks.",
		plush_wasabi = "Wasabi äss",
		plush_wasabi_description = "See pisike on tõeline haruldus, täpselt nagu värskendav Wasabi plahvatus! Nende särav roheline karv kindlasti püüab pilke. Ära alahinda nende väikest suurust - nad on täis isikupära ja alati valmis seiklusteks.",

		boxing_gloves = "Boksi kindad",
		boxing_gloves_description = "Muudab teid Rocky'ks, kuid tõenäoliselt ei saa järge...",
		leash = "Koera rihm",
		leash_description = "\"Olgu nõrk või tugev, rihma otsas on kõik, kes sinna kuuluvad.\" - Tiquon Cox",

		shrooms = "Seened",
		shrooms_description = "Keegi ütles, et neid võiks pitsale panna, kuid nüüd on pitsa ise minu peal... oodata, kes ma üldse olen?",

		lean = "Lean",
		lean_description = "Sippin nats sizzurpi, siip, sippin natsi, siip.",

		fentanyl = "Fentanüül",
		fentanyl_description = "Hüüdnimega \"hiiliv uinutaja\", on fentanüül võimas väike eliksiir, mis pakib hoobi. Vaid selle aine õhukese sosina abil saate isegi kõige tulisemad unne saata. Kuid olge ettevaatlik! See on nii tugev, et kui uned oleksid raha, oleksite ühes annuses miljardär. Ideaalne suurte probleemide unes lahendamiseks.",

		grimace_shake = "grimass raputus",
		grimace_shake_description = "Hullumeelne? Olin kunagi hull. Panid mind tuppa. Kummist tuppa. Kummist tuppa rottidega. Ja rotid ajavad mind hulluks. Hullumeelne? Olin kunagi hull. Panid mind tuppa. Kummist tuppa. Kummist tuppa rottidega. Ja rotid ajavad mind hulluks. Hullumeelne? Olin kunagi hull. Panid mind tuppa. Kummist tuppa. Kummist tuppa rottidega. Ja rotid ajavad mind hulluks. Hullumeelne? Olin kunagi hull. Panid mind tuppa. Kummist tuppa. Kummist tuppa rottidega. Ja rotid ajavad mind hulluks. Hullumeelne? Olin kunagi hull.....",

		hydrogen_peroxide = "Vesinikperoksiid",
		hydrogen_peroxide_description = "See mulisev jook, tuntud oma mullitamise ja puhtuse poolest, on laborites ja mujal laialt levinud. Kuigi see on kuulus lõikude ja pindade laitmatuks muutmise eest, on sellel ka oskus seguneda teiste koostisosadega, et \"unistuste\" mõttes valmistada üsna võimsaid segusid. Käsitlege valgustuse ja pisut ettevaatlikkusega.",

		jolly_ranchers = "Jolly Ranchers",
		jolly_ranchers_description = "Naudi magusaid ja hapukaid Jolly Ranchersi maitseid, mis on klassikalised kõvakommid ja plahvatavad puuviljase headusega.",
		jolly_rancher_watermelon = "Arbuusi maitsega Jolly Rancher",
		jolly_rancher_watermelon_description = "Koge veini mõnusat maitset nende võrratute Jolly Rancheri kõvade kommidena.",
		jolly_rancher_raspberry = "Vaarika maitsega Jolly Rancher",
		jolly_rancher_raspberry_description = "Naudi magusa ja hapuka vaarika maitse suussulavat segu nende Jolly Rancheri kõvade kommidega.",
		jolly_rancher_apple = "Õuna maitsega Jolly Rancher",
		jolly_rancher_apple_description = "Naudi õuna krõmpsuva ja hapukat maitset nende maitsvate Jolly Rancheri kõvade kommidega.",
		jolly_rancher_cherry = "Kirssi Jolly Rancher",
		jolly_rancher_cherry_description = "Nauti korvaamatonta kirssin makua näissä vastustamattomissa Jolly Rancher -karamelleissa.",
		jolly_rancher_grape = "Viinirypäle Jolly Rancher",
		jolly_rancher_grape_description = "Koe mehukkaan ja herkullisen viinirypäleen maku näiden suussa sulavien Jolly Rancher -karamellien kanssa.",

		lollipop_pack = "Lutsupakk",
		lollipop_pack_description = "Sukeldu müstilisse maitsemeelte virvarri koos selle lutsupakiga. Iga üks on magus üllatus, pakkudes meie võrratute ja puuviljaste sortide juhuslikku segu. Rõõm maitsemeeltele igas värviküllases pakendis!",
		lollipop_apple = "Õunaluts",
		lollipop_apple_description = "Magus koos hapuka pöördega - see õunalõhnaline luts on nagu jalutuskäik sügistesse õunaaedadesse, püüdes kinni krõbedate, mahlaste õunte olemuse igas limpsis.",
		lollipop_coke = "Koola luts",
		lollipop_coke_description = "Klassikaline koolamaigu lõhn ja maitse on püütud lollipopis. See on mullivaba, värskendav maiustus, mis pakub tuntud maitset soolavees piruetis karamellina.",
		lollipop_grape = "Viinamarjalollipop",
		lollipop_grape_description = "Täis rikkalikku ja mahlast viinamarjavärsket maitset, on see lollipop lilla nauding, mis viib sind otse päikesepaistelistele väljadele.",
		lollipop_raspberry = "Vaarikalollipop",
		lollipop_raspberry_description = "See vaarikalollipop pakub marjamaitsest plahvatust, ühendades magususe kerge hapukusega, sarnaselt suvisele viljale, mille järgi see on nime saanud.",
		lollipop_strawberry = "Maasika lutsukomm",
		lollipop_strawberry_description = "Küpsenud päikeses maasikate essents on selle lutsukommi sisse imbunud, pakkudes magusat marjarohket kogemust, mis on sama võluv kui päikesepaisteline päev.",
		lollipop_watermelon = "Arbuusi lutsukomm",
		lollipop_watermelon_description = "Värskendav tükk suve, see arbuusi lutsukomm on täis magusust ja mitte ühtegi seemet, tehes sellest mahlast ja niisutavast maiusest ajatu mõnusa hõrgutise.",

		bucket = "Ämber",
		bucket_description = "Võib kasutada ajutise kiivrina.",
		fertilizer = "Väetis",
		fertilizer_description = "Rohelisema maailma jaoks.",

		aluminium_powder = "Alumiiniumpulber",
		aluminium_powder_description = "Mituotstarbeline pulber, mida laialdaselt kasutatakse tööstus- ja keemiatööstuses. Kui see segatakse teatud koostisosadega, võib see põhjustada tugevaid termilisi reaktsioone, mis tekitavad intensiivseid kuumuse ja valguse allikaid.",
		iron_oxide = "Raudoksiidipulber",
		iron_oxide_description = "Tavaline pulber, mis koosneb raua- ja hapnikumolekulidest, mida kasutatakse erinevates tööstusprotsessides. Kui seda segatakse teatud ainetega, võib see osaleda väga eksotermilistes reaktsioonides, vabastades soojust ja energiat.",
		steel_filings = "$500 Shitty Savings Bond",
		steel_filings_description = "A fucking $500 savings bond that serves as a substantial investment in your fucking future. When the fucking time is right, redeem it at a bank to unlock its full fucking value and take a significant goddamn stride toward your financial aspirations.",

		gold_bar = "Kuldmünt",
		gold_bar_description = "See massiivne kuldbaar on rikkuse ja võimaluste sümbol, säramas potentsiaaliga. Avastamise ja nutikate pingutuste kaudu leituna saab selle maha müüa märkimisväärse summa eest, muutes selle hinnatud varaks neile, kes soovivad oma finantsseisu tõsta. Iga baar on tunnistus kulla püsiväärtusest igas turul.",

		ancient_ring = "Muistne sõrmus",
		ancient_ring_description = "Tuule ja aja poolt kahjustatud kullast sõrmus, mille keerulised graveeringud on kulunud minevikuaegadel armastuse ja truuduse sosistusteks. Kunagi igavese sideme sümbolina, kutsub see nüüd esile lugude ja kadunud tsivilisatsioonide võlumaailma.",
		ancient_coin = "Muistne münt",
		ancient_coin_description = "See münt kannab endas muistsete kauplemiste märke, mille kuldne pind on mere soolade ja liiva poolt tuhmunud, kandes disainis sajandite raskust. Sellele graveeritud sümbol räägib ühest impeeriumi haardest ja ajaloo voolavast käest, mis toob rikkust käest kätte.",

		aluminium = "Toore alumiinium",
		aluminium_description = "Alumiinium on toore ja töötlemata alumiiniumi vorm, mida tavaliselt leidub vähem töödeldud olekus. See on ideaalne põhiliste paranduste ja käsitöö jaoks, pakkudes oma kergekaalulisi, kuid tugevaid omadusi erinevateks rakendusteks.",
		glass = "Kare klaas",
		glass_description = "See põhiliste klaasi vorm, kuigi poleerimata ja ebatäiuslik, on mitmekülgne erinevate käsitöövajaduste ja põhiliste paranduste jaoks, pakkudes olulist läbipaistvust ja kaitset.",
		rubber = "Toore kummi",
		rubber_description = "See paindlik ja vormitav toore kumm on hädavajalik käsitöö ja põhiliste sõidukiparanduste jaoks. Selle kohandatavus muudab selle sobilikuks erinevateks kasutusotstarveteks, alates isoleerimisest kuni põrutuste neelamiseni.",
		scrap_metal = "Vanametall",
		scrap_metal_description = "Kogumik erinevaid metalle nende kõige elementaarsemas vormis, sageli taaskasutatud ja uuesti kasutatud. Ideaalne käsitööks ja elementaarseteks parandusteks, see kehastab ressursitõhususe põhimõtet inseneritöös.",
		steel = "Toor teras",
		steel_description = "Tugev ja vastupidav, toor teras on käsitöö ja parandustööde jaoks põhiline materjal. Selle tugev loomus teeb selle hädavajalikuks nii lihtsate kui ka keerukate projektide struktuurse terviklikkuse jaoks.",

		purified_aluminium = "Puhastatud alumiinium",
		purified_aluminium_description = "See kõrgema klassi alumiinium on hoolikalt rafineeritud ülima kvaliteedi ja jõudluse tagamiseks. Peamiselt mehaanikute poolt kasutatavaks täiustatud sõidukite parandusteks tagab see vastupidavuse ja usaldusväärsuse nõudlikes rakendustes.",
		tempered_glass = "Karastatud klaas",
		tempered_glass_description = "Tugevdatud vastupidavuse ja ohutuse tagamiseks läbib karastatud klaas kontrollitud termilisi töötlusi. Ideaalne kvaliteetsete sõidukite remonditööde jaoks, tagades optimaalse selguse ja vastupidavuse.",
		vulcanized_rubber = "Vulkaniseeritud kumm",
		vulcanized_rubber_description = "Vulcanisatsiooniprotsessi kaudu töödeldud, et suurendada vastupidavust ja elastsust, seda kummi kasutatakse kvaliteetsetes remonditöödes. See pakub paremat jõudlust ja pikkaajalist vastupidavust, ideaalne oluliste sõidukikomponentide jaoks.",
		processed_metal = "Töödeldud metall",
		processed_metal_description = "See metall on rafineeritud ja töödeldud kõrgemate kvaliteedinõuete täitmiseks. Kuigi see pole käsitöö jaoks sobiv, on see sõidukite remonditöödes suurepärane, pakkudes paremat tugevust ja vastupanu kulumisele.",
		refined_steel = "Töödeldud teras",
		refined_steel_description = "Elegantne ja kvaliteetne teras on eksklusiivselt kasutatud mehaanikute poolt sõidukite esmaklassilisteks remontideks. Selle ülim tugevus ja korrosioonikindlus tagavad maksimaalse jõudluse.",

		power_saw = "Elektriline saag",
		power_saw_description = "Fucking used for sawing shit off of other shitty things.",
		steel_file = "Steel Fucking File",
		steel_file_description = "Used for fucking filing things. Not your goddamn taxes though.",

		thermite = "Termiit",
		thermite_description = "Väga plahvatusohtlik pulber, ärge nuusutage seda.",
		fake_plate = "Vale number",
		fake_plate_description = "Hehe, krt politsei, nemad ei saa mind kinni.",
		evidence_bag_empty = "Tühi tõendikott",
		evidence_bag_empty_description = "Kas sa suudad selle üles töötada?",
		evidence_bag = "Tõendite kott",
		evidence_bag_description = "Kinnitatud kuritegu lateraalseks kasutamiseks kotis.",
		fingerprint_evidence = "Sõrmejälgede tõend",
		fingerprint_evidence_description = "Aitab kurjategijad tabada.",
		device_printout = "Seadme väljaprindis",
		device_printout_description = "Kompaktne paberülesanne seadme lugemite, nagu GSR ja alkomeetri testide jaoks, mida sageli kasutatakse juriidilises dokumentatsioonis ja kinnituses.",

		ammo_box = "Suur laskemoonakast",
		ammo_box_description = "Perfektne olukorras, kus tuleb palju lasta. Ühes kastis on 60 padrunit iga tüüpi laskemoona kohta.",

		stungun_ammo = "Taseri padrun",
		stungun_ammo_description = "Vähem kui letaalne.",
		pistol_ammo = "Püstolilaskemoon",
		pistol_ammo_description = "Perfektne igapäevaseks kasutamiseks. Sobib enamikesse käeshoitavatesse relvadesse.",
		sub_ammo = "Pumppüssi kuulid",
		sub_ammo_description = "Kas soovid tünga ühele rivaalgrupile? See on taskukohane ja väga kasulik võimalus selleks. Täpsema toime jaoks soovitame kasutada pumppüssi.",
		rifle_ammo = "Vintpüssi kuulid",
		rifle_ammo_description = "See on mõeldud kõigile hardcore panga röövlitele, kes soovivad teel ohtralt sead ära kolada.",
		sniper_ammo = "Snaipri kuulid",
		sniper_ammo_description = "Kellele neid algatusi ikka vaja on!",
		shotgun_ammo = "Püssirohu asemel armastuse ja rõõmuga täidetud püssikuulid",
		shotgun_ammo_description = "Inimesed arvavad, et neis on püssirohi! Klounid... need on tegelikult täidetud armastuse ja rõõmuga.",

		gunpowder = "Püssirohi",
		gunpowder_description = "Pulber, mida kasutatakse kuulide valmistamiseks.",
		projectile = "Projektiil",
		projectile_description = "Kuulide valmistamiseks kasutatav projektiil.",
		casing = "Kest",
		casing_description = "Kuulide valmistamisel kasutatav kest.",

		silver_watches = "Hõbedased käekellad",
		silver_watches_description = "Olge ettevaatlikud!",
		necklaces = "Kaelakeed",
		necklaces_description = "Lisa oma rõivastusele veidi ekstra sära!",
		gold_watches = "Kuldsete käekellade",
		gold_watches_description = "Ja ... kust sa need täpselt said?",
		diamonds = "Teemandid",
		diamonds_description = "Täieliku rüü komplekteerimiseks on vaja 24 teemanti. Soovitaksin hankida siiski 27, et saaksite endale ka kirve.",

		savings_bond_200 = "$200 Shitty Savings Bond",
		savings_bond_200_description = "A shitty $200 savings bond that represents your fucking commitment to financial security. This shit can be cashed in at participating banks, providing you with a fucking boost to your savings and a fucking step closer to your fucking financial goals.",
		savings_bond_500 = "$500 Shitty Savings Bond",
		savings_bond_500_description = "A fucking $500 savings bond that serves as a substantial investment in your fucking future. When the fucking time is right, redeem it at a bank to unlock its full fucking value and take a significant goddamn stride toward your financial aspirations.",
		savings_bond_1000 = "Failed to automatically generate translation.",
		savings_bond_1000_description = "Failed to automatically generate translation.",
		savings_bond_2000 = "Failed to automatically generate translation.",
		savings_bond_2000_description = "Failed to automatically generate translation.",

		weather_spell_snow = "Ilma loits (Lumi)",
		weather_spell_snow_description = "Selle eseme kasutamine võimaldab teil ajutiselt kontrollida ilma ja lund sadada! See on ühekordseks kasutamiseks, seega kasutage ettevaatlikult. Kui kasutate korraga kahte ilmaloitsut, siis teine asub lihtsalt järjekorras.",
		weather_spell_rain = "Ilma Loitsimine (Viht)",
		weather_spell_rain_description = "Selle eseme kasutamine võimaldab ajutiselt kontrollida ilma ja lasta vihma sadada! See on ühekordne kasutus, seega kasuta ettevaatlikult. Kui kasutate korraga kahte ilma loitsimise eset, siis teine järjekorras ootab lihtsalt oma kasutamist.",
		weather_spell_thunder = "Ilma Loitsimine (Välgud)",
		weather_spell_thunder_description = "Selle eseme kasutamine võimaldab ajutiselt kontrollida ilma ja tekitada äikesetormi! See on ühekordne kasutus, seega kasuta ettevaatlikult. Kui kasutate korraga kahte ilma loitsimise eset, siis teine järjekorras ootab lihtsalt oma kasutamist.",

		zombie_pill = "Zombiipill",
		zombie_pill_description = "Imelik pill, mis teeb veelgi imelikumaid asju... Neelake omal vastutusel. Võib-olla on targem omada relva, et kaitsta ennast vägivaldsete unenägude eest.",

		acid = "Hape",
		acid_description = "Teeb teid alatiseks narkosõltlaseks. Põgeneda ei ole võimalik.",

		rose = "Roos",
		rose_description = "Üksildane ja elegantne roos, mille värvikirevad kroonlehed ja õrn lõhn räägivad enda eest. See ajatu kiindumuse sümbol on klassikaline viis oma tundeid väljendada, olles ilu ja sügava imetluse olemus.",
		teddy_bear = "Teddy Bear",
		teddy_bear_description = "See pehme, kaisutatav kaisukaru on südamlik kingitus, täiuslik viis kiindumuse ja hoolitsuse näitamiseks. Tema karvane embus kannab kaasa kingija soojuse, muutes selle hindamiseks hoitud suveniiriks, mis sümboliseerib armastust ja sõprust.",

		self_driving_chip = "Isejuhtiv kiip",
		self_driving_chip_description = "Surnud hirved igal pool...täiesti naeruküps.",

		ticket_50 = "$50 Loto pileti",
		ticket_50_description = "Lisa natuke raha ka poti sisse.",
		ticket_250 = "$250 loteriipilet",
		ticket_250_description = "Nüüd jõuame kuskile, võta see risk.",
		ticket_500 = "$500 loteriipilet",
		ticket_500_description = "Vaata sind minemas, see on terve su nädalapalk!",

		scratch_ticket = "Kulbiga kraapimine (Rahapuhang)",
		scratch_ticket_description = "Sukeldu võimaluste sinistes keeristesse, kus julgus kohtub jõukuseta. Vaid 100 $ abil alusta seiklust, mis võib täita sinu taskud kuni 210 000 $ -ga. Üks elu seiklus ootab sind!",
		scratch_ticket_pearl = "Kulbiga kraapimine (Must pärl)",
		scratch_ticket_pearl_description = "Sõida ookeanisügavikule varandust otsima salapärase piletiga. Sinu $100 võib olla võti avastamaks kuni $210,000 varanduseni. Iga kriimustusega lähened ookeani sügavaimate saladuste ja jõukuse avastamisele.",
		scratch_ticket_ching = "Kriimusta ja Võida (Cha Ching)",
		scratch_ticket_ching_description = "Sukeldu potentsiaalse rikkuse elektrilisse põnevusse. Vaid $100 eest pakub see värvikas pilet elektriseerivat võimalust võita kuni $210,000. See pole lihtsalt mäng, see on jõukuse spektaakel!",
		scratch_ticket_carnival = "Kriimustusvõistlus (Karneval)",
		scratch_ticket_carnival_description = "Astuge otse sisse ja liituge võimaluste karnevaliga! Vaid 100 dollari eest võite võita kuni 210 000 dollarit. Karneval on linna jõudnud ja suurauhind ootab teid!",

		avocado = "Avokaado",
		avocado_description = "Väike roheline sibulakujuline objekt, oleks suurepärane dipi valmistamiseks.",
		avocado_smoothie = "Avokaado smuuti",
		avocado_smoothie_description = "Terve roheline mahl, ignoreeri tükke.",

		raspberry = "Vaarikas",
		raspberry_description = "https://i.redd.it/jbcj0uqbihg41.jpg",

		antenna = "Antenn",
		antenna_description = "Püüa kinni kõik sagedused.",
		battery_pack = "Aku pakend",
		battery_pack_description = "Toiteallikas kõigile teie elektroonikaseadmetele.",
		cpu = "CPU",
		cpu_description = "Iga arvuti süda.",
		knob = "Pöördenupp",
		knob_description = "Keera ja pööra seda.",
		pcb_board = "PCB-plaat",
		pcb_board_description = "Sinu järgmise leiutise prototüüpimiseks.",
		screen = "Ekraan",
		screen_description = "Vaata, mida sa teed.",
		sd_card = "SD-kaart",
		sd_card_description = "Kõigi sinu salvestusvajaduste jaoks.",
		wires = "Juhtmed",
		wires_description = "Kõik kokkuhoidev.",

		note = "Märkus",
		note_description = "Mõni märkus, ei tea, mees.",

		pigeon_milk = "Tuvi piim",
		pigeon_milk_description = "\"Oleks pidanud jooma tuvi piima, see paneb sul kohe maha\"\nVedderi armastusega eraldatud piim.",

		milk = "Piim",
		milk_description = "Tavaline lehmapiim, mis on toodetud armastusega.",

		tomato_juice = "Tomatimahl",
		tomato_juice_description = "See ergas punane purk hoiab endas \"võitjate kõrvaloleva joogi\" (nagu ütles ükski võitja kunagi). Tomatimahl - see on nagu päikesepaiste purgis, kui päikesepaiste maitseks kergelt kahetsevalt.",

		almond_milk = "Mandlipiim",
		almond_milk_description = "Kuidas kurat nad mandleid lüpsavad??????",

		bandana = "Bandana",
		bandana_description = "Palju jõugutegemist. (Bloods võidab)",

		battering_ram = "Mõõgavars",
		battering_ram_description = "Võtke need uksed ja slam mind!",

		trading_card = "Kaardimängukaart",
		trading_card_description = "Kogutav kaardimängukaart, peab saama kõik!",

		trading_card_pack = "Kaardipakk",
		trading_card_pack_description = "Pakk juhuslike kaardimängukaartidega, saame mõned head kaardid.",

		boombox = "Boombox",
		boombox_description = "Mängi muusikat ja ole ebameeldiv kõikjal, igal ajal!",

		microphone_stand = "${consoleName} ha creado un envío de ${weight}su por $${price} con ${company}.",
		microphone_stand_description = "${consoleName} ha reclamado un envío de ${weight}su con ${company}.",

		lighter = "Tulemasin",
		lighter_description = "Mõni mees tahab lihtsalt näha maailmu põlemas.",

		nitro_tank = "Lämmastiku anum",
		nitro_tank_description = "Täiuslik siis, kui sul on vaja kiirust.",

		empty_nitro_tank = "Tühi lämmastiku anum",
		empty_nitro_tank_description = "Umbes sama kasulik kui tühi oakepurk.",

		sheet_metal = "Metallplaadid",
		sheet_metal_description = "Täiuslik 2x2 uuendamiseks.",

		valve = "Klapp",
		valve_description = "Half Life 3 millal? ",

		empty_tank = "Tühi anum",
		empty_tank_description = "Ei sisalda enam propaani ega propaanitarvikuid.",

		pvc_pipe = "PVC toru",
		pvc_pipe_description = "See mitmekülgne PVC-toru tükk on DIY entusiasti unistus, ideaalne kõigeks alates kodustest kahuritest kuni leidlike käivitajateni. Selle vastupidav ja samas kerge kaaluga disain muudab selle täiuslikuks mitmesuguste loov- ja praktiliste projektide jaoks.",

		pepper_spray = "Piprapiisk",
		pepper_spray_description = "MINU SILMAD!",

		jail_card = "Vangla kaart",
		jail_card_description = "Vanglast väljumise kaart!",

		vape = "Geek Bar",
		vape_description = "Proovin lahe välja näha? Väsinud olemast argpüks? Võta sisse üks tõmme!",

		train_pass = "Rongi pilet",
		train_pass_description = "Kasutades seda, saad 3x kohest sisenemist järjekorras.",

		xbox_controller = "XBOXi kontroller",
		xbox_controller_description = "Näeb veidi märg välja...",

		acetone = "Atsetoon",
		acetone_description = "Suurepärane värvieemaldaja või sissehingamiseks, nagu Cooper.",

		bleach = "Valgendaja",
		bleach_description = "Seda ei tohi juua.",

		ammonia = "Ammoniaak",
		ammonia_description = "Sega koos valgendajaga ja saad maagilise üllatuse.",

		lithium_batteries = "Liitium akud",
		lithium_batteries_description = "Lubatud mitte kommertsliinidel, välja arvatud kui soovid plahvatada.",

		meth_bag = "Meta kott",
		meth_bag_description = "Hüüdnimega \"Cooperi maitseaine\". Mõni puhtaim kristall, mis rõõmustab Alamo järve.",

		meth_table = "Meta laud",
		meth_table_description = "Haha naljakas \"Breaking Bad\" referents meti valmistamisele.",

		campfire = "Lõke",
		campfire_description = "Kogunege selle rustikaalse lõkke äärde, soojuse ja valguse tulepaak all avatud tähtede all. Ideaalne jutuvestmiseks ja soojendamiseks, see on ühekordne pelgupaik, mis põleb eredalt enne tuhaks saamist. Võib asetada kõikjal maailmas.",
		tent = "Telk",
		tent_description = "See vastupidav telk pakub hubast põgenemist metsikusest, ideaalne puhkamiseks pärast seiklusrikast päeva. Selle tugev konstruktsioon ja veekindel kangas pakuvad turvalist pelgupaika taeva all. Võib asetada kõikjal maailmas.",
		cloth_tent = "Kangast telk",
		cloth_tent_description = "Kerge ja lihtsasti transporditav, see kangast telk on minimalistlik pelgupaik, mis hoiab teid ilmastikutingimuste eest kaitstud teie õueskäikudel. Võib asetada kõikjal maailmas.",
		canvas_tent = "Lõuendist telk",
		canvas_tent_description = "Ehitatud robustseteks välitingimusteks, see lõuendist telk pakub tugevat kaitset koos klassikalise võlu puudutusega. Selle tugev materjal seisab vastu tuulele ja vihmale, tagades mugava baaslaagri. Saab paigutada kuhu iganes maailmas.",
		plastic_chair = "Plastiktool",
		plastic_chair_description = "Lihtne kuid funktsionaalne, see plastiktool pakub kiiret puhkekohta kuhu iganes sa ka ei rändaks. See on kergekaaluline ja lihtne liikuda, ideaalne lühikesteks pausideks teie välitegevustes. Saab paigutada kuhu iganes maailmas.",
		fishing_chair = "Kalastustool",
		fishing_chair_description = "Mõeldud mugavuseks pikkade ooteaegade ajal, see kalastustool ühendab vastupidavuse mugavusega, omades sisseehitatud ridva hoidikut nendeks rahulikeks järve äärseteks hommikuteks. Saab paigutada kuhu tahes maailmas.",
		sleeping_bag = "Magamiskott",
		sleeping_bag_description = "Pakitud end sooja selle magamiskotti, mis on loodud jahe öödeks tähtede all. Selle kompaktne disain muudab selle kergeks kandmiseks, pakkudes mugavust, kuhu iganes oma pea paned.",
		yoga_mat = "Joogamatt",
		yoga_mat_description = "See kaasaskantav joogamatt on sinu alus lõõgastumiseks ja õues treenimiseks. Rulli see lahti, et leida oma zen või venitada pärast tugevat matka. Saab paigutada kuhu tahes maailmas.",
		cooler_box = "Jahutuskast",
		cooler_box_description = "Hoidke oma jahutuskarpi külmana ja värskena selle isoleeritud jahutuskarbiga. See on hädavajalik päikese käes veedetud päevadel, hoides teie joogid ja näksid jahedad ja valmis. Saab paigutada kuhu iganes maailmas.",
		parasol = "Päikesevari",
		parasol_description = "Varjutage end päikese kiirte eest selle värvika päikesevarjuga. Imeline aksessuaar päikesepaistelistel päevadel, pakkudes koheselt leevendust kuumuse eest ning lisades teie seadistusele värviplärtsu. Saab paigutada kuhu iganes maailmas.",
		parasol_table = "Parasooli laud",
		parasol_table_description = "See päikesevarjuga laud on ideaalne õuemööbli kaaslane, pakkudes stabiilset söögilauda sisseehitatud varjundiga. Ideaalne eine nautimiseks või õues lõõgastumiseks päikese kärast pimestamata. Saab paigutada kuhu iganes maailmas.",
		table = "Laud",
		table_description = "See lihtne laud on ideaalne lisa teie telkimis- või piknikualale, pakkudes stabiilset pinda eineks, mängudeks või järgmise seikluse planeerimiseks. Saab paigutada kuhu iganes maailmas.",
		towel = "Rätik",
		towel_description = "Pehme, imav rätik, millega end pärast järves ujumist kuivatada või päeva jooksul kogunenud higi pühkida. See väike mugavus teeb suurt vahet looduses. Saab paigutada kuhu iganes maailmas.",
		disposable_grill = "Ühekordne grill",
		disposable_grill_description = "See ühekordne grillpakett pakub mugavat viisi maitsvate toitude valmistamiseks ilma koristamise vaevata. Lihtsalt süütke see, grillige oma südame rõõmuks ja visake see siis vastutustundlikult minema. Saab paigutada kuhu iganes maailmas.",
		grill = "Grill",
		grill_description = "Vastupidav grill, loodud kulinaarseks seikluseks. Olgu tegu steikide praadimise või köögiviljade röstimisega, see grill on teie usaldusväärne partner pidulike õhtusöökide loomisel tulevalguses. Võib paigutada ükskõik kuhu maailmas.",
		torch = "Fakkel",
		torch_description = "See fakkel valgustab kaevandi pimedust, tugev valgus julgele uurijale või kaevurile, peletades pimeduse oma stabiilse leegiga.",
		ladder = "Redel",
		ladder_description = "See tugev ja vastupidav redel on loodud uute kõrguste ohutuks ja usaldusväärseks saavutamiseks. Selle suur ja raske raam tagab stabiilsuse nendes keerukates ülesannetes, mis nõuavad veidi rohkem kõrgust ja tugevust. Ideaalne neile, kes ei karda kõrgemale ronida ja suuri ülesandeid lahendada.",
		police_barrier = "Politsei barjäär",
		police_barrier_description = "See pole lihtsalt takistus; see on piirijoone tõmbamine. Rahvamasside kontrollimiseks, kuritegelikes kohtades või lihtsalt siis, kui vajate natuke isiklikku ruumi. Võib paigutada ükskõik kuhu maailmas.",
		dummy = "Registreerimisfiguur",
		dummy_description = "Mitte ainult ilus nägu. Kasutage teda sihtmärgiks harjutamiseks või täitke numbrite tühjad kohad igavatel valvekohtadel. Võib paigutada ükskõik kuhu maailmas.",
		target = "Sihtmärk",
		target_description = "Eesmärk on uskumine. Lihvige oma laskmist, sest kui see loeb, soovite, et teie siht oleks sama terav kui teie teravmeelsus. Saab paigutada kuhu tahes maailmas.",
		large_target = "Suur sihtmärk",
		large_target_description = "Suurem, sest mõnikord vajate enesekindlust. Pihta või mööda, oluline on harjutada seni, kuni te ei saa eksida. Saab paigutada kuhu tahes maailmas.",
		cone = "Koonus",
		cone_description = "Liikluse korralduse vähetuntud kangelane. Hea voolude suunamiseks või ajaveetmiseks improvisatsioonilise jalgpalliväravana. Saab paigutada kuhu tahes maailmas.",
		spike_strips = "Küünlajalad",
		spike_strips_description = "Ultimaatne pidude rikkuja nendeks kõrgete kiiruste jälitamisteks. Kui soovid öelda „Peatu kohe seal!“, aga stiilselt ja teravate käppadega. Võib asetada kuhu tahes maailmas.",
		spike_strips_large = "Suured naelarihmad",
		spike_strips_large_description = "See on selleks, et püüda suuri kala või kui pead katma rohkem asfalti. See on nagu punase vaiba laialilöömine, välja arvatud see pole VIP-idele ja see rebib rehve. Võib asetada kuhu tahes maailmas.",
		stop_sticks = "Pysäytystikit",
		stop_sticks_description = "Mõtle nendele kui liikumatule objektile vastamist lakkamatule jõule. Pysäytystikit ei torgi rehve, vaid peatavad sõidukid otse nende liikumises. Ideaalne improviseeritud „kontrollige oma kiirust“ kohtade seadistamiseks. Võib asetada kuhu tahes maailmas.",
		floodlight = "Tulvavalgus",
		floodlight_description = "Pööra öö päevaks, kui oled jahtimas. Suurepärane kadunud võtmete leidmiseks või libekeelsete kahtlusaluste valgustamiseks, kes püüavad peitust mängida. Saab paigutada kuhu tahes maailmas.",
		left_diversion_sign = "Vasakpoolne suunaviit",
		left_diversion_sign_description = "Kui soovid kurjategijatele ringi peale teha, otseses mõttes. Ideaalne kõrvalekaldumine pahalastele vasakule, kui nad peaksid tegelikult minema paremale. Võib paigutada kuhu tahes maailmas.",
		right_diversion_sign = "Parem-poolne suunaviit",
		right_diversion_sign_description = "Nagu tema vasakukäeline vend, kuid neile, kes kaotasid oma parema pöörde Albuquerque'is. Saadab pahalased maalilisele marsruudile eemale probleemidest. Võib paigutada kuhu tahes maailmas.",
		stop_sign = "Stoppmärk",
		stop_sign_description = "Mitte tavaline teeääre kaunistus. See tähendab tõsist äri ja on varustatud märgiga. Peatab autosid ja mõnikord neid jalakäijaid, kes loevad märke. Võib paigutada kuhu tahes maailmas.",
		bear_trap = "Karupüünis",
		bear_trap_description = "See tugev karu lõks on loodud klambreid sulgema halastamatu jõuga, püüdes kõike, mis käivitab selle võimsad lõuad. Tõhus ja halastamatu, muutes põgenemise nii raskeks kui valulikuks, tagades, et miski, mis sisse astub, kergelt ei pääse. Silmapaistev tööriist mis tahes piirkonna turvamiseks. Võib paigutada kuhu tahes maailmas.",
		barrier = "Tõke",
		barrier_description = "Standardne ehitustõke.",
		traffic_barrier = "Liiiklustõke",
		traffic_barrier_description = "Tõke, mis aitab liiklust korraldada.",
		small_barrier = "Väike tõke",
		small_barrier_description = "Nõrguke väike tõke.",
		traffic_barrel = "Liiiklustõke - barrel",
		traffic_barrel_description = "See näeb kergesti löödav välja, aga jälgi ennast.",
		pedestrian_barrier = "Jalakäijate tõke",
		pedestrian_barrier_description = "Suurepärane asi, kuni pole Travis Scotti kontsert...",
		wheel_clamp = "Ratta lukk",
		wheel_clamp_description = "Siin ei ole põgenemisautosid! Ratta lukuga on tegu jõulise vahendiga, mis kindlalt kinnitab sõidukid paika ja takistab volitamata liikumist. See robustne seade on vaikne täitja, tagades, et parkimisreegleid austatakse ja järgitakse.",

		bandit_1 = "Bandiit 1",
		bandit_1_description = "Teie valik treeningstsenaariumide puhul, alati valmis mängima kurjategijat ilma pikkade tundide või stsenaariumi puudumise üle nurisemata. Saab paigutada kuhu iganes maailmas.",
		bandit_2 = "Bandiit 2",
		bandit_2_description = "Vaikne kuritöökaaslane Bandiit 1 kõrval, samuti nurisematu ja alati valmis teesklema tulistamist või põgenemist. Saab paigutada kuhu iganes maailmas.",
		hostage_1 = "Vang 1",
		hostage_1_description = "Alati ohver, mitte kunagi kangelane. Suurepärane päästeoperatsioonideks või koolitusspetsialistide südametunnistusele mõjutamiseks päeva päästma. Saab paigutada kuhu iganes maailmas.",
		hostage_2 = "Vang 2",
		hostage_2_description = "Teine alati populaarne ohvriroll, sest harjutamine teeb meistriks ja igaüks väärivad teist võimalust päästetud saamiseks. Saab paigutada kuhu tahes maailmas.",

		director_chair = "Režissööri tool",
		director_chair_description = "Võta juhtpositsioonil selles klassikalises režissööritoolis, pakkudes stiili ja mugavuse segu. Selle tugev disain ja kõrgem istumispositsioon teevad selle ideaalseks igasuguse stseeni jälgimiseks või lihtsalt kõrgemat vaadet nautimiseks. Saab paigutada kuhu tahes maailmas.",
		beach_chair = "Randtool",
		beach_chair_description = "Lõdvestu ja naudi päikest selles kerge randtoolis. Kavandatud lihtsuse ja kergesti kaasaskantavuse jaoks, see on sinu valik liivaste kallaste ja basseiniveeretuste jaoks. Saab paigutada kuhu tahes maailmas.",
		green_fishing_chair = "Roheline kalatool",
		green_fishing_chair_description = "Istuge selle vastupidava rohelise kalatooli sisse rahulikul päeval veekogu ääres. Mugav seljatugi ja tugev raam pakuvad täiuslikku tuge pikaks kalastuspäevaks. Saab paigutada kuhu iganes maailmas.",
		blue_fishing_chair = "Sinine kalatool",
		blue_fishing_chair_description = "Nautige oma kalapüügiseiklusi selles vastupidavas sinises kalatoolis. Ehitatud vastupidavaks, ühendab see mugavuse praktilisusega, muutes selle iga kalamehe hädavajalikuks kaaslaseks. Saab paigutada kuhu iganes maailmas.",

		tire_wall = "Rehvisein",
		tire_wall_description = "See tugev rehvisein pakub usaldusväärset varju igas olukorras, ideaalne strateegiliseks paigutamiseks välil. Valmistatud tihedalt paigutatud rehvidest, see suudab peatada kuule ja kaitsta sind tõhusalt. Siiski jääge valvsaks - halb positsioneerimine võib jätta teie pea teravate tulistajate jaoks avatuks.",

		claymore = "Kleermoruut",
		claymore_description = "See surmav Claymore'i miin on võimas kaitsevahend, mis on loodud piirkondi täpselt kaitsema ja kindlustama. Kord käivitatuna plahvatab see lõhkelt, kui sissetungija ületab selle tee, tagades tugeva piirkonna kontrolli. Olge paigutamisel ja käsitlemisel ettevaatlik, et vältida soovimatuid tagajärgi.",

		tv_stand = "TV alus",
		tv_stand_description = "Kasutage seda televiisori kinnitamiseks kõikjal, kus soovite.",
		tv_remote = "TV pult",
		tv_remote_description = "Universaalne pult (kvantpatareid pole kaasas).",

		magic_ball = "Maagiline 8-pall",
		magic_ball_description = "Küsi selle käest küsimus, raputa seda ja keeruta. Vastus sinu küsimusele ilmub maagiliselt aknakesse! See on nii lihtne, et sa ei usu seda!",
		fortune_cookie = "Õnnepoiss",
		fortune_cookie_description = "Maitsva küpsis sisemuses õnnega. Ava ja näe, mida tulevik toob!",
		fortune_paper = "Õnneriba",
		fortune_paper_description = "Väike paberitükk, millel on kirjas õnnenumber.",

		firework_rocket = "Ilutulestiku rakett",
		firework_rocket_description = "Lihtne ilutulestiku rakett. Suurepärane 4. juuliks.",
		firework_battery = "Ilutulestiku patarei",
		firework_battery_description = "Ilutulestiku patarei, mis laseb korraga välja 4 ilutulestikuraketti.",

		pole = "Kollane post",
		pole_description = "Täiuslik takistus, mis peatab kellegi kiiresti.",

		hiking_backpack = "Matkakott",
		hiking_backpack_description = "Valmistu väljasõitudel seiklemiseks selle trendika matkakotiga. See annab sinu riietusele robustse võlu, kuigi see on ainult kosmeetiline. Haara uurimise vaim ja näita kõigile oma väljasõiduhuvilisi!",
		green_hiking_backpack = "Roheline matkakott",
		green_hiking_backpack_description = "Valmistuge välitingimustega seiklusteks selle stiilse matkakotiga. See lisab teie riietusele robustsust, kuigi see on puhtalt kosmeetiline. Haarake avastamise vaim ja näidake oma väljasõbrast vibusid, kuhu iganes lähete!",
		blue_hiking_backpack = "Sinine matkakott",
		blue_hiking_backpack_description = "Valmistuge välitingimustega seiklusteks selle stiilse matkakotiga. See lisab teie riietusele robustsust, kuigi see on puhtalt kosmeetiline. Haarake avastamise vaim ja näidake oma väljasõbrast vibusid, kuhu iganes lähete!",

		gasoline_bottle = "Bensiinipudel",
		gasoline_bottle_description = "Kiireks kütuse täiendamiseks oma autole või endale?",

		radio_jammer = "Raadio häirija",
		radio_jammer_description = "Täiuslik igasuguste sissetulevate ja väljaminevate ülekannete häirimiseks.",

		winner_trophy = "Võitja trofee",
		winner_trophy_description = "Sa oled parim!",

		treasure_map = "Aardekaart",
		treasure_map_description = "Tuhat aardet lubav tuhm ja ilmastikuga rikutud kaart, mille mõistujad on võimelised avastama rikkusi. X tähistab aarde asukohta, kuid aardele jõudmise teekond võib olla ohtlik ja keeruline.",
		treasure_map_piece = "Aardekaardi tükk",
		treasure_map_piece_description = "Puruks rebitud fragment suuremast aardekaardist, mis on kaotatud või teadlikult peidetud. Ta hoiab endas müsteeriumi killukest, pusletükki, mis ootab lahendamist. Koguge kõik tükid, koostage kaart ja avastage kaugelt kadunud aare saladused. Olge valmis konkureerivate aardejahtijate ja ootamatute takistustega teel!",

		flag = "Lipp",
		flag_description = "Hoia seda tugevalt kinni!",

		black_dildo = "Must dildo",
		black_dildo_description = "Me saame selle ülestunnistuse ühel või teisel moel.",
		pink_dildo = "Roosa dildo",
		pink_dildo_description = "Käsitööna valmistatud, nikerdamise ja testitud Bugsy Middleman poolt.",

		bean_coffee = "Ubakohv",
		bean_coffee_description = "Ubavett... see on kõik, mis see tegelikult on.",
		cappuccino = "Cappuccino",
		cappuccino_description = "Espresso rinnapiimaga, ma mõtlen rinnapiimaga, ma mõtlen rinnapiimaga...",
		espresso = "Espresso",
		espresso_description = "Piisavalt energiat, et anda võimsust teie kodule, kõik ühes korralikus väikeses tassis.",
		cream_cookie = "Kreemiküpsis",
		cream_cookie_description = "Kreemine, just nagu sulle meeldib.",
		cheesecake = "Juustukook",
		cheesecake_description = "Ära sega seda koogiga, mis on tehtud juustust.",
		chocolate_cake = "Šokolaadikook",
		chocolate_cake_description = "Imemaitsev kook valmistatud parimatest kakaooadest.",
		cupcake = "Pisikook",
		cupcake_description = "Kerge kook, mille peal on maagiline võlurikreem.",
		pink_lemonade = "Roosa sidrunilimonaad",
		pink_lemonade_description = "Kindlasti mitte tavaline sidrunilimonaad, millele on lisatud roosa värv, et saaksime selle eest kaks korda rohkem raha küsida ...",
		iced_latte = "Jäätunud latte",
		iced_latte_description = "Värskendav jäine kohv, ideaalne kuumal päeval.",

		irish_coffee = "Iiri kohv",
		irish_coffee_description = "Värskelt valmistatud kohv, millele on lisatud pisut Keldi päritolu viskit.",
		guinness_beer = "Recibido",
		guinness_beer_description = "su",
		jameson_whiskey = "su = unidad de almacenamiento",
		jameson_whiskey_description = "Casillero de Submarino",
		tayto_chips = "No se pudo entregar el/los objeto(s) al jugador.",
		tayto_chips_description = "El jugador está demasiado lejos.",

		chip_10 = "$10 Kiip",
		chip_10_description = "Hasartmängu kiip. Saab hasartmänge mängida. Eseme saab kasiinos rahaks vahetada.",
		chip_50 = "$50 Kiip",
		chip_50_description = "Hasartmängu kiip. Saab hasartmänge mängida. Eseme saab kasiinos rahaks vahetada.",
		chip_100 = "$100 Kiip",
		chip_100_description = "Hasartmängu kiip. Saab hasartmänge mängida. Eseme saab kasiinos rahaks vahetada.",
		chip_500 = "$500 Kiip",
		chip_500_description = "Hasartmängu kiip. Saab hasartmänge mängida. Eseme saab kasiinos rahaks vahetada.",
		chip_1000 = "1000-dollarine kiip",
		chip_1000_description = "Mängukiip, mida saab võidu nimel kulutada kasiinos. Eset saab vahetada raha vastu kasiinos.",
		chip_5000 = "5000-dollarine kiip",
		chip_5000_description = "Mängukiip, mida saab võidu nimel kulutada kasiinos. Eset saab vahetada raha vastu kasiinos.",
		chip_10000 = "10000-dollarine kiip",
		chip_10000_description = "Mängukiip, mida saab võidu nimel kulutada kasiinos. Eset saab vahetada raha vastu kasiinos.",

		grubs = "Mardikad",
		grubs_description = "Kalamehe oluline osa, need ussid pakatavad potentsiaalist. Ideaalsed mageveekalastamiseks, nad meelitavad oma loomuliku välimuse ja liikumisega suurt hulka kala.",
		leeches = "Leechi",
		leeches_description = "Vastupidavad ja efektiivsed, leeches on suurepärased saakkalade püüdmiseks. Nende elavad ujumisliigutused vees muudavad nad suurematele röövkaladele vastupandamatuteks söödaks, kes otsivad tugevat einet.",
		earthworms = "Viudad",
		earthworms_description = "Klassikaline sööt, earthworms on kalameeste seas hinnatud oma universaalse külgetõmbe poolest. Need paksud ussid suudavad isegi kõige ettevaatlikumaid kala meelitada, muutes nad hädavajalikuks igale kalapüügiretkele.",
		fishing_rod = "Õngeritv",
		fishing_rod_description = "Tugevuse ja täpsuse jaoks valmistatud, see kalapüügivarras on teie ideaalne kaaslane veekogu ääres. Tasakaalustatud disain tagab suurepärase loopimiskogemuse, sobides nii algajatele kui ka kogenud kalameestele.",
		raw_meat = "Toores liha",
		raw_meat_description = "Värskelt jahtimisest korjatud, see toores liha hoiab endas toitva eine lubadust. Ideaalne grillimiseks, vajab hoolikat käsitlemist, et avada oma täielik maitse.",
		cooked_meat = "Keedetud liha",
		cooked_meat_description = "Mahlakalt grillitud täiuslikkuseni, see küpsetatud liha püüab kinni metsiku olemuse. Iga amps on täidetud õues suitsuse maitsega, pakkudes rahuldavat pidusööki pärast edukat jahti.",
		burnt_meat = "Kõrbenud liha",
		burnt_meat_description = "Grillil liiga kaua jäetud, see liha on muutunud vähem soovitavaks vormiks. Kuigi see on endiselt söödav, võib söömine jätta suhu kibeda maitse ja põhjustada ebamugavusi.",
		leather = "Nahk",
		leather_description = "See vastupidav nahk, mida saadakse nahaalusest mängust, uhkeldab kareda tekstuuriga. Ideaalne käsitööks või kasutamiseks mitmesuguste vastupidavate kaupade valmistamisel, on see väärtuslik ressurss igale väliloolasele või käsitöölisele.",
		wood = "Puit",
		wood_description = "See puidust hunnik, mille allikas on jätkusuutlikult kohalikest metsadest, pakub nii soojust kui ka kasulikkust. Ideaalne käsitööks, ehitamiseks või tule kütteks, on see oluline ressurss igas välis- või ellujäämise olukorras.",
		charcoal = "Süsi",
		charcoal_description = "See söepulk on valmistatud puidu grillil põletamisel ning on kõrge efektiivsusega kütus, mis parandab grillimiskogemust. See põleb kuumemalt ja puhtamalt kui toore puit, muutes selle ideaalseks toiduvalmistamiseks ja välistingimustes kulinaarsetest tegevustest rõõmu tundmiseks.",
		canine_tooth = "Mägilõvi hammas",
		canine_tooth_description = "Haruldane ja võimas metsaline reliikvia, see mägilõvi hammas sümboliseerib jahi toores olulisus. Haruldane saak igale jahimehele.",
		antlers = "Hirve sarved",
		antlers_description = "Harva leitav, need sarved on jahimehe graatsiline austusavaldus metsiku vaikivale tantsule. Haruldane ja elegantne leid.",
		pancake_mix = "Pannkoogi segu",
		pancake_mix_description = "Mitmekülgne segu, mis on esimene samm ideaalse hommiku poole. See pannkoogi segu ootab ärkamist piimaseguga, valmis muutuma sujuvaks tainaks teie toidunaudinguks.",
		beef_sausages = "Veiselihavorstid",
		beef_sausages_description = "Valmistatud parimatest lihatükkidest, need veiselihavorstid on tunnistus jahimehe oskusest ja lihuniku käsitööst. Grilli jaoks valmis, lubavad need särisevad roogad metsikusest otse teie taldrikule.",
		raw_bacon = "Toores peekon",
		raw_bacon_description = "See esmaklassiline peekon, viilutatud parimatest lõikudest ja täiuslikult marineeritud, on valmis muutma igasuguse eine mahlakaks meistriteoseks. Ideaalne grilli jaoks, ootab see krõbedaks küpsemist suupaisutavaks naudinguks.",

		liquid_smoke = "Vedel suits",
		liquid_smoke_description = "See pudel vedel suits on kulinaarse alkeemia saladus, kontsentreeritud essents, mis lisab toores lihale tule ja puidu iidsete sosinate. ",
		raw_brined_meat = "Toore soolatud liha",
		raw_brined_meat_description = "See toorelt suitsutatud liha kannab tulevaste pidusöökide lubadust. Grillimisel muutub see veiselihahakklihaks, maitsev tunnistus kannatlikkusest ja käsitööst.",
		bread_loaf = "Leivakänts",
		bread_loaf_description = "Leivakänts, värske ahjust. Ideaalne võileibade, röstsaia ja tugevate söökide jaoks.",
		bbq_sauce = "BBQ kaste",
		bbq_sauce_description = "Rikas ja vürtsikas kaste, mis lisab igale roale plahvatusliku maitse. Ideaalne grillimiseks, marineerimiseks ja kastmeks.",
		bbq_sandwich = "BBQ võileib",
		bbq_sandwich_description = "Maitsvast võileivast tulvil mahlakat suitsust liha ja vürtsikat BBQ kastet. Täidlane eine, mis rahuldab hinge.",
		cucumber = "Kurk",
		cucumber_description = "Krõmps ja värskendav kurk, ideaalne salatitele, näksimiseks või kodus marineeritud kurgi valmistamiseks.",
		salt = "Sool",
		salt_description = "Kuhjaga sool võib igat rooga muuta, rõhutades maitseid ja lisades sügavust teie kulinaarsetele loometele.",
		pickles = "Kurgid",
		pickles_description = "Purk vürtsikaid ja krõmpse kurgikesi, täiuslik suupiste, võileivade ja toitudele värsket maitset lisamiseks.",
		dark_chocolate = "Tume šokolaad",
		dark_chocolate_description = "Rikas ja luksuslik maiustus, tume šokolaad on täiuslik suhkruisu rahuldamiseks ning kakaoo sügavate ja keerukate maitsete nautimiseks.",
		beans = "Oad",
		beans_description = "Vaata! Püha Graal! Jumalate ambrosia, suletud plekist anumas! See pole lihtsalt Heinz'i ahjus küpsetatud oad, mu kallis härra, vaid värav puhta, puutumatult õnnistatud OAAKLUSESSE! Iga uba, mekk hääd, leotatud toidus nii rikkalikus, mis sosistab tundmatute maitsete saladusi. See pole lihtsalt toidusegu; see on elu eliksiir ise, ümbritsetud metallkandikuga, mis ootab oma hiilgust su maitsemeeltele kinkida. Võta oa osaks! Kummarda oad! Luba igal ampsul sind viia maailma, kus oad valitsevad ja iga lusikatäis on samm lähemale oaõnnele.",
		beans_toast = "Oad röstsaial",
		beans_toast_description = "Traditsiooniline Briti roog, oad röstsaial on lihtne ja rahuldust pakkuv eine, mis sobib suurepäraselt hommiku-, lõuna- või õhtusöögiks. Oade rikkalikud ja sügavad maitsed sobivad ideaalselt sooja, võise röstsaia juurde, luues lohutava ja toitva eine, mis on kiire ja lihtne valmistada.",
		pancake_batter = "Pannkoogi tainas",
		pancake_batter_description = "See rikkalik ja siidine pannkoogi tainas, valmistatud meie esmaklassilisest pannkoogisegust ja värskest piimast, on hommikueine meistriteose alus. Valmis grillimiseks ja puhumiseks kuldseteks, maitsvateks pannkookideks.",
		pancakes = "Pannkoogid",
		pancakes_description = "Õhulised ja kuldpruunid, koheva tekstuuriga, need Ameerika pannkoogid on maitsvalt luksuslik viis päeva alustamiseks. Maitsvad, ehkki mitte kõige tervislikum valik - mõtle neile kui vabaduse taldrikul, kus vabadus hõlmab igat siirupileotatud ampsu nautimist!",
		grilled_sausages = "Grillvorstid",
		grilled_sausages_description = "Naudi nende värskelt grillitud vorstide suitsust aroomi, mida kulinaarne vaevanägija teeb. Mahlased, maitsekad ja täiuslikult küpsetatud, nad on maakondlik nauding, mis tähistab jahti vaimuga igal ampsul.",
		grilled_bacon = "Grillitud peekon",
		grilled_bacon_description = "Krõbe, kuldne ja vastupandamatult suitsune, see grillitud peekon on lõplik nauding neile, kes hindavad elu peenemaid asju. Värskelt grillilt võetud, see on maitsepidu, valmis nautimiseks.",
		fried_egg = "Muna praetud",
		fried_egg_description = "Päikesepaisteline pool ja krõbedaks küpsetatud kuldkollaseks, see munapraad uhkeldab rõõmsama jumega kollase kollasega ja karge söe servadega. See on lihtne, kuid suurepärane valik igaks söögikorraks, demonstreerides, et mõnikord tulevad parimad maitsed lihtsimatest meetoditest.",

		beef_jerky = "Suitsutatud veiselihaviilud",
		beef_jerky_description = "Mõned mõnusad suitsutatud veiselihaviilud.",
		oreos = "Sünnipäevatordi Oreod",
		oreos_description = "Mõned maitsvad küpsised sünnipäevatordi maiguga.",
		nerds_chunks = "Nerds kobarad",
		nerds_chunks_description = "Kott nerds kummikobaraid, maitsvad!",
		reeses_pieces = "Reese'i tükid",
		reeses_pieces_description = "Täiuslik suupiste, kui olete natuke näljane, kuid mitte piisavalt sööma täis einet.",
		kettle_chips = "Kettle kartulikrõpsud (meekarri)",
		kettle_chips_description = "Parimad kartulikrõpsud maailmas.",
		cheetos = "Cheetos",
		cheetos_description = "Parim suupiste teie mänguistungite jaoks.",
		peanuts = "Soola pähklid",
		peanuts_description = "Purgitäis soolapähkleid, täiuslik suupiste.",
		olives = "Oliivid",
		olives_description = "Väike kauss oliive, täiuslik suupiste peole.",
		popcorn = "Popkorn",
		popcorn_description = "Kott popkorni, ideaalne filmiõhtuks.",

		rice = "Puitliis",
		rice_description = "See on paks ja kohev terad.",
		nori = "Nori vetikas",
		nori_description = "See on merevetikas, kuid kena.",
		soy_sauce = "Sojakaste",
		soy_sauce_description = "Sojakaste on rikkaliku umami maitsega maitseaine, mis on ideaalne marineerimiseks, maitsestamiseks ja kastmeks, madala kalorsusega ja kõrge valgusisaldusega.",
		eggs = "Munad",
		eggs_description = "Munad on mitmekülgsed ja toitainerikkad, sobivad ideaalselt omletti, quiche'i ja küpsetistesse.",
		lime = "Laim",
		lime_description = "Terava maitsega ja C-vitamiinirikas, lisab laim jookidele, marineerimisele ja kastmetele värskust.",
		coconut = "Kookospähkel",
		coconut_description = "Magus ja kreemjas, kookospähkel rikastab magustoite, karriroogasid ja smuutisid. Lihtsalt kasuta mõõdukalt.",
		sugar = "Suhkur",
		sugar_description = "See on nagu kokaiin, kuid mitte ebaseaduslik ja annab sulle diabeedi.",

		golf_ball = "Golfipall",
		golf_ball_description = "Kasutatakse golfimängus.",
		golf_ball_yellow = "Kollane golfipall",
		golf_ball_yellow_description = "Kasutatakse golfimängus.",
		golf_ball_orange = "Oranž golfipall",
		golf_ball_orange_description = "Kasutatakse golfimängus.",
		golf_ball_pink = "Roosa golfipall",
		golf_ball_pink_description = "Kasutatakse golfimängus.",

		gas_mask = "Gaasimask",
		gas_mask_description = "päästab sind igasuguse gaasi eest, isegi vanaema pahvaka eest.",
		nv_goggles = "Öövaatlusprillid",
		nv_goggles_description = "aitavad sul pimedas näha.",

		green_rolls = "Rohtu sisaldavad rullid",
		green_rolls_description = "nendeks, kes vajavad rohkem kui keskmine kogus.",
		rolling_paper = "Tubakapaber",
		rolling_paper_description = "kiire paber, millega saad oma mured maha suitsetada.",

		arena_pill = "Arenapill",
		arena_pill_description = "Imelik pill, mis teeb veel imelikumaid asju... \"Swallow\" omal vastutusel. Võib-olla oleks targem kaasas kanda relva, et kaitsta end vägivaldsete unenägude eest.",

		shovel = "Labidas",
		shovel_description = "Kindel kaevamisriist varjatud aarete väljakaevamiseks ja saladuste avastamiseks igal pool, muutes selle suurepäraseks abivahendiks pühendunud aardejahtijatele.",

		electric_fuse = "Elektriline sulavkaitse",
		electric_fuse_description = "Elektriline sulavkaitse on vajalik esemeks rööveltoas. See tuleb paigutada sulavkaitsekarpi, et toita kõvaketta lukku.",
		keycard_green = "Roheline võtmekaart",
		keycard_green_description = "Kasutatakse meditsiinitarvete täis hoidlatega avamiseks. Kuulub Los Santose Fleeca pangale.",
		keycard_blue = "Sinine võtmekaart",
		keycard_blue_description = "Kasutatakse tehniliste tarvete täis hoidlatega avamiseks. Kuulub Los Santose Fleeca pangale.",
		keycard_red = "Punane võtmekaart",
		keycard_red_description = "Kasutatakse relvahoidla avamiseks. Kuulub Los Santose Fleeca pangale.",

		magazine = "Ajakiri",
		magazine_description = "Ajakiri.",

		bank_rockfish = "Pangaräim",
		black_and_yellow_rockfish = "Must ja kollane kaljukoger",
		black_rockfish = "Must kaljukoger",
		blackgill_rockfish = "Mustnokkaline kaljukoger",
		blackspotted_rockfish = "Mustlaikeline kalmaarikala",
		blue_rockfish = "Sinine kalmaarikala",
		bocaccio = "Boccaccio",
		bronzespotted_rockfish = "Pruunikamajooneline kalmaarikala",
		brown_rockfish = "Pruun kalmaarikala",
		cabezon = "Pilvimulg",
		calico_rockfish = "Kirju kalmaarikala",
		california_scorpionfish = "California skorpionikala",
		canary_rockfish_variant_1 = "Kanaariuim (Variant 1)",
		canary_rockfish_variant_2 = "Kanaariuim (Variant 2)",
		chilipepper_rockfish = "Punase pipra kalmaarikala",
		china_rockfish = "Hiina kalmaarikala",
		copper_rockfish_variant_1 = "Vaskahven (variant 1)",
		copper_rockfish_variant_2 = "Vaskahven (variant 2)",
		cowcod = "Kaiserkala",
		darkblotched_rockfish = "Tumeteolised kalmaarikala",
		deacon_rockfish = "Deaconi kalmaarikala",
		dusky_rockfish_dark_version = "Tumeversioon Dusky kalmaarikala",
		dusky_rockfish_light_version = "Tumm kalmaarikala (kerge versioon)",
		flag_rockfish = "Lipp kalmaarikala",
		gopher_rockfish = "Gopher kalmaarikala",
		grass_rockfish_dark_version = "Rohukalmaarikala (tume versioon)",
		grass_rockfish_light_version = "Rohukalmaarikala (kerge versioon)",
		greenblotched_rockfish = "Rohutäpiline kalmaarikala",
		greenspotted_rockfish = "Rohulaikega kalmaarikala",
		greenstriped_rockfish = "Rohulindiline kalmaarikala",
		halfbanded_rockfish = "Pooleldi triibuline kalmaarikala",
		honeycomb_rockfish = "Mesitaru kalmaarikala",
		kelp_greenling_female = "Kelp Greenling ( emane)",
		kelp_greenling_male = "Kelp-rohepaks-luukala (isane)",
		kelp_rockfish = "Kelp-kivikala",
		lingcod = "Lingkood",
		olive_rockfish = "Oliiv-kivikala",
		pacific_ocean_perch = "Vaikse ookeani haug",
		pacific_sand_sole = "Vaikse ookeani liivtursk",
		pacific_sanddab = "Vaikse ookeani liivakammel",
		quillback_rockfish_variant_1 = "Sulgmulj (variant 1)",
		quillback_rockfish_variant_2 = "Sulgmulj (variant 2)",
		redbanded_rockfish = "Punaste rõngastega kivikala",
		rock_sole = "Kalju-suurusk",
		rosy_rockfish = "Roosa kivikala",
		rougheye_rockfish = "Kare-silmaga kivikala",
		shortraker_rockfish = "Lühikesemanteline kivikala",
		silvergray_rockfish = "Hõbedane-hall kivikala",
		speckled_rockfish = "Pilkudega kivikala",
		squarespot_rockfish = "Ruudukoot Rockfish",
		starry_flounder = "Täpiline kammeljas",
		starry_rockfish = "Täpiline Rockfish",
		tiger_rockfish_dark_version = "Tiigrilaadne Rockfish (Tume versioon)",
		tiger_rockfish_pink_version = "Tiigrilaadne Rockfish (Roosa versioon)",
		treefish = "Puukala",
		vermilion_rockfish = "Punakirje Rockfish",
		widow_rockfish = "Lesknaine Rockfish",
		yelloweye_rockfish_adult = "Kollane silmarock (täiskasvanud)",
		yelloweye_rockfish_juvenile = "Kollane silmarock (noor)",
		yellowtail_rockfish = "Kollane saba Rockfish",

		bank_rockfish_description = "Pangarokkas on ovaalse kujuga kala väikese pea ja okastega. Neil on tuhm punane või punakaspruun keha, sageli on külgsuunalisel joonel selge roosakas-oranž tsoon ja kehal ja seljauimede okastel on mustasid laike.",
		black_and_yellow_rockfish_description = "Musta ja kollase räime kirjeldus. Sebastes chrysomelas ehk must ja kollane räim on merekala, mis kuulub Sebastidae sugukonda. Sedud leidub kaljusel rannikul Vaikse ookeani ääres Californias ja Baja Californias.",
		black_rockfish_description = "Must räim on merekala, mida tuntakse ka kui musta merepuru, musta bassi, musta kalmaari, meriahvena, musta snäpi ja Vaikse ookeani ahvenana. See kuulub Sebastinae alamsugukonda, kivikalade perekonda Scorpaenidae sugukonnast.",
		blackgill_rockfish_description = "Aeg-ajalt püütakse neid Washingtoni rannikult otter-püügivahendite ja long-line seadmetega. Varem oli see Kalifornia ranniku normaalne saak. <br><br>Väiksemad variandid võivad leida avamere läheduses, kuid vanemad mustsuu-imemudilased liiguvad sügavamale vette.",
		blackspotted_rockfish_description = "Sebastes melanostictus, musta täpiga imemudilane, on mere kalaliik, mis kuulub rockfishes alamperekonda Sebastinae ja on osa Scorpaenidae perekonnast. See leidub Põhja-Vaikse ookeani vetes.",
		blue_rockfish_description = "Sinikirikukala ehk sinisäinas on mereperekonna Scorpaenidae alamperekonna Sebastinae liik. Kalad elavad kirdeosas Vaikse ookeani põhjaosas, ulatudes Põhja-Baja Californiast Kesk-Oregonini. Neid leidub ainult jõgede suudmealadel, mitte otseselt jõgedes.",
		bocaccio_description = "Bocaccio ehk karmipunase sinikiriku kalaliik kuulub mereperekonna Scorpaenidae alamperekonna Sebastinae hulka. Kalu leitakse Vaikse ookeani kirdeosast. Teda tuntakse ka \"punase ahvena\" nime all.",
		bronzespotted_rockfish_description = "Sebastes gilli ehk pronkslaiguline kaljukoger on kala liik, mis kuulub Sebastinae alamseltsi, kaljukogritaoliste hulka Scorpaenidae peres. See on leitud Ida-Kesk- Vaikse ookeani vetest.",
		brown_rockfish_description = "Pruun kaljukoger, mille teiseks nimetuseks on pruun mereahven, šokolaadibass, pruun bass ja pruun pommitaja, on merekalade alamseltsi Sebastinae kalaliik, mis kuulub kaljukogriteliste hulka Scorpaenidae peres. See on leitud kirdeosas Vaikse ookeani vetest.",
		cabezon_description = "Kabezon on suur skulpini liik, mis on pärit Põhja-Ameerika Vaikse ookeani rannikult. Kuigi sugukonna nimi tõlgitakse sõna-sõnalt \"skorpionikala\", kuuluvad tõelised skorpionikala Scorpaenidae sugukonda.",
		calico_rockfish_description = "Sebastes dallii ehk kalikoräim on mere kivikala liik, mis kuulub perekonna Scorpaenidae alamperekonda Sebastinae. See leidub Ida-Kesk- Vaikses ookeanis. <br><br>Isased kalikoräimed jõuavad suguküpsuseni seitsmeaastaselt, samas kui emased jõuavad suguküpsuseni üheksa-aastaselt.",
		california_scorpionfish_description = "Scorpaena guttata on kalaliik skorpionikalaliste sugukonnast, millele on antud ühine nimi California skorpionikala. See on pärit Ida-Tihookeani vetest, kus seda võib leida Californias ja Baja California rannikul.",
		canary_rockfish_variant_1_description = "Kanaarikala, mida tuntakse ka oranži hõbekala nime all, on mere elusatena kalaliiki, mis kuulub alamperekonda Sebastinae, okkaliste kalade hulka, Scorpaenidae sugukonda. See on pärit Vaikse ookeani vete lääneosas asuvatest Põhja-Ameerika vetest.",
		canary_rockfish_variant_2_description = "Kollane ahvenkalmaar, ka oranž ahvenkalmaar, on merekalade alamsugukonda Sebastinae kuuluv liik, mis kuulub kalade sugukonda Scorpaenidae. See on pärit Vaikse ookeani vetest lääne Põhja-Ameerikas.",
		chilipepper_rockfish_description = "Sebastes goodei, tuntud ka kui tšillipipar või tšillipipar-rokkkala, on merekala, mis kuulub scorpionikalaliste perekonda Sebastinae, laiemalt Scorpaenidae sugukonda. See kalaliik elab peamiselt Põhja-Ameerika läänerannikul alates Baja Californiast kuni Vancouverini. ",
		china_rockfish_description = "Hiina kaljukoger on mereperekond Sebastinae (kaljukoger) liik, mis kuulub Scorpaeidae perekonda. Ta on pärit Vaikse ookeani vetest Ameerika lääneranniku lähedal.",
		copper_rockfish_variant_1_description = "Vask-ahvenkalmaar, ka vasekarvane meriparask, on merekalade alamsugukonda Sebastinae kuuluv liik, mis kuulub kalade sugukonda Scorpaenidae. See on leitud idaosas Vaiksest ookeanist.<br><br>Neid ei nähta kunagi tavalistes ookeanides, kuna nad eelistavad olla kas pinna lähedal või põhjas. ",
		copper_rockfish_variant_2_description = "Vaskkivipurask on mereliik, mis kuulub kalapere Scorpaenidae alamperekonda Sebastinae. Neid leidub ainult Vaikse ookeani idaosas. Nad asuvad kas pinnal või põhjas ja neid ei leidu tavaliselt ookeanides. ",
		cowcod_description = "Sebastes levis ehk lehmakaljukoger on mereperekond Sebastinae (kaljukoger) liik, mis kuulub Scorpaeidae perekonda. Ta on levinud Ida-Vaikse ookeani vetes.<br><br>Suurusevahemik loob võistlusliku eelise.",
		darkblotched_rockfish_description = "Tumedas pruunikas kalmaar, mida tuntakse ka Blackblotched rockfish, blackmouth rockfish ja blotchie nimedega, on sügavdatud kehaga kala.",
		deacon_rockfish_description = "Deacon rockfish ehk Sebastes diaconus on merekalade Scorpaenidae perekonda kuuluvate Sebastinae alamperekonda kuuluv liik. Teda leidub Vaikse ookeani idaosas.<br><br>Isased elavad alati kauem kui emased.",
		dusky_rockfish_dark_version_description = "Sebastes ciliatus on kivikala liik, mida tavaliselt tuntakse kui tumeda kivikalana. Teda leidub peamiselt Põhja-Vaikse ookeani vetes.",
		dusky_rockfish_light_version_description = "Sebastes ciliatus on kalaliik, mida tuntakse ka kui tumehall kalakka. Teda leidub tavaliselt Põhja-Vaikse ookeani piirkonnas.",
		flag_rockfish_description = "Sebastes rubrivinctus, mida tuntakse ka kui punaribiline kalakka, hispaania lipp, punaste vöötidega kalakka või habemenuga, on mereline kiiruimne kala, mis kuulub alamsugukonda Sebastinae ehk kalakkade hulka, Scorpaenidae sugukonnast. Teda leitakse Ida-Vaikse ookeani piirkonnas.",
		gopher_rockfish_description = "Gopher rockfish, mida tuntakse ka kui gopher merepärli, on mereline kiiruimne kala, mis kuulub alamsugukonda Sebastinae ehk kalakkade hulka, Scorpaenidae sugukonnast. Teda leitakse peamiselt Californias, Ida-Vaikse ookeani piirkonnas.",
		grass_rockfish_dark_version_description = "Sebastes rastrelliger, murane merikala liigina kuulub alamsugukonda Sebastinae, kaljukogrid, Scorpaenidae sugukonnast. Ta on pärit Vaikse ookeani idaosas asuvatest vetest.<br><br>Kõige sagedamini kasutavad seda püügiõngitsejad vabaõhutegevuses.",
		grass_rockfish_light_version_description = "Sebastes rastrelliger, murane merikala liigina kuulub alamsugukonda Sebastinae, kaljukogrid, Scorpaenidae sugukonnast. Ta on pärit Vaikse ookeani idaosas asuvatest vetest.<br><br>Kõige sagedamini kasutavad seda püügiõngitsejad vabaõhutegevuses.",
		greenblotched_rockfish_description = "Rohetäpiline kaljukoger on tursakala liik, keda leidub üksi või väikeste gruppide kaupa kaljustruktuuride vahel sügavusel 55 meetrist kuni 490 meetrini. Nende maksimaalne pikkus on 54 cm (21 tolli) ja emased on isastest suuremad. <br><br> Rohetäpiline, rohepunkti- ja roheklassil on ühised omadused ja käitumine.",
		greenspotted_rockfish_description = "Rohelise punktiga kaljukoger ehk Sebastes chlorostictus on mere elurikkuse võrkjaliste kalade sugukonda kuuluv kalaliik, mis kuulub kaljukogerde alamsugukonda Sebastinae ja kalade sugukonda Scorpaenidae. Teda leidub Ida-Patsifis.<br><br> Rohetäpiline, rohepunkti- ja roheklassil on ühised omadused ja käitumine.",
		greenstriped_rockfish_description = "Greenstriped rockfish ehk piksnokk-kivikalapüük on mereline kiiruimeliste kala liik, mis kuulub Sebastinae alamperekonda, kivikalade sugukonda Scorpaenidae perest. Seda leidub Kirde-Vaikse ookeani vetes.<br><br>Roheliste laikudega, rohepunktidega ja rohe triipudega kivikala jagavad kõik samasuguseid omadusi ja käitumist.",
		halfbanded_rockfish_description = "Halfbanded rockfish ehk puolivöinen-kivikalapüük on mereline kiiruimeliste kala liik, mis kuulub Sebastinae alamperekonda, kivikalade sugukonda Scorpaenidae perest. Seda leidub Idapoolses Vaikse ookeani piirkonnas.",
		honeycomb_rockfish_description = "Honeycomb Rockfish on kompaktse kerega, mille laius on standardpikkusest 35% kuni 39%. Need on kaetud okastega. Neil on helepruun, pruun või punakaspruun värvus, millel on 4 kuni 6 valget laiku juhuslikult külgedel.",
		kelp_greenling_female_description = "Kelp Greenlingi emastel on kogu keha kaetud pruunikaspunaste kuni kuldkollaste täppidega hallikas-karva taustal. Uimed on peamiselt kollakasoranžid. Isased on tavaliselt hallid kuni pruunikas-oliivised, millel on ebakorrapärased sinised laigud keha esimesel poolel kuni kahe kolmandikuni. Neid leidub tavaliselt veekogudes, mis on madalamal kui 328 jalga.",
		kelp_greenling_male_description = "Isane kelp rohukoger on pruunika oliivikarva hallikate toonidega, seljal ja peal on tal ebakorrapäraselt paiknevad sinised laigud, mis on ääristatud mustaga. Mõlemal sugupoolel on väikesed karvased väljaulatuvused (tsirrud) silmade kohal. See liik võib kasvada kuni 60 cm pikaks. Kõige sagedamini leidub neid vette, mis on madalamad kui 100 meetrit.<br><br>",
		kelp_rockfish_description = "Kelp kalakirje ehk Sebastes atrovirens on merekala, mis kuulub kalaliigi Sebastinae, ehk kalakirjaste alamsugukonda ning Scorpaenidae perekonda. See on looduslikult levinud Vaikse ookeani rannikul Californias Ameerika Ühendriikides ja Baja Californias Mehhikos.",
		lingcod_description = "Lingcod ehk Atlandi merejänesed on innukad röövkalad ja võivad kaaluda üle 80 naela (35 kg) ja mõõta 60 tolli (150 cm) pikkust. Neid iseloomustab suur suu koos 18 terava hambaga. Nende värvus on muutlik, tavaliselt tumedate pruunide või vase laikudega grupeeritud.",
		olive_rockfish_description = "Oliivi-roostekala ehk Acanthoclinus fuscus on Plesiopidae perekonna pikakoonuline liigikaaslane. Leitud ainult Uus-Meremaa vahetsoonis ja madala tõusuvee ajal kaljulompides, kasvavad kalad kuni 30 cm pikkuseks.",
		pacific_ocean_perch_description = "Vaikse ookeani ahven, tuntud ka Vaikse ookeani kaljukalana, Roos kala, Punane peletis või punane ahven, on kala, kelle ulatus ulatub Põhja-Vaikse ookeani: Lõuna-Californiast ümber Vaikse ookeani ümber kuni Honshū põhjani, Jaapanini, sealhulgas Beringi meri.",
		pacific_sand_sole_description = "Vaikse ookeani liivasole, tuntud ka lihtsalt liivakalana, on lamekala liik, kes elab kirdeosas Vaikse ookeani vetes liivastel põhjadel. Ainuke liik oma perekonnas, Psettichthys, teda leidub Beringi merest kuni Põhja-Californiani.",
		pacific_sanddab_description = "Vaikse ookeani liivakalakesed on lamekalade liik. See on kahtlemata kõige tavalisem liivakalaliik, kes jagab oma elupaika pikakirp-kalakese ja mustriga kalakesega. Tegemist on keskmise suurusega lamekalaga, kes on helepruuni värvi ja tumepruunide või mustade laikudega, vahel esineb ka valgeid või oranže täppe.",
		quillback_rockfish_variant_1_description = "Sulgharjaspurask on merekalade liik, mis kuulub kalapere Scorpaenidae alamperekonda Sebastinae. See liik elab peamiselt soolastes vetes ja rahulikumatel vetel. Täiskasvanud isendid kaaluvad keskmiselt 2-7 naela ja võivad olla kuni 1 meetrised pikkused. Nad elavad California piirkondades kuni 15 aastat, samas kui Kanada vetes võivad nad elada vähemalt 95 aastat, tõestades, et California on parem kui USA. ",
		quillback_rockfish_variant_2_description = "Iseloomuliku välimusega kalaliik, mida tuntakse ka kui meriallikat. See kuulub merekalade Scorpaenidae perekonna Sebastinae alamperekonda. Karbis esineb soolases vees elutsev liik peamiselt korallrahudes. Täiskasvanud kala kaalub keskmiselt 2–7 naela ja võib ulatuda 1 meetrini pikkus.<br><br>Kalad Californias elavad umbes 15 aastat ja Kanadas vähemalt 95 aastat. See näitab, et CA>US.",
		redbanded_rockfish_description = "Punavöödiline kaljuhaid on mere-kondikala liik, mis kuulub alamsugukonda Sebastinae ehk kaljuhai perekonda ning Scorpaenidae sugukonda. Teda leidub Põhja-Tiigi ookeanis.",
		rock_sole_description = "Kaljukammeljas (Lepidopsetta bilineata) on lestaliste sugukonda kuuluv lamekala. See on demersaalne kala, kes elab liivastel ja kivikatel põhjadel kuni 575 meetri (1886 jalga) sügavuses, kuid kõige tavalisemalt leitakse seda vahemikus 0 kuni 183 meetrit (0 kuni 600 jalga).",
		rosy_rockfish_description = "Roosakirju kaljuahven (Sebastes rosaceus) on merekalade alamsugukonda Sebastinae kuuluv liik, mis kuulub kalaliste sugukonda Scorpaenidae. See leidub Ida-Patsifikus.",
		rougheye_rockfish_description = "Rougheye rockfish on Sebastes perekonda kivikala. Samuti tuntud kui mustelari kivikala või mustasuun kivikala ja kasvab maksimaalseks umbes 97 cm pikkuseks, kusjuures IGFA rekordkaaluks on 14 naela ja 12 untsi.",
		shortraker_rockfish_description = "Täiskasvanuna on lühirakija kivikalad üks suurimaid kivikala liike. Vee all on nad kerge roosa, roosa-oranž või punane laikude ja sadulatega. Kõik uimed on mõnevõrra mustad ning seljauim võib olla valgete otstega. Suu on punane ja võib olla mustade laikudega. <br> <br> Lühirakija kivikalad on üks pikima elueaga mereeliike maailmas, kelle vanus võib ulatuda kuni 157 aastani.",
		silvergray_rockfish_description = "Hõbehall kaljuahven on sale kaljuahvenaliik, millel on vähendatud pealaeotsad. Neil on tumedad huuled ja alumine lõualuu, mis on pikk ja ulatub üle ülemise lõualuu. Neil on märgatav sümfiisiline sõlm nende alumise lõualuu tipus.",
		speckled_rockfish_description = "Sebastes ovalis, vikerforell-kaljuahven, on mere kalaliik, mis kuulub alamperekonna Sebastinae, kaljuahvenate hulka, mis on osa perekonnast Scorpaenidae. See leidub sügaval kividestel aladel idapoolses Vaikse ookeani piirkonnas.",
		squarespot_rockfish_description = "Sebastes hopkinsi, ruutlaik-kivikalmaar, on mereperekond Scorpaenidae alamsugukonda Sebastinae kuuluv liik. Seda liiki leidub Ida-Vaikses ookeanis.",
		starry_flounder_description = "Tähelesta ehk pikasooneline lest, teinekord kutsutud ka jahutuskiviks, on tavaline kalaliik, kes esineb Põhja-Jaapanil, Põhja-Ameerikal ja Põhja-Valges meres.",
		starry_rockfish_description = "Täht-rokkari ehk kirju-kivikalmaar, vahel tuntud ka punase meripulga, on mereperekond Scorpaenidae alamsugukonda Sebastinae kuuluv liik. Teda leidub Ida-Vaikse ookeani vetes.",
		tiger_rockfish_dark_version_description = "Tiigerkalmaarik, mida nimetatakse ka tiigerist meriahvenaks, bändiliseks kalmaarikuks ja musta triibuliseks kalmaarikuks, on mereorganismide seltsi Sebastinae, kalmaarikuliste, alamseltsi kuuluv liik, Scorpaenidae perekonnast. See elab Vaikse ookeani vetes Lääne-Põhja-Ameerika rannikul.",
		tiger_rockfish_pink_version_description = "Tiigerkalmaarik, mida nimetatakse ka tiigerist meriahvenaks, bändiliseks kalmaarikuks ja musta triibuliseks kalmaarikuks, on mereorganismide seltsi Sebastinae, kalmaarikuliste, alamseltsi kuuluv liik, Scorpaenidae perekonnast. See elab Vaikse ookeani vetes Lääne-Põhja-Ameerika rannikul.",
		treefish_description = "Puittursk on merekala, mis kuulub kalade alamsugukonda Sebastinae, kalju-kivikalade sugukonda Scorpaenidae perekonda. See on pärit Vaikse ookeani idaosast.",
		vermilion_rockfish_description = "Punapunane kalju-kivikala on merekala, mis kuulub kalade alamsugukonda Sebastinae, kalju-kivikalade sugukonda Scorpaenidae perekonda. See on levinud Vaikse ookeani lääneosas.",
		widow_rockfish_description = "Lesktursk ehk pruunkalju on merekala, mis kuulub kalade alamsugukonda Sebastinae, kalju-kivikalade sugukonda Scorpaenidae perekonda. See leidub peamiselt Vaikse ookeani kirdeosas.",
		yelloweye_rockfish_adult_description = "Kollasilmne kalurikala on merekalade rühma kuuluv kalaliik, mis kuulub alamperekonda Sebastinae ja sugukonda Scorpaenidae. See on Sebastes perekonna üks suuremaid liikmeid. Tema nimi tuleb tema värvusest.",
		yelloweye_rockfish_juvenile_description = "Kollasilmne kalurikala on merekalade rühma kuuluv kalaliik, mis kuulub alamperekonda Sebastinae ja sugukonda Scorpaenidae. See on Sebastes perekonna üks suuremaid liikmeid. Tema nimi tuleb tema värvusest.",
		yellowtail_rockfish_description = "Koll-sabapuukala (Sebastes flavidus) on merekalade alamsugukonnast Sebastinae mereloomade liik. See kuulub Scorpaenidae perekonda ja on levinud peamiselt Põhja-Ameerika läänerannikul Californiast Alaskani.<br><br> Koll-sabapuukala vastsed ja noorjäljendid elavad peamiselt veepinnal, täiskasvanud kalad aga sügavamates vetes kaljusel põhjal.",

		weapon_dagger = "Antiikne ratsaväe pistoda",
		weapon_bat = "Pesapalli kurikas",
		weapon_bottle = "Kägistatud pudel",
		weapon_crowbar = "Jõhker",
		weapon_unarmed = "Pustid",
		weapon_flashlight = "Taskulamp",
		weapon_golfclub = "Golfikepp",
		weapon_hammer = "Haamer",
		weapon_hatchet = "Kirves",
		weapon_knuckle = "Messingnukid",
		weapon_knife = "Nuga",
		weapon_machete = "Machete",
		weapon_switchblade = "Libliknuga",
		weapon_nightstick = "Prits",
		weapon_wrench = "Torulukksepp",
		weapon_battleaxe = "Võitluskirves",
		weapon_poolcue = "Biljardikepp",
		weapon_stone_hatchet = "Kivine kirves",
		weapon_candycane = "Kommi kepp",

		weapon_pistol = "Püstol",
		weapon_pistol_mk2 = "Püstol Mk II",
		weapon_combatpistol = "Võitlus-püstol",
		weapon_appistol = "AP püstol",
		weapon_stungun = "Pimestus-šokirelv",
		weapon_pistol50 = "Püstol .50",
		weapon_snspistol = "SNS püstol",
		weapon_snspistol_mk2 = "SNS püstol Mk II",
		weapon_heavypistol = "Raske püstol",
		weapon_vintagepistol = "Vanaaegne püstol",
		weapon_flaregun = "Välkuheitja",
		weapon_marksmanpistol = "Täpsuspüstol",
		weapon_revolver = "Raske revolver",
		weapon_revolver_mk2 = "Raske revolver Mk II",
		weapon_doubleaction = "Topeltrevolver",
		weapon_raypistol = "Up-n-Atomizer",
		weapon_ceramicpistol = "Keraamiline püstol",
		weapon_navyrevolver = "Mererandirevolver",
		weapon_gadgetpistol = "Perico püstol",
		weapon_stungun_mp = "Stungun (MP)",
		weapon_pistolxm3 = "WM 29 püstol",
		weapon_tecpistol = "Taktikaline SMG",

		weapon_microsmg = "Väikekuulipilduja",
		weapon_smg = "Kuulipilduja",
		weapon_smg_mk2 = "SMG Mk II",
		weapon_assaultsmg = "Ründekuulipilduja",
		weapon_combatpdw = "Combati automaatpüstolkuulipilduja",
		weapon_machinepistol = "Automaatpistolkulipilduja",
		weapon_minismg = "Minikuulipilduja",
		weapon_raycarbine = "Kuradi Püss (Unholy Hellbringer)",

		weapon_pumpshotgun = "Pump-action mossipüstol",
		weapon_pumpshotgun_mk2 = "Pump-action shotgun Mk II",
		weapon_sawnoffshotgun = "Poolpikk paukpadrunimoss",
		weapon_assaultshotgun = "Ründepaukpadrunimoss",
		weapon_bullpupshotgun = "Bullpup paukpadrunimoss",
		weapon_musket = "Muskett",
		weapon_heavyshotgun = "Raske paukpadrunimoss",
		weapon_dbshotgun = "Topeltroheline paukpadrunimoss",
		weapon_autoshotgun = "Imupüss",
		weapon_combatshotgun = "Võitluspadrunid",

		weapon_assaultrifle = "Ründevintpüss",
		weapon_assaultrifle_mk2 = "Rünnakpüss Mk II",
		weapon_carbinerifle = "Karbiinivintpüss",
		weapon_carbinerifle_mk2 = "Karbiinpüss Mk II",
		weapon_advancedrifle = "Täiustatud vintpüss",
		weapon_specialcarbine = "Eriväe karbiin",
		weapon_specialcarbine_mk2 = "Eriülesannete karbiinpüss Mk II",
		weapon_bullpuprifle = "Bullpup vintpüss",
		weapon_bullpuprifle_mk2 = "Bullpup püss Mk II",
		weapon_compactrifle = "Kompakt vintpüss",
		weapon_militaryrifle = "Sõjaväe vintpüss",
		weapon_heavyrifle = "Raske vintpüss",
		weapon_tacticalrifle = "Taktikaline vintpüss",
		weapon_battlerifle = "Võitlusvintpüss",

		weapon_mg = "Kergekuulipilduja",
		weapon_combatmg = "Võitluskino",
		weapon_combatmg_mk2 = "Ründemasina kuulipilduja Mk II",
		weapon_gusenberg = "Gusenbergi imupüss",

		weapon_sniperrifle = "Laskevintpüss",
		weapon_heavysniper = "Rasket laskevintpüssi",
		weapon_heavysniper_mk2 = "Raskesnaiper Mk II",
		weapon_marksmanrifle = "Täpsuskahur",
		weapon_marksmanrifle_mk2 = "Märkuri püss Mk II",
		weapon_precisionrifle = "Täpsusvintpüss",

		weapon_rpg = "RPG",
		weapon_grenadelauncher = "Graanatpüss",
		weapon_grenadelauncher_smoke = "Suitsugraanatpüss",
		weapon_minigun = "Minigun",
		weapon_firework = "Ilutulestiku laskur",
		weapon_railgun = "Rööbastepüss",
		weapon_hominglauncher = "Sihtmärki jälgiv raketiväljasaatja",
		weapon_compactlauncher = "Väike graanatväljasaatja",
		weapon_rayminigun = "Widowmaker",
		weapon_emplauncher = "Väike EMP väljasaatja",
		weapon_stinger = "RPG",
		weapon_railgunxm3 = "Coil Railgun",
		weapon_snowlauncher = "Lumepallipilduja",

		weapon_grenade = "Käsigranaat",
		weapon_bzgas = "BZ Gaas",
		weapon_molotov = "Molotov'i kokteil",
		weapon_stickybomb = "Kleepuv pomm",
		weapon_proxmine = "Lähimine",
		weapon_snowball = "Lumepallid",
		weapon_pipebomb = "Torupommid",
		weapon_ball = "Pesapall",
		weapon_smokegrenade = "Suitsugranaat", --MÄRKUS: seda nimetatakse "pisargaasiks",
		weapon_flare = "Lohutuli",
		weapon_acidpackage = "Happepakend",

		weapon_petrolcan = "Jerry kanister",
		gadget_parachute = "Langevari",
		weapon_fireextinguisher = "Tulekustuti",
		weapon_hazardcan = "Ohutu kütusekanister",
		weapon_fertilizercan = "Väetisekanister",
		weapon_hackingdevice = "Häkkeriseade",

		red_parachute = "Punane langevari",
		blue_parachute = "Sinine langevari",
		black_parachute = "Must langevari",

		weapon_dagger_description = "Sa oled juba mõnda aega kandnud piraat-chic stiili, kuid sul ei ole veel võimsat relva, et seda välimust täiendada? Võta see hõbedase käepidemega dolk.",
		weapon_bat_description = "Alumiiniumist pesapalli kurikas nahast käepidemega. Kerge, kuid võimas lahingus.",
		weapon_bottle_description = "See ei ole nutikas ega ka ilus, aga enamikul juhtudel pole ka noaga suunas kimpu kargasijad seda. Kui kõik muu ei aita, saab sellega hakkama.",
		weapon_crowbar_description = "Raske kärnkang, mis on valmistatud kõrgekvaliteedilisest, karastatud terasest, et saaksite oma töö kiiremini tehtud.",
		weapon_unarmed_description = "Kui kõik muu ebaõnnestub, siis võitle ka paljaste kätega.",
		weapon_flashlight_description = "Intensiivistage oma hirmu pimeduse ees selle lühikese ulatusega, patareitoitega valgusallikaga. Kasulik ka räige jõuvahendina.",
		weapon_golfclub_description = "Standardpikkusega golfikepp keskmise rauaga ja kummist käepidemega surmavaks lühimänguks.",
		weapon_hammer_description = "Tugev ja mitmekülgne haamer puidust käepidemega ja kõvera küünisega. See vanakooli relv on endiselt konkurentidele ületamatu.",
		weapon_hatchet_description = "Lihtsasti käsitsetav ja peidetav kirves, millega saab lihtsalt teha omade seas küttepuid.",
		weapon_knuckle_description = "Ideaalne lahendus kuldhambuste eemaldamiseks või kingiks kõige paremale partnerile, kes juba kõike omab.",
		weapon_knife_description = "See 7-tolline süsinikterasest kahekäeline nuga on kahele poole teritatud ja seljal on hambuline serv, et parandada torkamis- ja pistmisvõimekust.",
		weapon_machete_description = "Ameerika Lääne-Aafrika relvakaubandus ei ole lihtsalt andmine. Taasavasta lihtne elu selle roostes raiumisnoaga.",
		weapon_switchblade_description = "Taskust teravaks vähem kui sekundiga: kokkuvolditavad noad ei lähe kunagi moest välja.",
		weapon_nightstick_description = "24- tolline polükarbonaadist käepidemega politonui.",
		weapon_wrench_description = "Postapokalüptiliste ellujääjate ja vägivaldsete isa lemmik, nähtavasti kasutatakse seda mingisugusel tööriistana ka.",
		weapon_battleaxe_description = "Kui see on hea piisavalt keskaegsete jalaväelaste, tänapäevaste piirivalvurite ja energiliste jalgpalliemmede jaoks, siis on see piisavalt hea ka sinu jaoks.",
		weapon_poolcue_description = "Ah, pole midagi rahuldustpakkuvamat kui täiusliku murdmise ragin, eriti kui see on teise inimese selgroog.",
		weapon_stone_hatchet_description = "2,5 miljonit aastat uurimistööd ja me oleme endiselt siin.",
		weapon_candycane_description = "Pidulik kommid, mis on veidi kleepuvad.",

		weapon_pistol_description = "Standardne käsi relv. .45 kaliibriga võitluspiistol, mille mahutavus on 12 padrunit ja mida saab pikendada kuni 16 padrunit.",
		weapon_pistol_mk2_description = "Tasakaal, lihtsus, täpsus: pole midagi paremat kui pikendatud toruga püstol kellegi suus.",
		weapon_combatpistol_description = "Kompaktne, kergekaaluline poolautomaatne püstol, mis on mõeldud seadusandlike jõudude ja isikliku kaitse jaoks. 12-padrunitine ajakiri, mida saab laiendada 16 padruniteni.",
		weapon_appistol_description = "Kõrge läbistavusega täisautomaatne püstol. Mahutab 18 padrunit ajakirjas, mida saab laiendada 36 padruniteni.",
		weapon_stungun_description = "Zapsaabastav lõbu kogu perele!",
		weapon_pistol50_description = "Ära kunagi tulista suure kaliibriga inimese peale väikese kaliibriga kuuliga.",
		weapon_snspistol_description = "Nagu kondoomid või juukselakk, see mahub teie taskusse ööklubile minekuks. See on poole täpsusega nagu šampanjakork ja kahekordselt tappev. Selle maksumus on võrreldav pudeli hinnaga klubis.",
		weapon_snspistol_mk2_description = "Lõplik lisand sinu käekotti: kui soovid teha laupäevaõhtust tõeliselt erilise, siis see on parim valik.",
		weapon_heavypistol_description = "Ajakirjaga varustatud poolautomaatne rasketõstuk eesrindlik valik. Pakub täpsust ja tõsiselt meelelahutavat alaosa tööd iga kord.",
		weapon_vintagepistol_description = "Mida sa tegelikult vajad, on rohkem äratuntavaid relvi. Eristu röövlite rahvahulgast selle graveeritud püstoliga.",
		weapon_flaregun_description = "Kasutatakse hädaolukorra või purjus õhinaga märku andmiseks. Hoiatus: otse inimestele suunamine võib põhjustada spontaanset põlemist. Osa Heists mängulaiendist.",
		weapon_marksmanpistol_description = "Mitte riskikartlikule. Tee see loenditavaks, kuna peate laadima sama palju kui tulistate.",
		weapon_revolver_description = "Püstol piisavalt suure peatumisjõuga, et maha lasta hullunud ninasarvik, ja piisavalt raske, et selle puudumisel ta surnuks lüüa.",
		weapon_revolver_mk2_description = "Kui suudad seda tõsta, siis see on kõige lähemal võimalik, kuidas kellelegi rongiga läheneda.",
		weapon_doubleaction_description = "Sest mõnikord on kättemaks kõige parem roog, mida serveeritakse kuus korda, järjestikku otse silmade vahele.",
		weapon_raypistol_description = "Värskelt vabariiklaste kosmoserangerite poolt sotsialismivastasest galaktilisest sõjast: pole padrunit, pole magasini, lihtsalt üks brutaalne energiaimpuls teise järel.",
		weapon_ceramicpistol_description = "Mitte teie vanaema keraamika. Kuigi see pintsuurune püstol on piisavalt väike, et mahtuda tema käekotti, ei pane ta metallidetektorit tööle.",
		weapon_navyrevolver_description = "Tõeline muuseumieksponaat. Kui soovid teada, kuidas Lääs võideti - aeglane laadimiskiirus ja terve rida tapmist.",
		weapon_gadgetpistol_description = "Tapva täpsusega tulistav relv. Ära ole kartlik. Sa ei kriimusta titaannitriidkatet.",
		weapon_stungun_mp_description = "Sähviv lõbu tervele perele!",
		weapon_pistolxm3_description = "Kompaktne ja kergekaaluline püstol, mis tulistab 9mm kaliibrilisi laskemoone. Väga efektiivne lähivõitluses.",
		weapon_tecpistol_description = "Täisautomaatne käsituli suure padrunite mahutavuse ja kõrge tulekiirusega. Mahutab 33 padrunit 9mm padrunit.",

		weapon_microsmg_description = "Ühendab kompaktse disaini ja kõrge tulekiiruse, umbkaudu 700-900 lasu minutis.",
		weapon_smg_description = "Tegemist on tugeva algtaseme kuulipildujaga. Kergekaaluline, täpne sihikuga ja 30 lasku mahutava magasiniga.",
		weapon_smg_mk2_description = "Kergekaaluline, kompaktne automaatpüss, kiire tulekiirusega, mis muudab igasuguse piiratud ruumi tapakastmiseks. Ühe õlivõõna klõpsuga muutub iga ruum surmaks.",
		weapon_assaultsmg_description = "Kõrge mahutavusega alamkategooria-masinpüstol, mis on kompaktne ja kerge. Mahutab ühes padrunilaadungis kuni 30 kuuli.",
		weapon_combatpdw_description = "Kes ütles, et isiklikud relvad ei võiks olla sõjaväeliste isikkoosseisu väärt? Tänu meie lobistidele, mitte Kongressile. Sisseehitatud summuti.",
		weapon_machinepistol_description = "See täisautomaatne relv on nagu toniseeriv trumm: ükski sõidukite möödalend ei kõla hästi ilma selleta.",
		weapon_minismg_description = "Selle populaarsus on kasvanud, sest turundusmeeskond hakkas vaatama kaugemale spetsiaalüksuste ühikutest ja hakkas hoolima ka vähekindlustatud piirkondade elanikest.",
		weapon_raycarbine_description = "Vabariikliku Kosmose Rangeri eriväljaanne. Kui soovite muuta väikest rohelist meest väikeseks roheliseks plögaks, siis see on ainus Ameerika viis seda teha.",

		weapon_pumpshotgun_description = "Standardne püssikahur, ideaalne lühima vahemaa võitlemiseks. Kõrge kuulide hajutus kompenseerib tema madalamat täpsust pikal distantsil.",
		weapon_pumpshotgun_mk2_description = "Asi, mis pumpab rohkem kui tegutsemist, on tagasilöök, mis on peaaegu sama surmav kui lask.",
		weapon_sawnoffshotgun_description = "Ühekordse, saetud püssikahuri ammukapatsiteeti ja lühikest ulatust kompenseerib jõhkralt tõhusus lähivõitluses.",
		weapon_assaultshotgun_description = "Täisautomaatne püssikahur 8 patrooniga magasiniga ja kõrge tulekiirusega.",
		weapon_bullpupshotgun_description = "Enam kui tasub ära oma aeglast pumba-tule kiirust ulatuse ja hajutusega. Purustab kõik, mis jääb selle kuulide tee peale.",
		weapon_musket_description = "Relvastatud ainult musketide ja ülbusega, vallutasid britid üle poole maailmast. Omage relva, mis ehitas Briti impeeriumi.",
		weapon_heavyshotgun_description = "Relv, millele tuleb haarata, kui te tõesti vajate toa kohutavaks segaduseks muutmist. Parim kasutada ainult kergesti pühitavatel pindadel.",
		weapon_dbshotgun_description = "Tee üks asi, tee seda hästi. Kes vajab kiiret tulekiirust, kui teie esimene lask muudab teise tüübi peene veega?",
		weapon_autoshotgun_description = "Kui palju tõhusaid vahendeid meeleavalduste kontrollimiseks saate pükstesse peita? OK, kaks. Kuid see on teine.",
		weapon_combatshotgun_description = "On ainult üks poolautomaatne kahur, mille tulekiirus paneb LSFD häirekellad helisema, ja seda vaatate teie.",

		weapon_assaultrifle_description = "Sellel standardsetel automaatrelvadel on suur mahutavus ja pikkulaskmistäpsus.",
		weapon_assaultrifle_mk2_description = "Kõigi aegade klassiku revideerimine - vaid natukene tööd ja välimus võib lõpuks tappa.",
		weapon_carbinerifle_description = "Ühendades kaugeulatusliku täpsuse kõrge mahutavusega ajakirjaga, võib Carbini relva usaldada tabamusele.",
		weapon_carbinerifle_mk2_description = "See on käsitööna valmistatud eritellimusel soetatud jõud: te ei saaks sihikindlalt rohkem kuule kui oleks käsi kõhtu panna ja ükshaaval laadida.",
		weapon_advancedrifle_description = "Kõige kergem ja kompaktsem ründeriifleidest ilma täpsuse ja tulekiiruse ohverdamata.",
		weapon_specialcarbine_description = "Täpsuse, manööverdusvõime, tulejõu ja väikese rekoiili kombineerimisel on see uskumatult mitmekülgne rünnakrifle igaks võitlusolukorraks.",
		weapon_specialcarbine_mk2_description = "Kõikvõimas relv on saanud olulise täienduse: peate alluma meistrile.",
		weapon_bullpuprifle_description = "Viimane Hiinast imporditud relv, mis vallutab Ameerika, on tuntud oma tasakaalustatud käsitsemise poolest. Kergekaaluline ja väga kontrollitav automaatse tule puhul.",
		weapon_bullpuprifle_mk2_description = "Nii täpne, nii oivaline, et see pole mitte niivõrd kuulide romantiline vihm kui pigem sümfoonia.",
		weapon_compactrifle_description = "Poole väiksem, kogu jõud ja kahekordne rekoiil: see pole riskantne viis öelda \"ma kompenseerin midagi\".",
		weapon_militaryrifle_description = "See tohutu võimsusega rünnakpüss oli mõeldud kõrgelt kvalifitseeritud ja erakordselt osavatele sõduritele. Jah, sa saad selle osta.",
		weapon_heavyrifle_description = "Raskem tähendab paremat, eks? Jah, lähme sellega.",
		weapon_tacticalrifle_description = "Selle hooaja must-have riistvara õiguskaitseametnikele, sõjaväelastele ja kõigile, kes on kinni võitluses surmavalt kas õiguskaitse- või sõjaväelastega.",
		weapon_battlerifle_description = "Kohtuge Võitlusvintpüssiga, FN FAL-i usaldusväärsuse ja Heckler & Koch G3 täpsuse fusion. Vepr 7.62x54r relvaga sarnase salvestiga, on see teie valik jõu ja täpsuse saavutamiseks lahinguväljal.",

		weapon_mg_description = "Üldotstarbeline kuulipilduja, mis ühendab vastupidava disaini usaldusväärse jõudlusega. Suur ulatuslik läbitungiv jõud. Väga efektiivne suurte gruppide vastu.",
		weapon_combatmg_description = "Kerge, kompaktne kuulipilduja, mis ühendab suurepärase manööverdamisvõime kõrge tulekiirusega ja hävitavate tagajärgedega.",
		weapon_combatmg_mk2_description = "Teil ei saa kunagi olla liiga palju heast asjast: kui esimene lask loeb, siis järgmised sada või rohkem peavad lugema kahekordselt.",
		weapon_gusenberg_description = "Täiendage oma stiili keelatud relvaga. Näeb suurepärane välja Roosevelt'i aknast välja paistva püssina või koos triibulise ülikonnaga.",

		weapon_sniperrifle_description = "Standardne snaiperi püss. Ideaalne olukordades, mis nõuavad täpsust pikas vahemikus. Piirangud hõlmavad aeglast taaslaadimiskiirust ja väga madalat tulekiirust.",
		weapon_heavysniper_description = "Sisaldab raskete kahjustuste tekitamiseks soomust läbistavaid laskemoone. Tuleb standardse laserkihi abil.",
		weapon_heavysniper_mk2_description = "Kaugele, kuid alati lähedane: kui otsid kindlat tuge pika vahemaa suhtele, siis see on see.",
		weapon_marksmanrifle_description = "Olenemata sellest, kas olete lähedal või kaugel, saab selle relvaga töö kiirelt ja tõhusalt tehtud. Mitmekülgne relv erinevateks vajadusteks.",
		weapon_marksmanrifle_mk2_description = "Tuntud sõjaväe ringkondades kui \"Lammutaja\", see modikomplekt hävitab nii sihtmärgi kui ka su õla, selles järjekorras.",
		weapon_precisionrifle_description = "Täpsusele orienteeritud püss ideaalsetele tabamustele. Kes tahab piirduda vaid otsaette tabamisega, kui saab tabada ka läbi aju vabatahtliku liigutust reguleerivast ajupiirkonnast?",

		weapon_rpg_description = "Kaasaskantav ja õlalt tulistatav anti-tanvõitleja, mis tulistab plahvatuslikke pomme. Väga efektiivne sõidukite või suurte rühmade vastu võitlemisel.",
		weapon_grenadelauncher_description = "Kompaktne, kergesti kaasaskantav granaadiheitja poolautomaatse funktsiooniga. Mahutab kuni 10 padrunit.",
		weapon_grenadelauncher_smoke_description = "\"Sul suitsugranaat, sul suitsugranaat, sul suitsugranaat!\" - Oprah",
		weapon_minigun_description = "Hävitav 6-osalise toruga kuulipilduja, mis sisaldab Gatling-stiilis pöörlevaid torusid. Väga kõrge tulekiirusega (2000 kuni 6000 padrunit minutis).",
		weapon_firework_description = "Pange välgatus tagasi sädetesse selle ilutulestikuheitjaga, mis garanteerib publiku poolt \"ooh\" ja \"aah\" hüüete tõusu.",
		weapon_railgun_description = "Kõik, mida sa vajad teada, on seda, et see kasutab magneteid, mis teevad õudseid asju asjadele, mille suunas see suunatud on.",
		weapon_hominglauncher_description = "Infrapuna- ja sihitud tulejuhtimissüsteemiga raketiheitja. Sobilik kõikide liikuvate sihtmärkide jaoks.",
		weapon_compactlauncher_description = "Fookusgrupid leidsid, et tavalist mudelit peeti liiga täpseks ja keeruliseks kasutada sõiduki kiiruse hoidmisel. Lihtne lahendus.",
		weapon_rayminigun_description = "Vabariiklasest kosmoserangerite erimudel. JAH, MA KOMPENSEERIN MIDAGI. PROOVI KUI JULGED.",
		weapon_emplauncher_description = "Lase seda droonidele ja helikopteritele, et neid uniseks teha.",
		weapon_stinger_description = "Õlal kantav pinnalt-õhku raketiheitja vaenulike lennukite hävitamiseks.",
		weapon_railgunxm3_description = "Kõik, mida pead teadma - magnetid ja see teeb kohutavaid asju, millele see suunatud on.",
		weapon_snowlauncher_description = "Lumepallide laskur: Talv muutub lumepallide lahinguks. Inspiratsiooni on saadud M79 granaadiheitjast, mida on mänguliselt muudetud jõulupidude jaoks mõeldud lumepallide tulistamiseks. Valmistu lumiste seikluste jaoks!",

		weapon_grenade_description = "Standardne killustatud granaat. Tõmba pulk välja, viska ja leia varjupaik. Ideaalne sissetungijate rühmatest vabanemiseks.",
		weapon_bzgas_description = "Kasuta inimestele, keda sa ei salli, ruumis suitsutamiseks.",
		weapon_molotov_description = "Lihtne, kuid tõhus süütav relv. Selle kokteiliga kipub õhtu kiirelt läbi saama.",
		weapon_stickybomb_description = "Plastmassist lõhkeainega laetud pomm, millel on kaugjuhtimisega plahvatusseadis. Võib visata ja seejärel plahvatada või kinnitada sõidukile ja seejärel plahvatada.",
		weapon_proxmine_description = "Jäta oma sõpradele kingitus nende liikumisanduritega maamiinidega. Lühike viivitus pärast aktiveerimist.",
		weapon_snowball_description = "Ole valvas ja valmis oma meeskonna jaoks sõbraliku lumepalli viskamiseks, kuid ole hoiatatud, need jääkülmad tegelased võivad olla ohtlikud.",
		weapon_pipebomb_description = "Pea meeles, et see ei loe kui IED, kui sa ostad selle poest ja kasutad seda esimese maailma riigis.",
		weapon_ball_description = "Allkirjastatud Babe Ruthi poolt, kindlasti mitte võltsitud.",
		weapon_smokegrenade_description = "Küüslauguga gaasigranaat, eriti tõhus mitme ründaja kahjutuks tegemisel. Pikaajaline kokkupuude võib olla surmav.",
		weapon_flare_description = "Viska õhukasteks.",
		weapon_acidpackage_description = "Hapepakend. Kasuta seda segaduse tekitamiseks.",

		weapon_petrolcan_description = "Jätab järel endast bensiiniraja, mida saab süüdata.<br><br>Bensiini kogus järele jäänud: ${petrolAmount}%.",
		gadget_parachute_description = "See nailonsportlaskäimistega langevari on varustatud ram-air parafooliga, mis tagab suurema suuna- ja kiirusekontrolli.",
		weapon_fireextinguisher_description = "Tulekustuti ehk \"Suitsemasin\".",
		weapon_hazardcan_description = "Gaasikanistri moodi asi, kuid kasutu.",
		weapon_fertilizercan_description = "Vana hea sõnnikuplekk, midagi paremat teie põllukultuuride jaoks pole.",
		weapon_hackingdevice_description = "See on väike käes hoitav seade, mis põhineb tugevalt metalliotsijal, kuid millel on ka antenn ja asendatud nupud.",

		red_parachute_description = "Nagu tavaline langevari, kuid punane.",
		blue_parachute_description = "Nagu tavaline langevari, kuid sinine.",
		black_parachute_description = "Nagu tavaline langevari, kuid must.",

		-- NOTE: Addon weapons
		weapon_addon_huntingrifle = "Jahipüssi lisavarustus",
		weapon_addon_huntingrifle_description = "Teie valikjärgne püss jahtimiseks.",

		weapon_addon_vfcombatpistol = "VF võitluspüstol",
		weapon_addon_vfcombatpistol_description = "Naeratage ja oodake hetke.",

		weapon_addon_dp9 = "D&P 9-püstol",
		weapon_addon_dp9_description = "12 võimalust püüda Dub'i kinni.",

		weapon_addon_dutypistol = "SIG Sauer P226",
		weapon_addon_dutypistol_description = "Algupärane traadita kodukaitse süsteem.",

		weapon_addon_gardonepistol = "Gardone püstol",
		weapon_addon_gardonepistol_description = "Kui olete kahevahel, tühjendage ajakiri.",

		weapon_addon_endurancepistol = "Vastupidavuse püstol",
		weapon_addon_endurancepistol_description = "Püssirohi käepidemel",

		weapon_addon_sentinelshotgun = "Sõnumitooja püss",
		weapon_addon_sentinelshotgun_description = "Ühesuunaline mõrvad jagav seade.",

		weapon_addon_sentinelbbshotgun = "Sipelgashotgun",
		weapon_addon_sentinelbbshotgun_description = "Kotte täis lõbu.",

		weapon_addon_stungun = "Poolkontakte taser",
		weapon_addon_stungun_description = "Põnev lõbu kogu perele!",

		weapon_addon_mp9 = "B&T MP9",
		weapon_addon_mp9_description = "Väike ja kiire, natuke nagu inimene, kes seda hoiab...",

		weapon_addon_rc4 = "Remington R4-C",
		weapon_addon_rc4_description = "Vägivaldne ja kiire, ideaalne partner oma rühmas. Niikaua kui seda ei hoia punapea.",

		weapon_addon_mcx = "SIG MCX",
		weapon_addon_mcx_description = "Tuntud oma kohanemisvõime ja täpsuse poolest, SIG MCX on mitmekülgne tulirelva, mis pakub enneolematut usaldusväärsust ja jõudlust igas olukorras.",

		weapon_addon_m9a3 = "Beretta M9A3",
		weapon_addon_m9a3_description = "Kõik, mida vajad oma mustade tegude saavutamiseks odavalt.",

		weapon_addon_357mag = "357 Magnum",
		weapon_addon_357mag_description = "Alates liikluse peatustest kuni zombideni, see revolver on šeriffi parim sõber.",

		weapon_addon_m870 = "Remington M870",
		weapon_addon_m870_description = "Ideaalne spordi- ja jahipüss, kuigi Dannyste laskmine pole tegelikult sport... või on?",

		weapon_addon_tacknife = "Ultimate taktikaline nuga",
		weapon_addon_tacknife_description = "Lõpuks jõudsite tasemele 100. Krahv oleks uhke.",

		weapon_addon_reaper = "Lõikur",
		weapon_addon_reaper_description = "Machete, aga uhkemas stiilis.",

		weapon_addon_berserker = "Berserker",
		weapon_addon_berserker_description = "Laheda kirvega.",

		weapon_addon_stidvc = "STI DVC 2011",
		weapon_addon_stidvc_description = "Tulevik on nüüd siin, vanamees! Lihtsalt väiksema kaliibriga.",

		weapon_addon_g36c = "Heckler & Koch G36C",
		weapon_addon_g36c_description = "Põhjamaade mõõdud koos 5,56 mm NATO kaliibriga. Arendatud erioperatsioonideks politseis ja sõjaväelises erijõududes.",

		weapon_addon_vandal = "RGX Vandal",
		weapon_addon_vandal_description = "Valorant pog.",

		weapon_addon_ak74 = "AK-74",
		weapon_addon_ak74_description = "jää kasutama või plaksuta käsi.",

		weapon_addon_p320b = "P320",
		weapon_addon_p320b_description = "Me ei ole enam Londonis, bruv.",

		weapon_addon_mk18 = "MK18",
		weapon_addon_mk18_description = "\"Hoia end relvastatuna või saad lüüa\" - George Washington (tõenäoliselt)",

		weapon_addon_glock = "Glock 19X",
		weapon_addon_glock_description = "Maailma populaarseim käsiase.",

		weapon_addon_colt = "Colt 1851 Navy",
		weapon_addon_colt_description = "Algupärane revolver, see, mis kõik alguse sai.",

		weapon_addon_hk433 = "H&K 433",
		weapon_addon_hk433_description = "H&K 433 on 2009. aastal Heckler & Kochi poolt välja töötatud saksa rünnakpüss.",

		weapon_addon_m6ic = "LWRC M6IC",
		weapon_addon_m6ic_description = "Täiuslik relv täiuslikule inimesele, lihtsalt ära unusta dressipükse.",

		weapon_addon_hk416 = "H&K 416",
		weapon_addon_hk416_description = "H&K 416, tulirelvade Ferrari - terav, võimsa ja garanteeritud tähelepanu äratav. See on justkui isiklik treener sinu päästikusõrmes, pakkudes tulemusi, mis muudavad su vaenlased kadedaks. Tere tulemast oma uue BFF-i (Parima Tulerelva Sõbra) juurde!",

		weapon_addon_680 = "Remington 680",
		weapon_addon_680_description = "Remington 680 on pumpputoiminen haulikko, joka kehitettiin Remington Arms-yrityksessä vuonna 1950.",

		weapon_addon_honey = "Meemäger",
		weapon_addon_honey_description = "AAC Honey Badger PDW on isikukaitse relv, mida sageli kasutatakse summutiga konfiguratsioonis ning see põhineb AR-15-l. Selle kaliiber on .300 AAC Blackout ja seda toodeti algselt ettevõtte Advanced Armament Corporation (AAC) poolt.",

		weapon_addon_glock18c = "El inventario del jugador está lleno.",
		weapon_addon_glock18c_description = "Fucking used for sawing shit off of other shitty things.",

		weapon_addon_1911 = "1911 Kimber Tactical",
		weapon_addon_1911_description = "1911 Kimber Tactical: Kus stiil kohtub sisuga. Usaldatud entusiastide poolt kõikjal, see on sinu valik kaitsmiseks ja laheduseks!",

		weapon_addon_svd = "SVD Dragunov",
		weapon_addon_svd_description = "Täpsus ja võimsus, SVD Dragunov on poolautomaatne snaiperivintpüss, mis on olnud aastakümneid sõjaväe- ja õiguskaitseüksuste lahutamatu osa. See on ideaalne valik pikaulatuslike lahingute jaoks ning garanteerib, et su vaenlased mõtlevad kaks korda, enne kui sind konflikti astuvad.",

		weapon_addon_axmc = "AXMC",
		weapon_addon_axmc_description = "AXMC on snaiferrelva tipptasemel insenerimeistriteos, pakkudes erakordset pikaulatuslikku täpsust ning mudulaarset disaini, mis seatakse täpsuslaske standardiks.",

		weapon_addon_6kh4 = "6KH4",
		weapon_addon_6kh4_description = "Kaasaegsele jahimehele loodud see 6KH4 bajonettnuga ühendab ajatu disaini tugeva funktsionaalsusega, täiuslik täpsuse nõuetele vastav looduslikus keskkonnas.",

		weapon_addon_jericho = "Jericho 941",
		weapon_addon_jericho_description = "Jericho 941 eristub oma usaldusväärsuse, täpsuse ja ergonoomilise disaini poolest, pakkudes laskuritele ülimat kogemust nii sooritusvõime kui mugavuse osas.",

		weapon_addon_fn509 = "FN-509",
		weapon_addon_fn509_description = "FN-509 on tasakaalu ja täpsuse meistriklass, varustatud 15 padrungiga, tagamaks usaldusväärsust ja täpsust igas lasus. Usaldusväärne kaaslane kaitse ja teenistuse jaoks."
	},

	invisibility = {
		invisibility_on = "Lülitati nähtamatus sisse.",
		invisibility_off = "Lülitati nähtamatus välja.",
		invalid_invisibility_mode = "Vigane nähtamatuse režiim. Peab olema 'täis' või 'tavaline'.",
		invisibility_mode_full = "Nähtamatusrežiim on seatud 'täis'. Tavalised töötajad ei näe sind.",
		invisibility_mode_normal = "Nähtamatusrežiim on seatud 'tavaline'. Tavalised töötajad näevad sind nüüd.",

		toggled_invisibility = "Nähtamatus on edukalt lülitatud kasutajale ${displayName}.",
		failed_invisibility = "Ei õnnestunud kasutaja ${displayName} nähtamatust lülitada.",

		invisibility_logs_title = "Lülitati nähtamatus",
		invisibility_on_logs_details = "${consoleName} lülitas oma nähtamatuse sisse.",
		invisibility_off_logs_details = "${consoleName} lülitas oma nähtamatuse välja.",
		invisibility_other_logs_details = "${consoleName} lülitas kasutaja ${targetConsoleName} nähtamatuse."
	},

	isolation = {
		failed_isolate = "Mängija eraldamine ebaõnnestus.",
		isolate_success_on = "Mängija ${consoleName} edukalt eraldatud.",
		isolate_success_off = "Mängija ${consoleName} eraldamine edukalt peatatud.",

		isolated_logs_title = "Mängija isoleerimine",
		isolated_off_logs_details = "${consoleName} lülitas 'Player Isolation' funktsiooni välja mängijale ${targetName}.",
		isolated_on_logs_details = "${consoleName} lülitas 'Player Isolation' funktsiooni sisse mängijale ${targetName}.",
		isolated = "Sa oled isoleeritud."
	},

	items = {
		move_to_repair = "Liiguta siia, et parandada sõidukit.",
		repairing_vehicle = "Parandan sõidukit",
		fix_visual_damage = "Parandan visuaalset kahjustust",
		no_vehicle_nearby = "Ühtegi lähedal asuvat sõidukit pole.",
		no_vehicle_seat_nearby = "Sa ei ole sõiduki istme lähedal.",
		bleaching_vehicle_seat = "Pleegitamine sõiduki istmel",
		vehicle_seat_bleached = "Istme edukas pleegitamine.",
		measuring_color = "Värvi mõõtmine",
		color_measurement = "Värvimõõtmine",
		color_measurer_result = "**${primary}** (*${primaryId}*) esmane värv, **${secondary}** (*${secondaryId}*) teisene värv, **${pearlescent}** (*${pearlescentId}*) pärlivärv ning **${wheel}** (*${wheelId}*) velje värv.",
		no_vehicle_in_front = "Sinu ees pole ühtegi sõidukit.",
		using_first_aid_kit = "Kasutan Esmaabikomplekti",
		using_bandages = "Kasutan Sidemeid",
		using_tourniquet = "Tourniqueti kasutamine",
		using_ifak = "Kasutan IFAK'i",
		move_to_wash = "Liiguta siia, et pesta sõidukit",
		vehicle_too_clean = "Sõiduk on liiga puhas, et seda pesta.",
		move_to_put_fake_plate = "Liigutage siia, et panna vale numbrimärk.",
		failed_lockpicking = "Lukuharjutus ebaõnnestus.",
		lockpicking_succeeded = "Lukuharjutus õnnestus.",
		hotwiring_vehicle = "Süütelukklahti rakendamine.",
		lockpick_broke = "Lukk ei avanenud.",
		failed_hotwire = "Sõiduki kuumustamine ebaõnnestus, proovi paremate tööriistadega?",
		unpacking_green_rolls = "Pakkides lahti rohelisi rolle.",
		you_do_not_have_enough_rolling_paper = "Teil pole piisavalt rullpaberit.",
		rolling_joint = "Sigareti keeramine.",
		rolling_joints = "Sigaretirullimine",
		changing_license_plate = "Numbrimärgi vahetus",
		equipping_parachute = "Langevarju varustamine: ${itemName}",
		lockpicking_vehicle = "Auto lukustuse avamine",
		printout_title = "${type} väljatrükk",
		printout_text = "*${text}*",
		illegal_weather_name = "Ilmaprognoosi muutmine ebaseadusliku ilmanimega.",
		equipping_body_armor = "Kehaplaadi varustamine",
		illegal_burger_shot_delivery_item_id = "Burger Shot tellimuse esitamisel vale tootenimega.",
		illegal_lighter_item_id = "Tulemasina kasutamine ebaseadusliku laoseisu korral.",
		unable_to_use_lighter_in_vehicle = "Te ei saa sõidukisse süütevedelikku kasutada.",
		not_possible_in_a_vehicle = "See tegevus pole sõidukis võimalik.",
		just_used_bandage = "Kasutasid just esmaabipakki, oota enne teise kasutamist.",
		just_used_tourniquet = "Kasutasid hiljuti tourniqueti, oota enne teise kasutamist veidi aega.",
		drank_gasoline_death = "Bensiinimürgitus",
		drank_bleach_death = "Valgendimürgitus",
		finished_joint = "Sa lõpetasid oma joint'i.",
		cant_place_here = "Sa ei saa seda siia panna.",

		using_cuffs = "Kasutab käeraudu",
		you_moved_too_fast = "Liikusid liiga kiiresti.",

		failed_burger_shot_delivery = "Ei õnnestunud Burgershoti eine avada.",
		failed_bean_machine_delivery = "Ei õnnestunud Bean Machine'i kohaletoimetamist avada.",
		failed_kissaki_delivery = "Kissaki eine avamine ebaõnnestus.",
		failed_green_wonderland_delivery = "Ebaõnnestus rohelise imedemaa koti avamine.",

		burger_shot_delivery_empty = "Tundub, et see Burgershot'i eine oli tühi.",
		bean_machine_delivery_empty = "See Bean Machine'i kohaletoomine tundub tühi olevat.",
		kissaki_delivery_empty = "See kissaki eine tundub olevat tühi.",
		green_wonderland_delivery_empty = "See roheline imedemaa kott tundus olevat tühi.",

		logs_used_weather_spell_title = "Kasutatud ilmastikuhaldus",
		logs_used_weather_spell_details = "${consoleName} kasutas ilmastikuhaldust koodiga `${itemName}`.",

		you_have_used_jail_card = "Sa kasutasid 'get out of jail card' koodi!",
		you_are_not_in_jail = "Sa ei ole vanglas.",

		stored_map_location = "Kaardi kohta uuendati asukoha andmeid edukalt.",
		failed_location_map = "Kaardi asukoha andmete uuendamine ebaõnnestus.",
		updated_waypoint = "Märgitud kaardi asukoht teekonnal.",

		cleared_map = "Kustutati kaardi salvestatud asukohad.",
		failed_clear_map = "Kaardi asukoha kustutamine ebaõnnestus.",
		clear_map_invalid_slot = "Vigane inventari koht."
	},

	jackpot = {
		press_to_deposit = "Vajuta ~INPUT_REPLAY_SHOWHOTKEY~, et sissemakse teha Online Jackpoti.",
		can_only_withdraw_at_casino = "Sul on võimalik raha välja võtta ainult kasiinos.",

		took_jackpot_fees = "Võeti jackpoti tasud. Eemaldatud ${removedTotalItems} eset, mille väärtus on $${removedTotalWorth} ${inventories} inventaridest.",

		jackpot = "Jackpot",
		inventory = "Inventar",
		history = "Ajalugu",
		bet = "Panus",
		your_chance = "Võimalus: ${chance}%",
		pot = "Pott: $${pot}",
		items = "Esemed: ${items}",
		time = "Aeg: ${time} sek",
		chatters = "Vestlejaid: ${chatters}",
		send_a_message = "Saada sõnum...",
		bet_placed = "${name} panustas ${count} ese(me)t väärtusega $${worth}.",
		bet_item = "${amount}x ${name} ($${worth})",
		value = "Väärtus: $${value}",
		total_items = "Kokku esemeid: ${totalItems}",
		withdraw = "Võta välja (${amount})",
		transfer = "Ülekanne (${amount})",
		quick_sell = "Kiirmüük ($${worth})",
		storage_fee_warning = "Iga päev kell 6 UTC eemaldatakse esemeid, mis moodustavad >= 5% sinu koguvarastuse väärtusest 'hoiutasu' raames.",
		item_with_worth = "${label} ($${worth})",
		select_all = "Vali kõik",
		deselect_all = "Tühista valik",
		bet_with_amount = "Panus ($${amount})",
		close = "Sulge",
		no_items_in_inventory = "Paistab, et Sul ei ole virtuaalses inventaris esemeid.",
		deposit_at_casino = "Saate esemeid hoiustada kasiinos.",
		sort = "Sordi",
		player_won_pot = "${name} võitis ${amount} $ ${chance}% tõenäosusega ${timeAgo} tagasi.",
		the_ticket_was = "Pilet oli ${ticket}.",
		recent_pots_will_show_here = "Uusimad potid kuvatakse siin.",
		server_id = "Serveri ID, kuhu soovid üle kanda...",
		transfer_items_to_anoter_person = "Kanna esemed üle teisele isikule.",
		cancel_bet = "Tühista panus"
	},

	jail = {
		press_to_leave_jail = "Vajutage ~INPUT_CONTEXT~, et lahkuda vanglast.",
		invalid_server_id = "Vigane serveri ID.",
		failed_check_jail = "Vangla aja kontroll ebaõnnestus.",
		check_not_jailed = "Seda mängijat pole vanglasse pandud.",
		remaining_time_check = "${fullName} on vanglas veel ${remaining}.",
		invalid_operation = "Vigane toiming. Peab olema kas `add` või `sub`.",
		invalid_amount = "Vigane summa. Peab olema üle 0 ja alla või võrdne 5-ga.",
		failed_modify_jail = "Vangla aja muutmine ebaõnnestus.",
		modified_jail = "Muudeti vangla aega mängijale ${fullName}. Nende uus vangla aeg on ${remaining}.",

		trigger_lockdown = "Käivita Lukustus",
		press_trigger_lockdown = "[${InteractionKey}] Käivita Lukustus",
		lockdown_active = "Valitsuse lukustus aktiivne",
		lockdown_title = "[Edastamine]",
		lockdown_detals = "10-78, Lukustus algatatud Bolingbroke vanglas. Palutud erakorraline tugi.",

		menu_title = "Vangla menüü",
		check_remaining_time = "Kontrolli järelejäänud aega",
		leave_city = "Lahku linnast",
		leave_jail = "Lahku vanglast",
		close_menu = "Sulge menüü",

		sentence_reduced = "Teie karistus vähenes ${amount} kuu võrra, teil on jäänud ${remaining} kuud.",
		sentence_increased = "Sinu karistust suurendati ${amount} kuu võrra, sul on jäänud ${remaining} kuud.",
		sentence_over = "Teie lause on lõppenud.",
		remaining_time_fmt = "${months} kuud (*${display}*)",
		remaining_time = "Jäänud aeg: ${remaining}.",
		jailed = "Sind on vangi mõistetud ${amount}.",

		mission_help_1 = "Vajuta ~INPUT_CONTEXT~ puhastamiseks põrandat.",
		mission_help_2 = "Vajuta ~INPUT_CONTEXT~ söömiseks midagi.",
		mission_help_3 = "Vajuta ~INPUT_CONTEXT~, et treenida.",

		mission_1 = "Põranda koristamine.",
		mission_2 = "Võileiva söömine.",
		mission_3 = "Treenimine.",

		preparing_food = "Valmistad toitu teistele vangidele.",
		prepare_food = "Vajuta ~INPUT_CONTEXT~, et toitu valmistada.",
		cleaning_desk = "Laua puhastamine.",
		clean_desk = "Vajuta ~INPUT_CONTEXT~, et lauda puhastada.",
		making_bed = "Voodi tegemine.",
		make_bed = "Vajuta ~INPUT_CONTEXT~, et voodit teha.",
		aligning_cone = "Tõkkekonede joondamine.",
		align_cone = "Vajuta ~INPUT_CONTEXT~, et liigutada liiklusmärki.",
		inspecting_sprinkler = "Vaatad niisutajat.",
		inspect_sprinkler = "Vajuta ~INPUT_CONTEXT~, et niisutajat vaadata.",
		watering_plant = "Kastad taime.",
		water_plant = "Vajuta ~INPUT_CONTEXT~, et taime kasta.",
		organizing_weights = "Korraldad raskused.",
		organize_weights = "Vajuta ~INPUT_CONTEXT~, et raskusi korraldada.",

		upstairs_notification = "See ülesanne on teisel korrusel.",

		mission_blip = "Vangla missioon",

		modify_jail_logs_title = "Muudetud vangla aeg",
		modify_jail_logs_details = "${consoleName} muutis vangla aega kasutajale ${targetCharacter} #${targetCharacterId} (${operation} ${amount} kuud) kuni ${after}.",
		triggered_lockdown_logs_title = "Lukustus aktiveeritud",
		triggered_lockdown_logs_details = "${consoleName} aktiveeris vangla lukustuse."
	},

	kiosks = {
		read_catalog = "Vajutage ~g~${InteractionKey} ~w~, et kataloogi lugeda"
	},

	lag = {
		fake_lag_invalid_fps = "Vigane kaadrisagedus.",
		fake_lag_clamp = "Limiitimine kaadrisageduse alla ${fps}.",
		fake_lag_disabled = "Valeviide on keelatud."
	},

	lag_switch = {
		you_seem_to_be_lagging = "Teie ping on ebastabiilne. Tulistatud kuuli ei sünkroniseeritud.",

		lag_detected_logs_title = "Lag tuvastatud",
		lag_detected_logs_details = "${consoleName} üritas tulistada, kui oli lüüasaamine. Ping vahe: ${pingTimerDifference}. Ebastabiilne ping: ${pingUnstable}."
	},

	lean = {
		press_to_sell_lean = "Vajuta ~INPUT_CONTEXT~, et müüa lean'i.",
		local_not_interested = "Kohalik ei paista hetkel huvitatud olevat.",
		not_interested = "See kohalik ei tundu sinu lean'ist huvitatud olevat.",
		selling_lean = "Leani müük.",

		no_lean = " Sul ei ole ühtegi lean'i.",
		no_jolly_ranchers = " Sul ei ole ühtegi jolly rancheri.",
		press_to_mix_lean = "[${SeatEjectKey}] Sega lean jolly rancheritega.",
		mix_menu = "Sega Lean",
		mix_with = "Sega ${maitse} maitsega.",
		close_menu = "Sulge menüü",
		mix_failed = " Lean'i segamine jolly rancheritega ebaõnnestus.",

		mixed_with = "${flavor} lisandiga",
		mixed_with_label = "Lean (${flavor})",
		mixing = "Lean'i segamine",

		sold_lean_logs_title = "Steel Fucking File",
		sold_lean_logs_details = "Used for fucking filing things. Not your goddamn taxes though."
	},

	leashes = {
		press_to_use_leash = "[${InteractionKey}] Kasutage rihma",
		putting_leash_on = "Panen rihma peale.",
		press_to_take_leash_off = "[${InteractionKey}] Võtke rihm maha",
		takeing_leash_off = "Võtan rihma maha."
	},

	letterboxes = {
		press_to_access = "Vajuta ~g~${SeatEjectKey}  ~w~, et ligipääsu saada ${type}ile",
		letterbox_broken = "${type} on katki.",

		type_letterbox = "postkast",
		type_newsdisp = "uudiste jagaja",
		type_postbox = "kirjakast"
	},

	locate = {
		invalid_filter_value = "Vigane filtriväärtus.",
		locate_failed = "Ei leitud ühtegi selle filtriga ühilduvat objekti: `${filter}`.",
		something_went_wrong = "Ei õnnestunud asukohta leida.",
		locate_success = "Objekti asukoht vastavalt filtreeringule `${filter}` on leitud: (${x}, ${y}, ${z}) (instants = ${instance}).",

		locate_entity_no_permissions = "Üritati leida üksust ilma sobivate õigusteta.",

		locate_entity_logs_title = "Objekti asukoha leidmine",
		locate_entity_logs_details = "${consoleName} püüdis leida objekti tüübist '${filterType}' väärtusega '${filterValue}'."
	},

	login = {
		exit_city = "Lahku linnast.",
		press_to_exit_city = "Vajuta ~g~${InteractionKey} ~w~, et linnast lahkuda.",
		bad_words_in_character_creation = "Üritati luua tegelaskuju, kellel võib olla ebaviisakas sõna kas kasutajanime või tausta kirjelduses: \"${badWords}\"",
		disallowed_words_in_character_name = "Üritati luua tegelaskuju, kelle nimi võib olla ebasobiv: \"${characterName}\"",
		disallowed_birthday_ban = "Üritati luua tegelaskuju, kellel võib olla ebakorrektne sünnipäev: \"${birthday}\"",

		inventory_help_text = "Inventari avamiseks vajuta klahvi ~INPUT_REPLAY_SHOWHOTKEY~.",

		welcome_to = "Tere tulemast",
		press = "Vajuta",
		enter = "ENTER",
		to_join = "liitumiseks",
		in_game_time = "Linna praegune aeg on",
		am = "AM",
		pm = "PM",
		changelogs = "Muudatuste logi",
		fetching_character_data = "Võetakse tegelase andmeid...",
		yes = "Jah",
		no = "Ei",
		exit_game = "Välju mängust",
		are_you_sure_you_want_to_exit = "Olete kindel, et soovite mängust väljuda?",
		exiting_game = "Mängust väljumine...",
		delete_character = "Kustuta",
		select_character = "Vali",
		new_character = "Uus tegelane",
		empty_slot = "Tühi koht",
		male = "Mees",
		female = "Naine",
		name = "Nimi",
		dob = "Sünnikuupäev",
		born = "Sündinud ${dob}",
		gender = "Sugu",
		cash = "Sularaha",
		bank = "Pank",
		story = "Lugu",
		loading_character = "Tegelase laadimine...",
		deleting_character = "Tegelase kustutamine...",
		create_character = "Loo tegelane",
		first_name = "Eesnimi",
		last_name = "Perekonnanimi",
		date_of_birth = "Sünniaeg",
		character_backstory = "Tegelase taustalugu",
		cancel = "tühista",
		complete = "valmis",
		creating_character = "Tegelase loomine...",
		are_you_sure_you_want_to_delete = "Kas olete kindel, et soovite selle tegelaskuju kustutada? Seda toimingut ei saa tagasi võtta.",
		stop_download = "Peata allalaadimine",
		start_download = "Alusta allalaadimist",
		slow_download = "Aeglane allalaadimine",
		regular_download = "Tavaline allalaadimine",
		purchases = "Ostud",
		pledges = "Tõotused",
		packages = "Paketid",
		points = "Punktid",
		appreciated_tier = "Hinnatud tase",
		respected_tier = "Austatud tase",
		heroic_tier = "Kangelaslik tase",
		legendary_tier = "Legendne tase",
		god_tier = "Jumala tase",
		custom_plate = "Kohandatud numbrimärk",
		custom_character_id = "Kohandatud tegelase ID",
		custom_phone_number = "Kohandatud telefoni number",
		reskin = "Ümberkujundamine",
		webstore = "Veebipood",
		none = "Puudub",
		queue_pin = "PIN-kood: ${queuePIN}",
		copied = "Kopeeritud!",
		back = "Tagasi",
		copy_license = "Litsentsi identifikaator",
		copy_license_success = "Kopeeritud!",
		cache_assets = "Puhverda varad",
		download_assets = "Kas soovite alla laadida ja puhverdada serveri enamus varadest? See võib kaasa tuua järgmist:",
		cache_assets_less_lag = "Tõenäoliselt on vähem viivitusi, vähem kaadrite langust ja vähem pingi tõuse mängu ajal. Eriti kui kasutate madala ressursikasutusega arvutit või aeglasemat ühendust.",
		cache_assets_crashes = "Selle protsessi käigus võib mäng kokku kukkuda. Kui see juhtub, kasutage aeglast allalaadimise võimalust.",
		cache_assets_restart = "Kui protsess on lõpetatud, soovitame teil uuesti käivitada oma mäng, kuna see võib põhjustada seansis lagimist.",
		cache_assets_disk = "See võib veidi kinkida kettamahtu, seega veenduge, et teil on piisavalt ruumi. Pärast värskenduse installimist tasub vanade vahemällu talletatud andmete kustutamist kaaluda.",
		vehicles = "Sõidukid",
		objects = "Objektid",
		peds = "NPC-d",
		clothing = "Riided",
		main_menu = "Põhiaken",
		gta_settings = "GTA Seaded",
		discord = "Discord",
		framework = "Raamistik",
		rules = "Serveri Reeglid",
		notice = "Teade",
		language = "Keel",
		support_the_server = "Toetage serverit",
		battle_royale = "Võitlus Kunigriik",
		arena = "Areen",
		queue = "Järjekord",
		queue_position_with_priority = "🐌 Sinu positsioon järjekorras on ${queuePosition}/${queueTotal} prioriteediga ${queuePriorityName}. 🕐${queueTime}",
		queue_position_without_priority = "🐌 Sinu positsioon järjekorras on ${queuePosition}/${queueTotal}. 🕐${queueTime}",
		live_on_twitch = "Kas sul on igav? Vaata neid voogesitajaid!",
		live = "Otse",
		you_are_through = "Sa oled sisse loginud!",
		join_server = "Liitu serveriga",
		tired_of_queueing = "Väsinud järjekorramisest? Toeta meid, et saada järjekorra prioriteeti!",
		joining_battle_royale = "Liitumine lahingurojuga",
		joining_arena = "Liitumine areeniga",
		refresh = "Värskenda",
		refreshing = "Värskendamine...",
		use_train_pass = "Kasuta rongipiletit (${trainPasses})",

		avoid_repeating_letters = "Võimalusel vältige paljusid korduvaid tähti oma ees- ja/või perekonnanimes.",
		backstory_empty = "Sinu taustapilt ei saa olla tühi.",

		missing_character_creation_data = "Puuduvad tegelase loomise andmed.",
		invalid_first_name = "Puuduv või vale Eesnimi (2 kuni 100 tähemärki).",
		invalid_last_name = "Puuduv või vale Perekonnanimi (2 kuni 100 tähemärki).",
		invalid_date_of_birth = "Puuduv või vale sünnikuupäev.",
		weird_date_of_birth = "Proovige valida mõistlik sünnikuupäev.",
		invalid_backstory = "Puuduv või kehtetu taustalugu (max 5,000 märki).",
		backstory_too_short = "Sinu taustalugu on liiga lühike (min ${backstory} tähemärki).",

		invalid_date = "Sünnikuupäev on vigane.",
		date_not_future = "Sünnikuupäev ei saa olla tulevikku kuuluv.",
		date_too_old = "Sinu sünnikuupäev ei saa olla vanem kui 100 aastat.",

		bad_words = "Teie tegelasenime või taustaloo hulgas on mõned halvad sõnad.",
		disallowed_name = "Sinu tegelase nimes on keelatud sõnu.",
		disallowed_birthday = "Sinu sünnikuupäev pole lubatud.",
		numbers_not_allowed = "Tegelase nimes ei ole numbrid lubatud.",
		something_went_wrong = "Midagi läks valesti su tegelase loomisel.",
		character_slot_occupied = "Selle tegelase pesa on juba hõivatud.",
		name_already_taken = "See nimi on juba võetud.",
		illegal_character_slot = "Sa ei saa sellel kohal tegelast luua.",
		character_already_loaded = "Sul on juba tegelane laetud.",

		new_citizen = "Uus kodanik",
		los_santos_police_dept = "LOS SANTOSI POLIITSIOSAKOND",

		welcome_msg_title = "Tere tulemast ${communityName}!",
		welcome_msg = "Oled saanud mõned esemed, et alustamine kergem oleks. Saad kasutada neid oma kiirvalikus vajutades numbriklahve 1-5. \n\nInventari avamiseks vajuta klahvi **${InventoryKey}** või vajuta klahvi **1**, et lugeda oma infotrükist.",

		press_to_go_back_to_menu = "Vajuta ~g~${InteractionKey}~w~, et minna tagasi menüüsse.",
		go_back_to_menu = "Mine tagasi menüüsse.",

		developer = "Arendaja",
		super_admin = "Super Admin",
		staff = "Personal",
		reconnect = "Ühenda uuesti",
		christmas = "Jõulud",
		casino = "Kasiino",
		random = "Juhuslik",
		beginner = "Algaja",
		custom = "Kohandatud",

		job_low = "Madal töö",
		job_medium = "Keskmine töö",
		job_high = "Kõrge töö",

		appreciated_tier = "Hinnatud tase",
		respected_tier = "Austatud tase",
		heroic_tier = "Kangelaslik tase",
		legendary_tier = "Legendne tase",
		godlike_tier = "Jumalik tase",

		buddy_passed_through = "${playerName} kasutas Buddy Pass'i, et sind läbi lükata!",

		queuer_not_found = "Järjekorras olevat mängijat ei leitud.",
		queuer_skipped_queue = "Järjekorras olev mängija jättis järjekorra vahele.",

		slots_set_to = "Serveri kohad on seadistatud väärtusele `${slots}`.",
		slots_already_set_to = "Serveri kohad on juba seadistatud väärtusele `${slots}`.",

		death = "Surm",
		normal = "Tavaline",
		one_life = "Üks Elu",
		one_life_information = "Selle valiku valimine tähendab, et teie tegelasel on ainult üks elu. Kui surete, ilma et oleksite haiglasse viidud, kaotate tegelase.",
		one_life_are_you_sure = "Kas olete kindel, et soovite seda teha?",

		screenshots = "Ekraanipildid",
		start_screenshotting = "Alusta ekraanipiltide tegemist",
		what_is_this_title = "Mis see on",
		what_is_this_text_part_1 = "Paljudes raamistiku funktsioonides meile meeldib kasutada inimeste tegelaskujude kõrge kvaliteediga portreesid.",
		what_is_this_text_part_2 = "Varasemalt saavutasime selle, et oli üks klient, mis oli pidevalt võrgus 24/7, võttis 'töid' ja loob portreid, kui neid küsiti. Kuid see lähenemine oli väga tõrge ja ei võimaldanud hästi skaaluda.",
		help_out_title = "Aita kaasa",
		help_out_text_part_1 = "Portreed genereeritakse nüüd klientide abiga, et tagada skalpeeritavus ja usaldusväärsus.",
		help_out_text_part_2 = "Kui soovid samuti aidata (näiteks kui lähed ära eest), oleks väga teretulnud, kui läheksid siia ja klõpsaksid 'Alusta ekraanipiltide tegemist'. See tuhmistab mängu ja paneb sind ootele, valmis pilte looma.",
		help_out_text_part_3 = "Sul on võimalik igal ajal klõpsata 'lõpeta ekraanipiltide tegemine'.",
		reward_title = "Tasu",
		reward_text_part_1 = "Need, kes aitavad välja, saavad tasu ",
		reward_text_part_2 = " OP-punkti iga loodud pildi eest ning ",
		reward_text_part_3 = " OP-punkti iga tunni eest, mil olete valves.",

		expired = "$200 Shitty Savings Bond",
		upgrade = "A shitty $200 savings bond that represents your fucking commitment to financial security. This shit can be cashed in at participating banks, providing you with a fucking boost to your savings and a fucking step closer to your fucking financial goals.",
		upgrade_pledge = "$500 Shitty Savings Bond",
		upgrade_pledge_information = "A fucking $500 savings bond that serves as a substantial investment in your fucking future. When the fucking time is right, redeem it at a bank to unlock its full fucking value and take a significant goddamn stride toward your financial aspirations.",
		upgrading_following_pledge = "Se vendieron Hongos",
		available_upgrades = "${consoleName} vendió 1x Hongo por $${reward}.",
		cost_points = "Se recogió un Hongo",
		buy = "${consoleName} recogió 1x Hongo.",
		confirm_pledge_upgrade = "Bloqueador de Radio",
		confirm_pledge_upgrade_text = "Entrar Submarino",
		upgrading_pledge = "[${InteractionKey}] Entrar Submarino",

		exiting_login_ui = "Väljun (Sisselogimine)"
	},

	logs = {
		logs_failed = "Logide laadimine ebaõnnestus.",

		close = "Sulge"
	},

	loot = {
		press_to_pick_up = "Vajutage ~INPUT_CONTEXT~, et ${itemLabel} võtta."
	},

	lottery = {
		lottery_announcement = "Lotomängu Teadaanne",
		lottery_about_to_roll = "Võitja loositakse välja 5 minuti pärast tänase loteriiga. Hetkelik auhinnafond on $${totalAmount}, kuhu olete pannud sisse $${betAmount}. Teie võiduvõimalus on ${odds}%.",
		current_lottery_pot = "Hetkeseisuga on kogu potis ${totalAmount} dollarit, millest sina panustasid ${betAmount} dollarit. Sinu võiduvõimalus on ${odds}%.",
		drew_a_lottery_winner = "Lotomängu võitja on välja loositud.",
		roll_lottery_no_permission = "Mängija üritas loterii välja loosida, kuid tal puudus selleks õigus.",
		winner_has_been_picked = "${fullName} võitis loterii poti summas $${totalAmount}! Ta panustas ${betAmount} dollarit ja tema võiduvõimalus oli ${odds}%.",
		claimed_lottery_winnings = "Võiduraha on välja võetud.",
		no_lottery_winnings = "Teil ei ole võitmata loosiraha.",
		internal_server_error = "Sisemine serveri viga ilmnes.",
		use_disabled_animal = "Te ei saa lotot kasutada looma pedina.",

		lottery_log_title = "Võidetud loterii",
		lottery_log_description = "${fullName} (#${characterId}) võitis loterii poti summas $${totalAmount}. Ta panustas ${betAmount} dollarit."
	},

	lucky_wheel = {
		hold_to_spin_lucky_wheel = "Hoia ~INPUT_CONTEXT~, et keerutada õnnelikku ratast. Hind on ${cost} OP-punkti. Tasuta keerutus ${time} pärast.",
		hold_to_spin_lucky_wheel_free_one_left = "Hoia ~INPUT_CONTEXT~, et keerutada Õnnelikku Ratast. Täna on sul veel 1 tasuta keerutus jäänud.",
		hold_to_spin_lucky_wheel_free_multiple_left = "Hoia ~INPUT_CONTEXT~, et keerutada Õnnelikku Ratast. Täna on sul ${spins} tasuta keerutust jäänud.",
		continue_holding_to_spin_lucky_wheel = "Jätka ~INPUT_CONTEXT~ hoimist, et keerutamist jätkata.",
		lucky_wheel_is_occupied = "Õnneloos on praegu hõivatud. Palun oodake.",
		not_enough_op_points = "Vajate õnneliku ratta keerutamiseks ${cost} OP-punkti. Teil on ${points} OP-punkti.",
		used_op_points = "Kasutasite ${cost} OP-punkti. Teil on nüüd jäänud ${points} OP-punkti.",
		casino_company_name = "Teemantkasiino ja Kuurort",
		vehicle_won_tweet = "Keegi lõi just ratastest kulda läbi ja sai kinni haruldase ${modelDisplayName}! Kes on õnnelik võitja? Mine kohe kohale ja võta oma auhind endale.",
		vehicle_is_not_in_cdimage = "See sõiduk ei ole mängufailides.",
		podium_vehicle_set_to = "Podiumisõiduk on seadistatud `${modelLabel}`.",

		logs_lucky_wheel_reward_title = "Õnneloosi auhind",
		logs_lucky_wheel_reward_vehicle_details = "${consoleName} keeras õnneratast ja võitis sõiduki.",
		logs_lucky_wheel_reward_vehicle_given_details = "${consoleName} sai edukalt sõiduki mudeliga `${modelName}`.",
		logs_lucky_wheel_reward_money_details = "${consoleName} keeras õnneratast ja võitis $${amount}.",
		logs_lucky_wheel_reward_chips_details = "${consoleName} keerutas ratast ja võitis $${amount} väärtuses plaate.",
		logs_lucky_wheel_reward_jewelry_details = "${consoleName} keeras õnneratast ja võitis ehte nimega `${itemName}`.",
		logs_lucky_wheel_reward_item_details = "${consoleName} keeras õnneratast ja võitis eseme nimega `${itemName}`.",
		logs_lucky_wheel_reward_queue_priority_details = "${consoleName} on rullinud õnneliku ratta ja võitnud eseme „Rongipass“."
	},

	magazines = {
		issue_id = "Probleemi nr ${issueId}",
		releases_updated = "Väljalasked on uuendatud.",
		no_release_changes = "Väljalaskete muudatusi pole."
	},

	magnifying_glass = {
		searching = "Otsin maad",

		too_fast = "Liigud liiga kiiresti.",
		failed_search = "Ei õnnestunud maaotsingut teha.",
		found_nothing = "Sa ei leidnud siit midagi.",
		already_searched = "Seda piirkonda tundub juba olevat otsitud.",
		found_item = "Leidsid ${item}.",

		press_to_sell_items = "Vajuta ~INPUT_CONTEXT~, et esemeid müüa.",
		no_items_to_sell = "Sul ei ole esemeid müümiseks.",
		menu_title = "Haruldased esemed",
		exit_shop = "Välju poest",
		failed_sell = "Eseme müük ebaõnnestus.",

		found_item_logs_title = "Leitud ese maal",
		found_item_logs_details = "${consoleName} leidis ${item} maalt (${ground})."
	},

	mdt = {
		mdt_title = "Mobiilne andmaterminal",
		loading_reports = "Laaditakse aruandeid...",
		failed_report_load = "Aruannete laadimine ebaõnnestus.",
		no_reports = "Aruandeid pole.",
		loading = "Laadimine...",

		title_placeholder = "Pealkiri",
		body_placeholder = "Minu aruanne..."
	},

	mechanics = {
		move_here_check = "Lihvi kontrollimiseks tule siia",
		checking_upgrades = "Sõiduki uuenduste kontrollimine",
		upgrades_list = "${armor}, ${engine}, ${brakes}, ${transmission}, ${suspension} ja ${turbo}.",

		has_no_turbo = "tal pole paigaldatud turbo",
		has_turbo = "tal on paigaldatud turbo",

		armor_0 = "Ükski kaitseriietus",
		armor_1 = "20% kaitseriietus",
		armor_2 = "40% kaitseriietus",
		armor_3 = "60% kaitseriietus",
		armor_4 = "80% kaitseriietus",
		armor_5 = "100% kaitseriietus",

		brakes_0 = "Tavalised pidurid",
		brakes_1 = "Tänavapidurid",
		brakes_2 = "Sportpidurid",
		brakes_3 = "Võidusõidupidurid",

		transmission_0 = "Tavaline käigukast",
		transmission_1 = "Tänavakäigukast",
		transmission_2 = "Spordikäigukast",
		transmission_3 = "Võidusõidu käigukast",

		suspension_0 = "Tavapärane vedrustus",
		suspension_1 = "Madalam vedrustus",
		suspension_2 = "Tänavavedrustus",
		suspension_3 = "Spordivedrustus",
		suspension_4 = "Võistlusvedrustus",

		engine_0 = "Tavaline mootor",
		engine_1 = "Mootor EMS Tase 2",
		engine_2 = "Mootor EMS Tase 3",
		engine_3 = "Mootor EMS Tase 4",
		engine_4 = "Mootor EMS Tase 5",

		no_nearby_vehicle = "Lähedal ei ole sõidukit.",
		already_checking_upgrades = "Sa juba kontrollid ühe sõiduki häälestusi.",
		engine_is_running = "Sõiduki mootor töötab."
	},

	meow = {
		feed = "[${InteractionKey}] Sööda",
		pet = "[${InteractionKey}] Paita",
		brush = "[${InteractionKey}] Kammi",
		catnip = "[${InteractionKey}] Anna kassimünti",
		treat = "[${InteractionKey}] Anna maiust",
		check_up = "[${InteractionKey}] Ülevaade",

		feed_active = "Toitud Maxwellit",
		pet_active = "Paid Maxwelliga",
		brush_active = "Maxwelli harjamine",
		catnip_active = "Maxwellile kassiheinaga mängimine",
		treat_active = "Maxwellile maiuse andmine",
		check_up_active = "Kontrollin Maxwelli",

		maxwell_appeared = "Maxwell ilmus su lähedusse.",
		maxwell_shot = "Last pihta Maxwellit"
	},

	meth = {
		press_to_sell_meth = "Vajuta ~INPUT_CONTEXT~, et müüa metat.",
		local_not_interested = "Kohalik ei näita praegu huvi.",
		selling_meth = "Müüd metat.",

		sold_meth_logs_title = "Salir Submarino",
		sold_meth_logs_details = "[${InteractionKey}] Salir Submarino"
	},

	microphone_stand = {
		active = "No se ha establecido un destino."
	},

	mining = {
		drill_scan_stone = "[${InteractionKey}] Puuri kivi, [${SeatEjectKey}] Skaneeri kivi",
		scan_stone = "[${SeatEjectKey}] Skaneeri kivi",
		drill_stone = "[${InteractionKey}] Puuri kivi",
		scanning_stone = "Skaneerin",
		drilling = "Puuran",
		failed_drill_stone = "Ebaõnnestus kivi puurimine.",
		drill_no_drops = "See kivi ei sisalda vääriskive.",
		drill_drops = "Leidsid sellest kivist natuke vääriskive.",
		used_drill = "Teie puur on katki.",
		still_shook = "Te olete ikka veel eelmise plahvatuse tõttu vapustatud ega leidnud selles kivis ühtegi vääriskivi.",

		kill_label = "Kaevandamise plahvatus",

		recharging_scanner = "Laadin Scannerit uuesti ${percentage}% ulatuses",
		scanning = "Skannin ${percentage}% ulatuses",

		refine_gemstones = "[${InteractionKey}] Töötle vääriskive",
		refinery = "Töötlemislaud",
		exit_refinery = "Välju töötlemislaualt",
		no_gemstones = "Teil pole ühtegi töötlemata vääriskivi.",
		refining = "Töötlen 1x ${gemstone}",
		refine_success = "Töödeldud 1x ${gemstone}.",
		failed_refine = "Vääriskivi töötlemine ebaõnnestus.",

		craft_rings = "[${InteractionKey}] Valmista sõrmuseid",
		no_crafting_items = "Sul ei ole piisavalt esemeid, et midagi siin valmistada",
		crafting = "Valmistad 1x ${item}",
		crafting_table = "Valmistamise laud",
		crafting_success = "Valmistatud 1x ${gemstone}.",
		failed_crafting = "Eseme valmistamine ebaõnnestus.",
		exit_crafting = "Välju valmistamise lauast",

		engrave_ring = "[${InteractionKey}] Graveeri sõrmuseid",
		no_engrave_items = " Sul pole ühtegi sõrmust.",
		exit_engraving = "Välju graveerimislaualt",
		engraving_table = "Graveerimislaud",
		engraving = "Graveerin ${itemName}",
		engrave_message = "Graveerimise sõnum (max 100 tähemärki)",
		engrave_success = "Sõnum graveeriti edukalt ${itemName}-ile.",
		failed_engrave = "Sõnumi graveerimine ebaõnnestus.",

		no_sellable_items = " Sul ei ole midagi, mida saaks siin müüa.",
		exit_shop = "Välju poodist",
		shop = "Kalliskivipood",
		sell_gemstones = "[${InteractionKey}] Müü kalliskive",
		local_price = "Kohalik hind: $${price}",

		sold_gemstone = "Müüs 1x ${gemstone} eest $${price}.",
		failed_sell_gemstone = "Kalliskivi müük ebaõnnestus.",
		failed_sell_no_item = " Sul ei ole eset, mida sa müüa üritasid.",
		failed_sell_cap = "Müüja ei soovi enam seda eset sinult osta.",

		mining_sold_item_title = "Müüdud kivid",
		mining_sold_item_details = "${consoleName} müüs 1x ${itemName} eest $${price}.",

		mining_crafted_item_title = "Valmistatud ese",
		mining_crafted_item_details = "${consoleName} valmistas 1x ${itemName}.",

		mining_refined_item_title = "Puhastatud kivi",
		mining_refined_item_details = "${consoleName} puhastas 1x ${itemName}.",

		mining_mined_title = "Kaevandatud kivi",
		mining_mined_details = "${consoleName} kaevandas $ {output}.",
		mining_mined_details_nothing = "${consoleName} kaevandas vääriskivi, kuid ei leidnud midagi.",

		mining_exploded_title = "Kaevandamise plahvatus",
		mining_exploded_details = "${consoleName} plahvatas selle ajal, kui püüdis kaevandada vääriskivi.",

		instability_0 = "See vääriskivi on stabiilne.",
		instability_1 = "See vääriskivi on veidi ebastabiilne.",
		instability_2 = "See vääriskivi on ebastabiilne.",
		instability_3 = "See vääriskivi on väga ebastabiilne.",

		exhausted = "Tunned end pika kaevandamise järel väsinuna.",
		very_exhausted = "Tunned end väga väsinuna pika kaevandamise järel."
	},

	miscellaneous = {
		language_unavailable = "Keel ${languageCode} pole hetkel saadaval. Kui soovite selle keele jaoks tõlget luua, liituge OP-FW arendaja Discordi kanaliga rohkema teabe saamiseks siin: ${frameworkDiscord}!",
		same_language = "Teil on juba eelistatud keel ${languageCode}.",
		language_set = "Teie eelistatud keel on kehtestatud ${languageCode}-ks.",
		current_language = "Praegune keel",
		available_language_codes = "Saadaval olevad keelekoodid",
		ping_pong = "Pong!",
		ping_response = "${ping}ms (tagasikutsumise aeg: ${callbackTime}ms)",
		ooc_first_time = "Me näeme, et te pole veel kasutanud /ooc! Enne selle kasutamist tahaksime anda teile väikse hoiatuse. /ooc käsku tuleks kasutada ainult kiireloomulistes olukordades ning kõik mitte-kiireloomulised küsimused või sõnumid tuleks suunata meie Discordi gildi aadressil ${communityDiscord}. Kõik! /ooc kasutamise alustamiseks sisestage /ooc_on. Võite selle uuesti välja lülitada käsu /ooc_off abil.",
		ooc_not_logged_in = "Te ei ole sisse logitud.",
		ooc_timed_out = "Te olete hetkel ajutiselt keelatud OOC jutluses. Palun oodake.",
		ooc_muted_no_reason = "Te olete OOC jutlusest ilma määratletud põhjuseta keelatud.",
		ooc_muted = "Te olete OOC jutlusest keelatud põhjusega '${reason}'.",
		global_ooc_title = "OOC ${playerDescriptor}",
		local_ooc_title = "KOHALIK OOC ${playerDescriptor}",
		ooc_is_disabled = "Te olete globaalse OOC jutluse keelanud.",
		ooc_enabled = "Globaalne OOC on nüüd lubatud.",
		ooc_already_enabled = "Globaalne OOC on juba sisse lülitatud.",
		ooc_disabled = "Globaalne OOC on nüüd välja lülitatud.",
		ooc_already_disabled = "Globaalne OOC on juba välja lülitatud.",
		ooc_local_logs_title = "Kohalik OOC sõnum",
		ooc_local_logs_details = "${consoleName} saatis järgneva sõnumi kohalikus OOC vestluses: `${oocMessage}`.",
		ooc_global_logs_title = "Globaalne OOC sõnum",
		ooc_global_logs_details = "${consoleName} saatis järgneva sõnumi globaalses OOC vestluses: `${oocMessage}`.",
		bad_ooc_message = "Üritati sisestada potentsiaalselt halba sõnumit OOC vestlusesse: \"${oocMessage}\".",
		bad_ped_message = "Katse luua võimalikult halba ped-teadet: \"${pedMessage}\"",
		bad_twitter_post = "Katse luua võimalikult halba Twitteri sõnumit: \"${twitterPost}\"",
		bad_phone_message = "Katse luua võimalikult halba telefoni sõnumit: \"${message}\"",
		user_not_found = "Me ei leidnud kasutajat serveri ID-ga `${serverId}`.",
		player_already_muted = "${consoleName} on juba vaigistatud.",
		player_has_been_muted_no_reason = "${consoleName} on nüüd vaigistatud ilma määratletud põhjuseta.",
		player_has_been_muted = "${consoleName} on nüüd vaigistatud põhjusega: `${reason}`.",
		player_not_muted = "${consoleName} ei ole vaigistatud.",
		player_has_been_unmuted = "${consoleName} on nüüd mõõtmisest vabastatud.",
		ooc_clear_chat_title = "Vestlus kustutatud",
		ooc_clear_chat_details = "${consoleName} tühjendas vestluse kõigi jaoks.",
		muted_player = "Vaigistatud Mängija",
		muted_player_no_reason_details = "${consoleName} vaigistas mängija ${targetConsoleName} põhjuseta.",
		muted_player_details = "${consoleName} vaigistas mängija ${targetConsoleName} põhjusega `${muteReason}`.",
		player_muted = "Mängija vaigistatud",
		player_muted_no_reason_details = "${targetConsoleName} vaigistati ${consoleName} poolt põhjuseta.",
		player_muted_details = "${targetConsoleName} vaigistati ${consoleName} poolt põhjusega `${muteReason}`.",
		muted_self = "Vaigistatud ise",
		muted_self_no_reason_details = "${consoleName} vaigistas ennast ilma põhjuseta.",
		muted_self_details = "${consoleName} vaigistas end põhjusega `${muteReason}`.",
		unmuted_self = "Lõpetas vaigistuse ise",
		unmuted_self_details = "${consoleName} lõpetas iseenda vaigistamise.",
		unmuted_player = "Lõpetatud vaigistus mängijal",
		unmuted_player_details = "${consoleName} lõpetas mängija ${targetConsoleName} vaigistamise.",
		player_unmuted = "Mängija vaigistus lõpetatud",
		player_unmuted_details = "${targetConsoleName} vaigistus lõpetati kasutaja ${consoleName} poolt.",
		ooc_cancelled_same_as_last = "Teie OOC sõnum tühistati, kuna saatsite kaks identset sõnumit järjest.",
		use_measurement_metric = "Olete seadistanud eelistatud mõõtühikuks meetrilised ühikud.",
		use_measurement_imperial = "Olete seadistanud eelistatud mõõtühikuks imperiaalsed ühikud.",
		use_measurement_default = "Kasutate nüüd locale vaikimisi mõõtühikuid.",
		already_using_metric_measurement = "Olete juba seadistanud meetrilised ühikud oma eelistatud mõõtühikuks.",
		already_using_imperial_measurement = "Olete juba seadistanud imperiaalsed ühikud oma eelistatud mõõtühikuks.",
		already_using_default_measurement = "Te kasutate juba piirkonna vaikimisi mõõtesüsteemi.",
		no_copyright = "Autoriõigus puudub",
		no_copyright_warning = "Tere! Kas olete voogesitaja või sisuloome, kus DMCA ja autoriõiguse nõuded on probleemiks? Kui jah, soovitame sisse lülitada käsu `${noCopyrightCommand}`, et me saaksime lõpetada teatud autoriõigusega kaitstud materjalide kuvamise ja mängimise mängus. See funktsioon hakkab tööle kohe, kui selle aktiveerite.",
		no_copyright_enabled = "'Autoriõigus puudub' funktsioon on lubatud.",
		no_copyright_disabled = "'No Copyright' funktsioon on keelatud.",
		server_tps = "Serveri TPS",
		server_tps_response = "${tps}",
		license_copied = "Luba kopeeritud edukalt lõikelauale.",
		uptime = "Lülitusaeg: ${uptime}",
		empty_search = "Teie otsing on tühi.",
		no_player_matching = "Otsingule ei vastanud ühtegi mängijat: *${search}*.",
		whois_player = "Leiti mängija *${name}*, kes vastab teie otsingule.",

		picture_no_url = "Puuduv URL.",
		picture_invalid_url = "URL on vale, see peab algama https://.",
		picture_no_description = "Puuduv kirjeldus.",
		picture_failed = "Pildi loomine ebaõnnestus.",

		auto_run_already_set_to = "Auto-run on juba määratud kontrollile ${controlId}.",
		auto_run_already_unset = "Automaatse jooksmise funktsioon on juba keelatud.",
		auto_run_set_to = "Automaatse jooksmise funktsioon on seadistatud kontrollile ${controlId}.",
		auto_run_unset = "Automaatse jooksmise funktsioon on nüüd keelatud.",

		walk_forwards_success = "Käimasoleva tegelase ${displayName} kõnni funktsioon edukalt vahetatud.",
		walk_forwards_failed = "Ei õnnestunud vahetada käimasoleva tegelase ${displayName} kõnni funktsiooni.",

		info_invalid_job = "Vigane ametikoht",
		info_title = "Lisage see teave veateadetesse",
		info_character = "**Tegelase ID**: *${id}*",
		info_job_data = "**Ametikoha andmed:** *${job}* - ${palgapäev}",
		info_job_data_none = "**Tööandmed:** *Puudub*",
		info_licenses = "**Load:** *${licenses}*",
		info_licenses_none = "**Load:** *Puudub*",
		info_timestamp = "*Ajatempel - ${time}*"
	},

	money = {
		invalid_amount = "Kehtetu summa.",
		something_went_wrong = "Midagi läks valesti.",
		not_enough_cash = "Sul pole piisavalt sularaha.",
		not_close_enough = "Sa pole piisavalt lähedal mängijale.",
		user_not_available = "Kasutaja pole saadaval.",

		givecash_success = "Andsite kasutajale  ${displayName} summa $${amount}.",

		give_cash_title = "Rahakande teostamine",
		give_cash_details = "${consoleName} kandis üle $${amount} kasutaja kontole ${targetConsoleName}."
	},

	moonshine = {
		fill_chamber = "[${InteractionKey}] Täida kammer",
		collect_moonshine = "[${InteractionKey}] Kogu moonshine",
		fermenting = "Fermentatsioon ${percentage}%",
		filling_chamber = "Täitmisruum",

		not_enough_items = "Teil ei ole piisavalt esemeid, et täita täitmisruum.",
		something_went_wrong = "Midagi läks valesti.",
		failed_fill = "Täitmisruumi täitmine ebaõnnestus.",
		failed_empty = "Kuuvalguse kogumine ebaõnnestus.",

		press_to_sell_moonshine = "Vajutage ~INPUT_CONTEXT~, et müüa kuuvalgust.",
		local_not_interested = "Kohalik ei paista hetkel huvitatud olevat.",
		selling_moonshine = "Müüa kuuvalgust.",

		sold_moonshine_logs_title = "Müüdud kodupiiritus",
		sold_moonshine_logs_details = "${consoleName} müüs 1x kodupiirituse summas $${reward}.",

		emptied_cooker_logs_title = "Tühjendatud keedunõu",
		emptied_cooker_logs_details = "${consoleName} tühjendas kodupiirituse keedunõu ja sai ${amount} pudelit."
	},

	nos = {
		press_to_install_nitro_tank = "Vajutage ~INPUT_CONTEXT~, et paigaldada lämmastiku paak.",
		installing_nitro_tank = "Paigaldatakse nitro paak",
		press_to_remove_nitro_tank = "Vajuta ~INPUT_CONTEXT~, et eemaldada nitro paak.",
		removing_nitro_tank = "Eemaldatakse nitro paak"
	},

	notepads = {
		take_notes = "Tee märkmeid...",
		press_to_open = "Vajuta ~INPUT_DETONATE~, et avada see märkmik.",
		notepad_busy = "Keegi teine kasutab juba seda märkmikku.",
		dropped_notepad_title = "Märkmik maha jäetud",
		dropped_notepad_text_title_details = "${consoleName} jäetas maha märkmiku tekstiga `${text}`.",
		updated_notepad_title = "Märkmik uuendatud",
		updated_notepad_text_title_details = "${consoleName} uuendas märkmikut tekstiga `${text}`.",
		picked_up_notepad_title = "Märkmik korjatud",
		picked_up_notepad_text_title_details = "${consoleName} korjas üles märkmiku, mille tekst oli `${text}`.",
		invalid_notepad_id = "Vigane märkmiku id.",
		failed_notepad_info = "Ei õnnestunud märkmiku infot saada.",
		notepad_info = "Märkmik ${notepadId} jäeti maha ${droppedBy} poolt.",
		failed_notepad_wipe = "Märkmikke ei õnnestunud eemaldada.",
		invalid_notepad_wipe_radius = "Vigane raadius (Min = 1, Max = 100).",
		notepad_wipe_success = "Edukalt eemaldatud ${amount} märkmikku.",
		sign_invalid_slot = "Vigane inventari koht.",
		signed_notepad = "Märkmik märgitud edukalt kohas `${slotId}`.",
		failed_sign_notepad = "Märkmiku märkimine ebaõnnestus.",
		sign_already_signed = "Sa ei saa seda märkmikku enam märkida.",

		notepad_info_missing_permissions = "Mängija püüdis saada märkmiku teavet ilma piisavate õigusteta.",
		wipe_notepads_missing_permissions = "Mängija püüdis kustutada märkmikke ilma piisavate õigusteta."
	},

	notices = {
		message_too_long = "Sõnum sisaldab liiga palju tähemärke või ridu!",
		invalid_notice_id = "Kehtetu märkme ID.",
		successfully_removed_notice = "Märge eemaldatud edukalt.",
		failed_remove_notice = "Märkuse eemaldamine ebaõnnestus.",

		add_notice_missing_permissions = "Mängija üritas lisada märkust ilma korralike õigusteta.",
		remove_notice_missing_permissions = "Mängija üritas eemaldada märkust ilma korralike õigusteta."
	},

	npc_watch = {
		no_npc_nearby = "Ühtegi NPC-d läheduses ei ole."
	},

	objects = {
		saved_found_objects = "Salvestatud `${foundObjectsAmount}` leitud objekti mudeliga `${modelName}` serveris olevasse faili.",
		no_nearby_objects_with_model_found = "Lähedal asuvaid objekte mudeliga `${modelName}` ei leitud.",
		invalid_model_name = "Mudel `${modelName}` ei ole kehtiv mudel.",
		missing_model_name = "Puudub mudeli nimi"
	},

	ocean_gate = {
		you_need_a_controller_to_maneuver = "Selle sõiduki parkimiseks on vaja juhtpulti."
	},

	orbitcam = {
		enabled_orbitcam = "Orbitcam on lubatud.",
		disabled_orbitcam = "Orbitcami ei ole lubatud.",
		orbitcam_failed = "Orbitcami ei saanud lubada. Kas Teil on aktiveeritud noclip või midagi sarnast?",

		orbitcam_logs_title = "Orbitcami lülitamine",
		orbitcam_on_logs_details = "${consoleName} lülitas oma orbitcami sisse.",
		orbitcam_off_logs_details = "${consoleName} lülitas oma orbitcami välja.",

		orbitcam_no_permission = "Katse lülitada oma orbitcam sisse ilma vajalike lubadeta."
	},

	overview = {
		header_title = "OP Framework - Ülevaate kasutajaliides",
		select_information = "Informatsioon",
		select_activity_points = "Tegevuspunktid",
		select_staff_points = "Personalipunktid",
		select_moderation = "Modereerimine",
		select_handling_overrides = "Käsitlus tühistused",
		select_settings = "Seaded",
		about_title = "Ülevaate UI-st",

		-- eh idk if putting entire chunks of html code is the way to go but for now it is xd
		about_text = [[
			This interface is meant to serve as an OOC interaction menu, information center and a data viewer for players.
			<br><br>
			For now, the only thing it's used to is to view the "job priority" status.
			<br><br>
			In the future, it is expected that much more features will be implemented such as:
			<ul class="list">
				<li>More in-depth viewing and management of whitelisted jobs for the people controlling them.</li>
				<li>Complex player statistics.</li>
				<li>An achievement system.</li>
				<li>Possibly a better report system for staff.</li>
				<li>More features for staff they can use to easier handle and control the server.</li>
				<li>...and much more, feel free to come with suggestions!</li>
			</ul>
			<br>
			Onto the future!
		]],

		about_activity_points_title = "Tegevuspunktide kohta",

		about_activity_points_text = [[
			You can gain activity points by being on-duty in jobs that offer these points. Currently, only the Medical/EMS and Law Enforcement/police jobs offer this.
			<br><br>
			Every minute, a certain amount of activity points is distributed in each job among the players who are on-duty. This means that if there are 4 players on-duty as police, each player will get 25% of the activity points that minute. The amount of activity points distributed is decided by taking the server's current player amount and dividing that by 32.
			<br><br>
			The activity points reset for everyone at the beginning of each week. If you had a certain amount of activity points, you will be given priority in the queue for the entire next week.
				<br><br>
				Activity points required for queue priority at this time:
				<ul class="list">
				<li>400: Low Job Priority.</li>
				<li>700: Medium Job Priority.</li>
				<li>1000: High Job Priority.</li>
			</ul>
		]],

		activity_points_this_week = "See nädal",
		activity_points_last_week = "Eelmine nädal",
		activity_points_current = "Tegevuspunktid: <b>${activityPoints} + ${gainAmount}/minut</b>",
		activity_points_current_no_gain = "Tegevuspunktid: <b>${activityPoints}</b>",
		activity_points_goal_low = "<br><br>Teie praegune aktiivsuse eesmärk on 400 punkti madala töö prioriteediga, millest puudu on veel <b>${remainingPoints}</b>!",
		activity_points_goal_medium = "<br><br>Teie praegune aktiivsuse eesmärk on 700 punkti keskmise töö prioriteediga, millest puudu on veel <b>${remainingPoints}</b>!",
		activity_points_goal_high = "<br><br>Teie praegune aktiivsuse eesmärk on 1000 punkti kõrge töö prioriteediga, millest puudu on veel <b>${remainingPoints}</b>!",
		activity_points_goal_none = "<br><br>Teil pole praegu aktiivsuse eesmärke.",
		activity_points_not_enough = "Teil polnud piisavalt aktiivsuspunkte, et eelmisel nädalal saada järjekorra prioriteeti.",
		activity_points_last_week_low = "Vau, teil oli eelmisel nädalal piisavalt aktiivsuspunkte madalale ametiprioriteedile järjekorras!",
		activity_points_last_week_medium = "Vau, teil oli eelmisel nädalal piisavalt aktiivsuspunkte keskmisele ametiprioriteedile järjekorras!",
		activity_points_last_week_high = "Vau, teil oli eelmisel nädalal piisavalt aktiivsuspunkte kõrgele ametiprioriteedile järjekorras!",

		about_staff_points_title = "Personal punktidest",

		about_staff_points_text = [[
			Similar to the activity points for jobs, you will gain staff points when you're in the server with your staff availability toggled on.
			<br><br>
			Every minute, a certain amount of staff points is distributed to all active staff members. This means that if there are 4 staff members active, each person will get 25% of the staff points that minute. The amount of staff points distributed is decided by taking the server's current player amount and dividing that by 32.
			<br><br>
			The staff points reset for everyone at the beginning of each week. Your eight most recent weeks will be available for display in a table below.
		]],

		staff_points_this_week = "Sellel nädalal",
		staff_points_current = "Staff Points: <b>${staffPoints} + ${gainAmount}/minut</b>",
		staff_points_current_no_gain = "Personal punktid: <b>${staffPoints}</b>",
		staff_points_table = "Personal punkti tabel",
		this_week = "Sellel nädalal",
		one_week_ago = "1 nädal tagasi",
		two_weeks_ago = "2 nädalat tagasi",
		three_weeks_ago = "3 nädalat tagasi",
		four_weeks_ago = "4 nädalat tagasi",
		five_weeks_ago = "5 nädalat tagasi",
		six_weeks_ago = "6 nädalat tagasi",
		seven_weeks_ago = "7 nädalat tagasi",
		eight_weeks_ago = "8 nädalat tagasi",
		previous_weeks_average = "Eelmise nädala keskmine",

		about_detection_areas_title = "Avastusalad",
		about_detection_areas_text = "Avastusalad võivad olla abiks personalile, kui püütakse tuvastada petist, kes genereerib soovimatuid sõidukeid ja/või jalakäijaid. Et luua avastusala, kasutage '/avastusala_lisa' käsku. Pärast avastusala loomist ilmub see siia. Igas piirkonnas logitakse ainult viimased 100 tükki.",
		detection_area_title = "Avastusala #${detectionAreaId}",

		about_settings_title = "Sätted",
		about_settings_text = "Need väljad võimaldavad teil muuta erinevaid sätteid, et kohandada oma kogemust.",
		about_sound_effects_title = "Heliefektid",
		about_sound_effects_text = "Need väljad võimaldavad teil sundida mõningaid heliefekte. Nende korrektseks toimimiseks on vajalik otseühendus .oog-failiga. URL-i aadress peab olema https:// ja mitte http://. Olge teadlikud sellest, et Discordi lingid võivad aeguda.",
		about_staff_settings_title = "Personalivõtete seaded",
		about_staff_settings_text = "Kui sul on personaliõigused, saad nende väljade abil muuta mõningaid personaliga seotud seadeid.",
		radio_mic_click_on = "Raadio mikrofoni klõps (sisse lülitatud)",
		radio_mic_click_off = "Raadio mikrofoni klõps (välja lülitatud)",
		lean_cam_mode = "Lean-Nihe Kaamera",
		lean_option_1 = "Hoia, et lülitada",
		lean_option_2 = "Vajuta, et lülitada",
		clipboard_animation = "Lohakas animatsioon",
		chop_shop_sound = "Keela röövlitöökoda raadiomuusika",
		seatbelt_sound = "Keela turvavöö märguanne",
		sound_effect_placeholder = "URL .oog failile...",

		button_save = "Salvesta",
		button_reset = "Lähtesta",
		value_off = "Väljas",
		value_on = "Sees",
		sound_off = "Helitaust väljas",
		sound_on = "Helitaust sees",

		reduce_epilepsy = "Vähenda vilkuvaid pilte (epilepsiavastane)",
		pause_menu_emote = "Pausimenüü žest",
		disable_tablet_animation = "Keela tahvelarvuti animatsioon",
		staff_notifications_reports = "Teavitused aruannetest (Heli)",
		staff_notifications_staff_chat = "Personalivestluse teavitused (Heli)",
		staff_notifications_general = "Üldteated (Heli)",
		staff_notifications_anti_cheat = "Petitarkvara teated (Heli)",

		december_1 = "1. detsember",
		december_2 = "2. detsember",
		december_3 = "3. detsember",
		december_4 = "detsember 4",
		december_5 = "detsember 5",
		december_6 = "detsember 6",
		december_7 = "detsember 7",
		december_8 = "detsember 8",
		december_9 = "detsember 9",
		december_10 = "detsember 10",
		december_11 = "detsember 11",
		december_12 = "detsember 12",
		december_13 = "detsember 13",
		december_14 = "detsember 14",
		december_15 = "detsember 15",
		december_16 = "detsember 16",
		december_17 = "detsember 17",
		december_18 = "detsember 18",
		december_19 = "detsember 19",
		december_20 = "20. detsember",
		december_21 = "21. detsember",
		december_22 = "22. detsember",
		december_23 = "23. detsember",
		december_24 = "24. detsember",
		hatch_closed = "SULETUD",
		hatch_open = "AVATUD",
		hatch_claim = "VÕTA",
		hatch_opened = "VÕETUD",
		hatch_waiting = "OOTAMAS",

		about_advent_calendar_title = "Advendikalendri kohta",

		-- NOTE: this is the most aids shit ever, please ignore the HTML stuff in here
		about_advent_calendar_text = [[
			The advent calendar is a holiday feature meant to bring some more joy to the players of ${communityName} throughout the month of December!
			<br><br>
			Every day, another hatch will become available, containing money, an item, a vehicle or something else. All hatches belonging to a previous date will be available. Once a hatch has been opened, you must claim it in order to receive it. Opening and collecting will become impossible after the 25th of December.
			<br><br>
			Next hatch unlocks in ${time}.
			<br><br>
			Opening a hatch on the day it was unlocked, gives you a bonus point. If you obtain enough bonus points, you will receive a special gift on the 24th of December. (The bonus gift must be claimed before the 26th.)
			<br><br>
			<div class="bonusPoints">
				<div>Bonus Points: ${bonusPoints}/22</div>
				<div>
					<button class="button" style="${buttonStyle}" id="claimBonusButton">${buttonText}</button>
				</div>
			</div>
		]],

		unlocks_in_days_hours_minutes_seconds = "${days} päeva, ${hours} tundi, ${minutes} minutit ja ${seconds} sekundit",
		unlocks_in_hours_minutes_seconds = "${hours} tundi, ${minutes} minutit ja ${seconds} sekundit",
		unlocks_in_minutes_seconds = "${minutes} minutit ja ${seconds} sekundit",
		unlocks_in_seconds = "${seconds} sekundit",
		unlocks_in_an_unknown_amount_of_time = "teadmata ajaks",

		unopened_hatch = "Avamata luuk",
		won_money = "$${amount} Raha",
		won_vehicle = "Sõiduk (Jõulud eripakkumine)",
		won_queue_priority = "Nädal järjekorra prioriteeti!",

		about_handling_overrides_title = "Käsitsemise ülekirjutamise kohta",
		about_handling_overrides_text = "Loo ajutisi käsitsemise ülekirjutusi käsitsemise klasside jaoks dünaamiliselt. Ülekirjutused kehtivad kuni nende eemaldamiseni või serveri taaskäivitamiseni. Ülekirjutused kehtivad kõigile serveri mängijatele.",
		add_override = "Lisa ülekirjutus",
		add = "Lisa",
		model_name = "Mudeli nimi...",
		field_name = "Väli...",
		value = "Väärtus...",
		current_overrides = "Praegused ülekirjutused",

		about_explosion_events_title = "Plahvatuse sündmused",
		about_explosion_events_about = "Siin on logitud informatsioon viimase 500 plahvatuse kohta. See aitab personalil leida moddereid.",
		about_unusual_explosions = "Ebatavalised plahvatuse sündmused, mida tavaliselt ei esine.",
		explosions_by_type_title = "Plahvatused tüübi järgi",
		players_causing_explosions_title = "Mängijad, kes tekitavad plahvatusi",
		include_common_events_off = "Kaasa üldised sündmused: VÄLJAS",
		include_common_events_on = "Kaasa üldised sündmused: SEES",

		explosion_events_type = "Tüüp",
		explosion_events_amount = "Kogus",
		explosion_events_nearby = "Lähedal",
		explosion_events_distance = "Kaugus",
		explosion_events_player = "Mängija nimi",

		illegal_weapons_title = "Loomistehisega relvad",
		illegal_weapons_about = "Siin logitakse süsteemi poolt avastatud viimased 500 loomistehisega relva loomist. Kui mängijal on loomistehisega relv, ei tähenda see tingimata, et ta on modimisega tegelev inimene, sest modija võib loomistehisega relvi mängijate kätte panna ning seetõttu võivad ka teised mängijad siin kuvatud olla.",
		illegal_weapons_by_type = "Relvade tüübid",
		players_with_spawned_weapons = "Mängijad, kellel on ilmunud relvad",

		ped_models_title = "Mängija ped mudelid",
		ped_models_about = "Siin on loetletud kõik seda kasutajanime mitte kasutavad mängijad, kes on muutnud oma karakteri mudelit. See peaks aitama leida trolle või potentsiaalseid moode.",
		local_ped_models_title = "Kohalikud kehastused",
		animal_ped_models_title = "Loomade ped mudelid",

		bad_screen_word_title = "Halvad ekraanisõnad",
		bad_screen_word_about = "Siin loetletakse kõik mängijad, kellel on avastatud teatud sõnad nende ekraanil. See peaks aitama leida mängijaid, kes võivad olla modereerimisega seotud.",

		damage_modifier_name = "Mängija nimi",
		damage_modifier_expected = "Oodatud",
		damage_modifier_actual = "Tegelik",

		bad_words_name = "Mängija nimi",
		bad_words_words = "Väljakutsuvad sõnad",

		freecam_detections_name = "Mängija nimi",
		freecam_detections_distance = "Maks. kaugus",

		model = "Mudel",
		label = "Silt",
		amount = "Summa",
		time_ago = "Aeg tagasi",
		console_name = "Mängija",
		expected = "Oodatud",
		actual = "Tegelik",
		words = "Sõnad",
		distance = "Kaugus",
		weapon = "Relv",
		type = "Tüüp",
		nearby = "Läheduses",

		no_entries = "Sissekanded puuduvad"
	},

	oxy = {
		press_to_talk_to_jc = "Vestlemiseks JC-ga vajuta ~g~${InteractionKey}~w~.",
		tutorial_will_play_next_time = "Oksütutvustus mängitakse järgmisel käivitamisel.",
		prescription_pick_up = "Retsepti väljavõtmine: ${label}",

		pick_up_the_prescriptions = "Võta oma kaardil märgitud võltsitud retseptid.",
		redeem_them_at_the_city = "Kui oled selle teinud, tuleb teil need lunastada linna juures.",
		jc_will_be_expecting_some_back = "~y~JC ~w~ootab tagasi 6 tabletti ${pickUpAmount} Oxyst.",
		you_have_limited_time = "Teil on piiratud aeg. Teil on vaja nendega tagasi tulla ${time} jooksul.",
		press_to_hide_unimportant_blips_in_map = "Vajutage ~INPUT_SPRINT~, et peita mitte-missiooni blipid pausimenüüs.",
		consider_getting_a_smart_watch = "Kaaluge nutikella hankimist, et GPS-i alati näha.",

		press_to_pick_up_prescription = "Vajuta ~g~${InteractionKey} ~w~, et võtta retsept.",

		redeem_oxy_prescription = "Lunasta Oxy retsept",
		press_to_redeem_prescription = "Vajuta ~g~${InteractionKey} ~w~, et lunastada retsept.",

		check_your_map_to_redeem_prescriptions = "Tubli! Kontrolli oma kaarti, et lunastada retseptid. Sul on ${time} jäänud.",
		go_to_jc_to_finish_run = "Hästi tehtud! Mine tagasi ~y~JC ~w~juurde, et lõpetada sõit. Sul on ${time} jäänud.",

		oxy_run_started_title = "Oxy sõit algas",
		oxy_run_started_details = "${consoleName} alustas Oxy sõitu.",

		oxy_run_ended_title = "Oksüruni lõpp",
		oxy_run_ended_details = "${consoleName} lõpetas oma oksüruni ${time} pärast ja teenis $${payout}.",

		oxy_run_failed_title = "Oksürun nurjus",
		oxy_run_failed_details = "${consoleName} ebaõnnestus oma oksüjooksul.",

		you_failed_the_run = "Oled oksüjooksul ebaõnnestunud. ~y~JC ~w~ei ole sinuga mõnda aega rahul.",

		time_left = " Sul on jäänud ${time}.",

		accidental_call_1_part_1 = "Tere, mida sa ütled?",
		accidental_call_1_part_2 = "Ok, tegelikult ma olen praegu paigutanud väikese asja, sest seal on keegi, kes jookseb oksi ja seda, vennas.",
		accidental_call_1_part_3 = "Jah, ma kirjutasin üles tema numbrimärgi, tema auto, kõik need asjad.",
		accidental_call_1_part_4 = "Ja tegelikult, kui ta autost välja tuleb ja asja kätte annab, vennas, siis ma pean sind paluma, et sa hüppaksid sisse ja võtad selle minu jaoks.",
		accidental_call_1_part_5 = "Ei, ta ei tea, et see oleme meie, sõber. Ma saatsin ta kesklinna, nii et ta arvab ilmselt, et tegemist on mingi jõugu või midagi sellisega, sõber.",
		accidental_call_1_part_6 = "Usalda mind, see on lihtne.",
		accidental_call_1_part_7 = "Ohhhh! Hei, mis sa ütled, mu sõber?! Mitte sina, teine mees! Ma saatsin kaks meest! Aga mitte sinna poole!",
		accidental_call_1_part_8 = "Sa oled chill, kuid vale mees.. see oli mingi teine mees, sõber. Mitte sina.",
		accidental_call_1_part_9 = "Ei olnud sinu kohta. Sa saad aru? See polnud sina, sõber!",
		accidental_call_1_part_10 = "Aga ole ettevaatlik, sest kui sa sassi keerad, siis ma kindlasti võtan su auto endale.",
		accidental_call_1_part_11 = "Armastan sind.",

		accidental_call_2_part_1 = "Yooo, mis sa ütled, kallike?",
		accidental_call_2_part_2 = "Jah, ma ei valeta, ma lihtsalt tahan sulle sinepit jalgadele määrida ja seda nagu hot dogi lakkuda.",
		accidental_call_2_part_3 = "Yo, kallis.",
		accidental_call_2_part_4 = "Oota..",
		accidental_call_2_part_5 = "Oh kurat, vabandust.",

		accidental_call_3_part_1 = "Yooo, mis sa ütled, vend?",
		accidental_call_3_part_2 = "Jah, ma just lõpetasin selle uue hip-hop laulu, mida sa tahtsid, sõber.",
		accidental_call_3_part_3 = "Jah, see läheb natuke nii..",
		accidental_call_3_part_4 = "Ma tahan sind armastada beebi, ma tahan sind armastada, tahan su jalgu suudelda, ma tahts-",
		accidental_call_3_part_5 = "Wooooah, woah woah.. Ma mõtlesin midagi muud..",
		accidental_call_3_part_6 = "Vabandust, vale number, minu viga vennas, minu viga..",

		accidental_call_4_part_1 = "Hei sõber, millal sa tuled minu juurde mängima My Little Pony mänge minuga?",
		accidental_call_4_part_2 = "On liiga kaua aega läinud ja mul on vaja, vend sa tead, et mulle meeldib sädelev ja-",
		accidental_call_4_part_3 = "Okei.. yo vale number vend, minu viga, sa polnud seda kuulnud.",
		accidental_call_4_part_4 = "'sest kui sa oleksid, siis sa oleksid surnud, sa tead mida ma mõtlen?",

		accidental_call_5_part_1 = "Yo emme, ma olen natuke hirmul praegu..",
		accidental_call_5_part_2 = "Jah, oli mõned tüübid mu ukse ees ja ma ei tea, mida teha emme.",
		accidental_call_5_part_3 = "Ma olen natuke hirmul, sest ma arvan, et olen sügavas otsas, sa tead..",
		accidental_call_5_part_4 = "Ema.. Oh, ohh.. Oh, yo! Mida sa ütled sõber?",
		accidental_call_5_part_5 = "Jah, mitte, kas sulle meeldivad mu näitlemiskunstid ja kõik see jah?",
		accidental_call_5_part_6 = "Usu mind, aga ärge kunagi, kunagi, kunagi salvestage seda kõnet uuesti, sõber, või sa oled surnud.",
		accidental_call_5_part_7 = "Sa tead, mida ma mõtlen? Ma tuleksin sinna ja lõikaksin sind erinevalt, sõber.",
		accidental_call_5_part_8 = "Sa tead, mida ma mõtlen, sõber?",
		accidental_call_5_part_9 = "Usu mind selles, kurat sind, sõber.",

		accidental_call_6_part_1 = "Tule siia väike vend, jah tule siia.",
		accidental_call_6_part_2 = "Sinu isa on telefonis, tule siia vend.",
		accidental_call_6_part_3 = "Ma tean, et sa pole teda näinud vend, aga võta telefon ära.",
		accidental_call_6_part_4 = "Hallo? Kas see on isa?",
		accidental_call_6_part_5 = "Isa?!",
		accidental_call_6_part_6 = ".. oota, see pole isa, see on keegi teine! Ei! Miks-",
		accidental_call_6_part_7 = "Sa oled loll, ma ei saa uskuda, et sa sellega nõustusid, vend!",
		accidental_call_6_part_8 = "Oh jumal..",

		maxed_out_runs_part_1 = "Sõber, ma tean, et sulle meeldib leib, aga palun lase mõnel teisel mehel ka midagi saada.",
		maxed_out_runs_part_2 = "Lõpeta juba selle jama jooksmine.",
		maxed_out_runs_part_3 = "Mine räägi mõne lolliga prügila peakorteris või midagi sellist.",

		mission_completed_1_part_1 = "Tere sõber, ma teadsin, et võin sinule loota. See oli hea töö.",
		mission_completed_1_part_2 = "Kui sul kunagi on vaja rohkem raha teenida, siis tead, kust mind leida.",
		mission_completed_1_part_3 = "Ma olen peagi varustatud, ära muretse sellepärast.",

		mission_completed_2_part_1 = "Mis sa ütled sõber.",
		mission_completed_2_part_2 = "Ma ei valeta, see töö oli päris hea.",
		mission_completed_2_part_3 = "Jah, usalda mind, kliendid armastavad sind praegu ja ma armastan sind ka, sest sa tead miks?",
		mission_completed_2_part_4 = "Said mulle raha; Said ka endale raha.",
		mission_completed_2_part_5 = "Võta see, naase hiljem siiski, sest ma vajan sind jälle, mu sõber.",

		mission_completed_3_part_1 = "Tere, mida sa ütled, sõber.",
		mission_completed_3_part_2 = "Ma ei valeta, see asi seal taga oli tõesti suurepärane, sõber.",
		mission_completed_3_part_3 = "Sa ei oleks seda paremini teinud, sõber.",
		mission_completed_3_part_4 = "Viimane mees läks käest ära, nii et hea, et ma sinu sain, sõber.",
		mission_completed_3_part_5 = "Tule hiljem tagasi, ma luban, et mul on sulle veel rohkem kraami, sõber.",

		mission_completed_4_part_1 = "Tere, kas sa oskad müüa, sõber?",
		mission_completed_4_part_2 = "Tunned sa end välismaal ärimehena, usalda mind, sõber.",
		mission_completed_4_part_3 = "Viis, kuidas sa seda neile müüsid, oli hullumeelne, sõber.",
		mission_completed_4_part_4 = "Jah jah, tänud selle eest.",
		mission_completed_4_part_5 = "Hindan sind teisiti, nii et tule hiljem tagasi, mul on sulle pillid olemas, sõber.",
		mission_completed_4_part_6 = "Mul on rohkem kaupa, jah jah, usalda mind.",

		mission_completed_5_part_1 = "Hei, mida sa siin teed, sõber?",
		mission_completed_5_part_2 = "Ohh, sina oled! Tere sõber, mis uudiseid?",
		mission_completed_5_part_3 = "Jah, aitäh, tõesti - tänud selle eest, sõber.",
		mission_completed_5_part_4 = "'sest sa andsid mulle tõeliselt suure kingituse! Mul on nüüd hunnik raha, ostan endale värskelt toodetud EDM-whip, saate aru, vennas?",
		mission_completed_5_part_5 = "Dinka Blista, kogu see teema, jaa, aga tulge hiljem tagasi, ausalt.",
		mission_completed_5_part_6 = "'sest mul on sulle veel kraami, vend.",

		mission_completed_6_part_1 = "Kuule, sa oleksid pidanud nägema Gogginschmieli nägu varem, vend.",
		mission_completed_6_part_2 = "Ta nägi välja nagu perssekeeratud jobu, ma ei valeta.",
		mission_completed_6_part_3 = "Sa ei teadnud, et ta oli sinu taga?!",
		mission_completed_6_part_4 = "Ta oli kõva vastane, aga väga hea töö!",
		mission_completed_6_part_5 = "Ma ei valeta, sa oled selles liiga hea sõber.",
		mission_completed_6_part_6 = "Tule hiljem tagasi, pakuksin sulle rohkem väljakutseid sõber.",

		mission_completed_7_part_1 = "Tere sõber, kuidas läheb?",
		mission_completed_7_part_2 = "Ma ei valeta, see asi seal taga oli fantastiline.",
		mission_completed_7_part_3 = "Sa ei oleks seda paremini saanud teha sõber.",
		mission_completed_7_part_4 = "Viimane kutt läks lolliks, nii et olen rõõmus, et sain õigel ajal sinu appi.",
		mission_completed_7_part_5 = "Tule hiljem tagasi, vennas. Usalda mind, mul on sulle veel kraami.",

		mission_completed_8_part_1 = "Tere, see on see boss, kellest ma rääkisin. Usalda mind, ta on mega hea.",
		mission_completed_8_part_2 = "See tüüp on lihtsalt nii hea.",
		mission_completed_8_part_3 = "Ta toob alati oma tarned õigeaegselt.",
		mission_completed_8_part_4 = "Kliendid armastavad seda tüüpi.",
		mission_completed_8_part_5 = "Usu mind, ta tõuseb maailmas üles, aga sa ei võida mind kunagi.",
		mission_completed_8_part_6 = "'sellepärast sa peadki jobu olema, sa tead, mida ma mõtlen?'",
		mission_completed_8_part_7 = "Aga armastus, tule hiljem tagasi, mul on sinu jaoks rohkem pille bro.",

		mission_failed_1_part_1 = "Jah bro, ma ei saa valetada, klient helistas mulle ja ütles, et sa ei toimatanud seda minu mehele.",
		mission_failed_1_part_2 = "Mis toimub, bro?",
		mission_failed_1_part_3 = "Sa tegid suure vea.",
		mission_failed_1_part_4 = "Lahku minu silme eest, bro.",
		mission_failed_1_part_5 = "Kui ma sind kunagi uuesti näen, siis on sul möödas.",

		mission_failed_2_part_1 = "Jah, meil on hetkel suur probleem.",
		mission_failed_2_part_2 = "Ei saa valetada, sa olid liiga hiljaks jäänud, mis toimub?",
		mission_failed_2_part_3 = "Jah, sõber, minu kliendid on loomulikult vihased!",
		mission_failed_2_part_4 = "Ära edaspidi ürita midagi minult saada, sõber.",
		mission_failed_2_part_5 = "Mine sinna, kus pipar kasvab, oled läbi, sõber.",

		mission_failed_3_part_1 = "Jah, jah, jah, jah, oi, oi..",
		mission_failed_3_part_2 = "Ei saa vassida, tõesti.",
		mission_failed_3_part_3 = "Oled esimene, kellele ma seda kunagi ütlen.",
		mission_failed_3_part_4 = "Sa oled jobu.",
		mission_failed_3_part_5 = "Kas sa tead seda? Jah? Sa oled jobu.",
		mission_failed_3_part_6 = "Kas sa tead miks?",
		mission_failed_3_part_7 = "Sellepärast, et sa ei toimeta mu kraami edasi, sõber.",
		mission_failed_3_part_8 = "Pleki minema, sõber. Ma ei taha sind oma kandade ümber näha.",
		mission_failed_3_part_9 = "Sinu suhtes on minu silmis punane tuli, ma vannun Jumala peale, sõber.",
		mission_failed_3_part_10 = "Mul on mootorid käima lastud, tulistamisrelvad väljas.",
		mission_failed_3_part_11 = "Sinu jaoks on mäng käimas, sõber.",
		mission_failed_3_part_12 = "Jah, see ongi.. mine minema bro.",

		mission_failed_4_part_1 = "Tere, mis toimub bro?",
		mission_failed_4_part_2 = "Aga, kiire asjaga siin.",
		mission_failed_4_part_3 = "Kui sa kunagi veel minu juurde tuled, siis oled surnud.",
		mission_failed_4_part_4 = "Jah, kas sa tead miks?",
		mission_failed_4_part_5 = "Sest sa oled jama bro, sa ebaõnnestud alati minu asjades.",
		mission_failed_4_part_6 = "Mis seal toimub?",
		mission_failed_4_part_7 = "Kliendid on vihased ja süüdistavad mind, et ma olen loll bro.",
		mission_failed_4_part_8 = "Ma ei suuda uskuda, et ma sinu juurde tulin.",
		mission_failed_4_part_9 = "Arvasin, et oled minu mees või midagi sellist bro",
		mission_failed_4_part_10 = "Aga ei, sa oled lihtsalt tagumik bro, nii et sa ei koti mind bro.",
		mission_failed_4_part_11 = "Mine minu silme alt bro.",

		mission_failed_5_part_1 = "Jah, sa ei teinud viimasel korral liiga head tööd..",
		mission_failed_5_part_2 = "Ma ei valeta bro, sa lõhkusid suurelt.",
		mission_failed_5_part_3 = "Nii et ära kunagi minu kohta tule!",
		mission_failed_5_part_4 = "Ma vannun Jumala nimel, ma löön su läbi bro.",

		mission_failed_6_part_1 = "Tere, mida sa räägid, sõber?",
		mission_failed_6_part_2 = "Kui sa kunagi minu kohta uuesti tuled, sõber.",
		mission_failed_6_part_3 = "Ma võtan Rambo ja laseksin raffaga su peale, sõber!",
		mission_failed_6_part_4 = "Ma vannun Jumala peale! Sa tegid mulle põntsu, sõber!",
		mission_failed_6_part_5 = "Kliendid on minuga väga pettunud ja kurdavad!",
		mission_failed_6_part_6 = "See on sinu süü, sõber, kõik on sinu süü..",

		mission_failed_7_part_1 = "Ära tule minu kohta, sõber! Sina läksid rappa, sõber!",

		mission_failed_8_part_1 = "Kuule, ära tule tagasi, kuni oled mu pakkidest lahti saanud.",

		mission_failed_9_part_1 = "Kuule, ära tule tagasi, kuni oled mu paki kätte saanud.",
		mission_failed_9_part_2 = "Ei, ära iial enam tagasi tule, kuni mu asjad on korras.",
		mission_failed_9_part_3 = "Sa panid suure pahanduse püsti, mine siit minema.",

		mission_failed_10_part_1 = "Kuule, parem molli et ma sind koju lahkuma tänasel ööl.",
		mission_failed_10_part_2 = "Sest ma tulen sind jälitama.",
		mission_failed_10_part_3 = "Kuule, ära iial enam mind alt vea, jumala eest.",

		no_pills_1_part_1 = "Tere sõber, olukord on natuke keeruline.",
		no_pills_1_part_2 = "Kahjuks mul pole hetkel midagi pakkuda.",
		no_pills_1_part_3 = "Nii et tuleb oodata ja vaadata,",
		no_pills_1_part_4 = "tule mõni teine kord tagasi.",

		no_pills_2_part_1 = "Tere sõber, olukord on praegu päris karm..",
		no_pills_2_part_2 = "kuna mul pole hetkel midagi pakkuda. Mul pole tablette, sõber!",
		no_pills_2_part_3 = "Jah, nad on mind alt vedanud! Mul pole midagi, sõber!",
		no_pills_2_part_4 = "Ay, ma ütlesin neile.. Yo, mis lahti, kus need pillid on?..",
		no_pills_2_part_5 = "Mu mees ütles, et neid pole isegi siin.",
		no_pills_2_part_6 = "Nad reisivad nagu Liberty City's või midagi sellist bro..",
		no_pills_2_part_7 = "Nad võtavad liiga kaua aega bro.",
		no_pills_2_part_8 = "Aga usu mind, kui mul rohkem on, ma kindlasti ütlen sulle bro.",

		no_pills_3_part_1 = "Yo, mis on, mees?",
		no_pills_3_part_2 = "Meil pole praegu ühtegi pille, nii et mine chilla, bro.",
		no_pills_3_part_3 = "Enne kui ma vihaseks lähen, saad aru, mida ma mõtlen?",

		no_pills_4_part_1 = "Yoo, wag1 bro? Praegu pole pillid saadaval, nii et.. jätke maha .. jätke bro ..",
		no_pills_4_part_2 = "..jätke, olete valmis bro, sammutage..",
		no_pills_4_part_3 = "Lahkuge siit bro, teiega on kõik.",

		no_pills_5_part_1 = "Yoooooo.. mu tüüp!",
		no_pills_5_part_2 = "Mida sa ütled bro? Ma ei valeta, meil pole praegu midagi.",
		no_pills_5_part_3 = "Seega on see praegu natuke keeruline.",
		no_pills_5_part_4 = "Kuid tulge hiljem tagasi ja mul on teil midagi pakkuda.",
		no_pills_5_part_5 = "Kallis vend.",

		no_pills_6_part_1 = "Vend.. Ma olen juba kahele inimesele enne sind öelnud, et mul pole hetkel midagi..",
		no_pills_6_part_2 = "Nii et miks sa ei kuula oma väikesi poisikesi ja läheksid end kui kollektiivi perse tegema, venda.",
		no_pills_6_part_3 = "Sa tead, mida ma mõtlen? Sina oled nüüd siin lõpetatud, mine perse, venda.",

		no_pills_7_part_1 = "Jah, ma olen siin SUUR asi, sa mõistad?",
		no_pills_7_part_2 = "Kuid suur asi ei oma hetkel suuri pille.. nii et sisuliselt peab su väike asi perse minema.",
		no_pills_7_part_3 = "Sa tead, mida ma mõtlen?",

		no_pills_8_part_1 = "Yo, yo, mida sa räägid?",
		no_pills_8_part_2 = "Hei, hei, mul on vaja madalat valet.",
		no_pills_8_part_3 = "Jah, ma ei saa valetada ... mõned kaugsed tulid varem siia.",
		no_pills_8_part_4 = "Meil pole hetkel ühtegi pille. Sa mõistad, mida ma mõtlen.",
		no_pills_8_part_5 = "Praegu on minu jaoks väljas. Tule hiljem tagasi, kui olukord rahuneb.",

		no_pills_9_part_1 = "Jah, ma ei saa valetada, mõned jobud tulid varem siia ja varastasid mu kraami, bro.",
		no_pills_9_part_2 = "Aga ära muretse, ma olen neil silma peal just praegu.",
		no_pills_9_part_3 = "Kui me pillid kätte saame, tule kindlasti tagasi ja ma aitan sind, ma suudan selle kinni maksta, sõber.",

		no_pills_10_part_1 = "Tere, mis toimub?",
		no_pills_10_part_2 = "Jah, praegu on seal mingi tüüpide jõuk põhjas või midagi sellist, sõber.",
		no_pills_10_part_3 = "Nad röövisid selle asja, nii et lähme koos sinna, saame selle tagasi ja ma aitan sind, sõber.",
		no_pills_10_part_4 = "Tänu selle eest.",

		no_pills_11_part_1 = "Tere, mis toimub? Praegu pole midagi, sõber... Praegu pole midagi.",
		no_pills_11_part_2 = "Hetkel pole midagi saadaval.",
		no_pills_11_part_3 = "Aga põhiliselt ütlen ma seda kõigile..",
		no_pills_11_part_4 = "Miks sa ei lähe parem nüüd minema ja tuled hiljem tagasi. Kallid.",

		no_pills_12_part_1 = "Mul pole hetkel midagi kaasas.",
		no_pills_12_part_2 = "Tule hiljem tagasi, sõber..",

		no_pills_13_part_1 = "Sõber! Mine minema, mul pole midagi!",
		no_pills_13_part_2 = "Mul pole midagi, sõber! Oled sa vaikne ka!",

		no_pills_14_part_1 = "Kuula sõber, ma ütlesin sulle, et mul pole praegu mingeid tablette.",
		no_pills_14_part_2 = "Nii et kui sa üritad midagi osta, siis tule veel ühe korra minu poole, palun.",

		no_pills_15_part_1 = "Ei, kuula mind sõber... sa hakkad mind praegu vihastama.",
		no_pills_15_part_2 = "Ma ei suuda isegi sulle valetada.",
		no_pills_15_part_3 = "Nii et hakkan sind tõsiselt lüüa, kui sa minema ei lähe, sõber.",

		not_leaving_1_muffled_part_1 = "Olgu, miks see sõber endiselt seal seisab?",
		not_leaving_1_muffled_part_2 = "Kas ta on politseist?",
		not_leaving_1_muffled_part_3 = "Hei, kontrolli kas ta on politseinik, sõber. Kontrolli kas ta on politseinik, sõber.",

		not_leaving_2_part_1 = "Hei mine sinna kõrvale, sõber. Lahku siit sõber.",

		not_leaving_3_part_1 = "Sõber, kas sa saad praegu siit lahkuda..",
		not_leaving_3_part_2 = "Ma üritan midagi teha. Sa mõistad mind, eks?",
		not_leaving_3_part_3 = "Ma üritan oma kallimat suudelda, aga sa seisad siin nagu lollakas, sõber.",
		not_leaving_3_part_4 = "Lahku siit, sõber.",

		not_leaving_4_part_1 = "Palun lahku siit, sõber.",
		not_leaving_4_part_2 = "Ah, ma vannun jumala pühadusele.",

		not_leaving_5_part_1 = "Sina ajad mind juba närvi, ausalt öeldes...",
		not_leaving_5_part_2 = "Ma tulen sinu juurde ja teeme selgeks, et kes siin kellegi boss on.",
		not_leaving_5_part_3 = "Sul parem oleks, et sa kaoksid siit kiiresti, sõber.",

		not_leaving_6_part_1 = "Kuule, mina olen siin suur boss.",
		not_leaving_6_part_2 = "Sa võiksid lõpetada enda omanikuks pidamise ning oma asjad lõpetada ja lahkuda siit.",

		not_leaving_7_part_1 = "Ma vannun jumala pühadusele, kui sa seda uuesti teed, siis ma kutsun backup tantsijad appi.",
		not_leaving_7_part_2 = "Nad teevad sinuga midagi erinevat, sõber.",

		not_leaving_8_muffled_part_1 = "Olgu, kasta ta märjaks, sõber, kasta ta märjaks.. ta võtab liiga kaua aega.",

		not_leaving_9_part_1 = "Sõber, ära sunni mind välja tooma suurt chingat.",
		not_leaving_9_part_2 = "Ma palun sul lõpetada minu tänava peal seismise, sõber.",
		not_leaving_9_part_3 = "Sul on parem järele anda ja tegutseda kohe, sa võtad liiga kaua aega, sõber.",
		not_leaving_9_part_4 = "Sa oled minu majas ja minu kodus, sa arvad, et oled mingi suur tüüp, sõber.",
		not_leaving_9_part_5 = "Oota bro, ma KURAT hakkan sinuga tegelema bro.",

		not_leaving_10_muffled_part_1 = "Jah, see tüüp saab gaasi nurgas nagu ta omab minu tänavat või midagi bro.",

		not_leaving_11_part_1 = "Käi minema, lähme edasi bro..",
		not_leaving_11_part_2 = "Sa oled siin läbi bro.",

		not_leaving_12_muffled_part_1 = "Ay, see on raske üks sellele tüübile.",
		not_leaving_12_muffled_part_2 = "Ta võtab liiga kaua aega bro, ay mine nüüd bro!",
		not_leaving_12_muffled_part_3 = "Ma näen sind praegu, mine nüüd minema bro!",

		not_leaving_13_muffled_part_1 = "Vend! See tüüp võtab liiga kaua aega või midagi sellist..",
		not_leaving_13_muffled_part_2 = "Ta on jobu.. Ta peab olema jobu või midagi sellist, vend..",
		not_leaving_13_muffled_part_3 = "Ta on kindlasti jobu.",

		start_1_part_1 = "Oi vend, vend.. Ay, tule siia, tule siia..",
		start_1_part_2 = "Yo, ay ay.. Kas sa tahad veel rohkem 'okse' (narkootikum)?",
		start_1_part_3 = "Ayy, tänu selle eest, tänu selle eest..",
		start_1_part_4 = "Ay, sa tead mida teha, jah?",
		start_1_part_5 = "Ay, ma saadan sulle kohe pingi.",
		start_1_part_6 = "Armastus aga.",

		start_2_part_1 = "Tere, mis toimub bro! Tule siia mu sõber!",
		start_2_part_2 = "Jah jah.. Kas sa üritad uuesti oxy edasi müüa bro?",
		start_2_part_3 = "Armastus selle eest brooo.",
		start_2_part_4 = "Sina ju tead, mida teha tuleb, eks ole bro.",

		start_3_part_1 = "Tere.. tere bro, tule siia bro, tule siia bro.",
		start_3_part_2 = "Kas sa üritad jälle oxy edasi müüa bro?",
		start_3_part_3 = "Kas tõesti? Hea küll.. Hei, hei, kas sa pole politsei aga, eks ole?",
		start_3_part_4 = "Ok.. Ok.. Armastus selle eest, tere, tere, sina tead ju, mida tegema peab, ma saadan sulle pinge kõik sinu jaoks bro.",

		start_4_part_1 = "Ay! Kas sa oled see tüüp eelmisest korraga?!",
		start_4_part_2 = "Oi, tule siia sõber! Viimase korraga tegid hea töö, seda ma ei valeta..",
		start_4_part_3 = "Ühesõnaga jah.. tee see uuesti, sa tead mida teha, saadan sulle asukoha.",
		start_4_part_4 = "Tänud selle eest.",

		start_5_part_1 = "Tule siia, sa väike tõbras!",
		start_5_part_2 = "Jah, jah, jah.. ma tean- ma teadsin kes sa oled sõber..",
		start_5_part_3 = "Ära ütle, ma ei hooli kes sa oled.. aga ma tean kes sa oled.",
		start_5_part_4 = "Aga põhimõtteliselt ma tahan, et sa teeks uuesti seda oxy pille.",
		start_5_part_5 = "Sa tea eelmisest korrast, eksju? Sa tead kuidas asjad käivad?",
		start_5_part_6 = "Nii et ma saadan sulle selle asja telefoni peal, vend. Tänud selle eest.",

		start_6_part_1 = "Tere, kas oled see mees sealt ülevalt! Kuidas läheb, vend!",
		start_6_part_2 = "Hei, kuidas läheb ja kõik sellised asjad..mu mees.",
		start_6_part_3 = "Kuule, tegelt ma vajasin sind jälle üheks missiooniks, tead küll..",
		start_6_part_4 = "Jah jah, sa tead, millest ma räägin, sa tead, millest ma räägin..",
		start_6_part_5 = "Oksi, jah jah, muidugi teed sa. Tegelikult saadan sulle selle telefoni peale.",
		start_6_part_6 = "Tee seda, mida sa pead tegema suur vend, armastus selle eest.",

		start_7_part_1 = "Jah, jah, jah, jah, jah, see on- hei, see on see idioot varem, vend!",
		start_7_part_2 = "Mäletan seda tüüpi! Jah, hei, sa oled naljakas tüüp vend, mulle meeldid sa, mulle meeldid sa..",
		start_7_part_3 = "Oi, mul on jälle vaja, et sa mulle oksi tooksid. Kiirusta suurmees.",
		start_7_part_4 = "Ma saadan teile pingi, ma saadan teile üksikasjad.. Jah, jah..",
		start_7_part_5 = "Ja pidage meeles..",
		start_7_part_6 = "Pool sellest on minu oma, nii et ärge- ärge võtke midagi sellest endale või ma vannun, et ma lõikan teid välja siin, vend, okei.",

		start_8_look_to_sides_part_1 = "Ay vend, ma vannun, et nägin Gogginschmieli just mööda minna, vend..",
		start_8_look_to_sides_part_2 = "Ay tulge siia, tulge siia, tulge siia vend, ärge proovige olla sööt, vend.",
		start_8_look_to_sides_part_3 = "Yo, yo.. mida ma nüüd sulle vaja teen, on see, et sa korjad need tabletid minu jaoks.",
		start_8_look_to_sides_part_4 = "Ma vajan, et sa jooksutaksid mulle need pillid, korras, ülemus.",
		start_8_look_to_sides_part_5 = "Ma saadan sulle üksikasjad, kellega sa kohtud, sa tead ju, kuidas see käib, eks?",
		start_8_look_to_sides_part_6 = "Aga hoia madalat profiili, sest olen näinud palju politseisõidukeid mööda sõitmas, sa mõistad, eks?",
		start_8_look_to_sides_part_7 = "Kui sa aga vahele jääksid! Ära reeda mind, sest sa oled surnud vend!",
		start_8_look_to_sides_part_8 = "Sa saad aru, mida ma räägin? Aitäh.",

		start_9_look_to_sides_part_1 = "Kuule, ma ei valeta, ma just nägin, et üks politseiauto sõitis sealt mööda vend!",
		start_9_look_to_sides_part_2 = "Oled kindel, et sind ei jälgitud või midagi sellist?",
		start_9_look_to_sides_part_3 = "Sest ma ei valeta sulle, FIB viib praegu läbi mingit järgmise taseme asja, sõber.",
		start_9_look_to_sides_part_4 = "Neil on seal õhus mitu helikopterit ja muud sellist, sõber.",
		start_9_look_to_sides_part_5 = "Ma jälgin kõike ja tean kõike, sõber. Usalda mind selles.",
		start_9_look_to_sides_part_6 = "Jah jah... ta jälgis sind täielikult varem, sõber, kas mäletad... kas mäletad seda chargerit, millest mööda sõitsid, sõber?",
		start_9_look_to_sides_part_7 = "Aga ta ei lülitanud tulesid sisse? Usu mind aga..",
		start_9_look_to_sides_part_8 = "Jah, ma tean seda, ma tean seda.",

		start_burger_shot_part_1 = "Yo, ma nägin sind ühel korral Burger Shot'is...kas sa pöörad seal pihvi?",
		start_burger_shot_part_2 = "Jah, ma ei valeta, sa vajad kindlasti raha.",

		start_cop_1_part_1 = "Yo, ma tundsin Maze Banki fed'i lõhna, bro..",
		start_cop_1_part_2 = "Ma saan aru, et oled politseinik.",
		start_cop_1_part_3 = "Enne kui ma sinu väikese poisi cop auto välja puhun, on parem kutsuda backup'i.",

		start_cop_2_part_1 = "Tere, ametnik, me aitame lihtsalt Blaine'i maakonna haigeid.",
		start_cop_2_part_2 = "Siin ei toimu midagi ebaseaduslikku, vend.",

		start_gang_member_part_1 = "Vannun, et nägin seda ühe jõuguga lahinguosas..",
		start_gang_member_part_2 = "Jaa jaa, sa said kindlasti traktaadi, seda võib öelda, vaadates seda idiootlikku näomaalingut.",

		start_group_part_1 = "Kuulsin, et tahate meiega koos oksüpulbreid veeretada.",
		start_group_part_2 = "Ma ei valeta, rohkem on siiski parem, aga saan pille anda ainult ühele teie seltskonnale.",
		start_group_part_3 = "Veendu, et sa võtad selle ilusti enda kambajõmmidega ja teete selle ära, bro.",
		start_group_part_4 = "Sest praegu on aeg raha teenida, saad aru, bro?",
		start_group_part_5 = "Sa seisad siin liiga kaua, kiirusta, fuck off bro.",

		start_knife_part_1 = "Oookkayy, see on suurem Rambo sinu vööl, bro!",
		start_knife_part_2 = "Ära parem siin nende asjadega vehi, sest see läheb sulle venna halvasti, vend!",

		start_last_fail_part_1 = "Täitsa sinu poolt, mis sa ütled, bro? Ay, wag1 ja kõik muu, my guy!",
		start_last_fail_part_2 = "Ay tegelikult.. ei valeta, ma vajan sind uuesti väikesele missioonile..",
		start_last_fail_part_3 = "Jah jah.. sa tead, sa tead, mida ma mõtlen, sa tead, et ma mõtlen oksüd, jah, muidugi tead.",
		start_last_fail_part_4 = "Ay, ma saadan sulle asja telefoni peale.",
		start_last_fail_part_5 = "Sa tee, mida sa tegema pead suur vend, armastan seda.",

		start_legendary_tier_part_1 = "Ohhh, nii et sa oled suur boss selline?",
		start_legendary_tier_part_2 = "Legendaarne tase, jahh, tundub, et pead EDMi tarbeks kogu korruse ära ostma mu vend!",
		start_legendary_tier_part_3 = "Tule juba.",

		start_mechanic_part_1 = "Tere, kas sa parandad autosid?",
		start_mechanic_part_2 = "Tere, pärast seda vajan Asbo häälestamist, kuna see on liiga palju loksunud.",

		start_mercedes_part_1 = "Tere, armastan seda Mercedes-Benzi, mida sul on!",
		start_mercedes_part_2 = "Ma ei valeta, vajan seda sinult, kui sa oled selle väikese toiminguga valmis.",

		start_no_gun_part_1 = "Tere, tuled siia sõbralikul visiidil, nagu sa ei saaks röövitud.",
		start_no_gun_part_2 = "Sa oled õnnelik, et ooterid pole praegu liikvel, aga ..",
		start_no_gun_part_3 = "Ole järgmine kord relvastatud.",

		start_on_timer_1_part_1 = "Hei, ma ei saa sulle valetada, vend, sa ebaõnnestusid viimase korraga, seega mida sa siin teed?",
		start_on_timer_1_part_2 = "Ei, vend, tule tagasi hiljem, kui oled otsustanud oma käitumist parandada, sa LOLLpea.",

		start_on_timer_2_part_1 = "Ei, vend, sa pettisid mind viimati ..",
		start_on_timer_2_part_2 = "Mine minema ja tee midagi muud, sõber.",

		start_on_timer_3_part_1 = "Kas tõesti? Arvad, et saad pärast sellist läbikukkumist siia tagasi tulla, vend?",
		start_on_timer_3_part_2 = "Sul oleks parem minema minna enne kui ma ootersid sulle kallale kutsun, sõber!",

		start_on_timer_4_part_1 = "Jah, ma ei valeta, eelmine kord läksid päris korralikult alt, sõber..",
		start_on_timer_4_part_2 = "Ma ei valeta, kui sa siin veel umbkaudu 2 sekundit ootad, läheb sul päris halvasti, sõber..",

		start_on_timer_5_part_1 = "Kuule, mis toimub?",
		start_on_timer_5_part_2 = "Ma ei valeta, eelmine kord korralikult alt läksid, sa ei saanud pilte kätte, sõber.",
		start_on_timer_5_part_3 = "Nagu, sa korralikult alt läksid, sõber..",
		start_on_timer_5_part_4 = "Ära tule enam siia alla, sõber! Sa tead, mida ma öelda tahan?",
		start_on_timer_5_part_5 = "Ma tean su nime, olen sinu nägu näinud. Sa oled siin lõpetanud.",

		start_on_timer_6_part_1 = "Jah, sellel tüübil on mingi jama probleem, kas sa saad aru? Tuleb siia tagasi vabandada ja nagu poleks midagi juhtunud..",
		start_on_timer_6_part_2 = "Ei, nii siin asjad ei käi, sõber.",
		start_on_timer_6_part_3 = "Lase parem jalga kohe siit, vend!",

		start_on_timer_7_part_1 = "Jah, ma ei valeta, see tüüp ajas väga mööda..",
		start_on_timer_7_part_2 = "Kas sa näed seda kuttigi siin? Näed seda jobu siin jah?",
		start_on_timer_7_part_3 = "Ta ajas asjad sassi, a kutt tule siia!",
		start_on_timer_7_part_4 = "Jah, ma pean ausalt ütlema, et oled jobu. Lahku siit, tule hiljem tagasi.",

		start_on_timer_8_part_1 = "Jah, sa oled mingi mees bro..",
		start_on_timer_8_part_2 = "See tüüp liigub MO asjades ringi bro.. sassitab MO asjad üles bro.. ajab MO rahva närvi, bro.",
		start_on_timer_8_part_3 = "Tuleb siis tagasi ootamas raha. Ootab maksmist bro!",
		start_on_timer_8_part_4 = "Oota leiba, sõber.. sul ei ole mingit leiba saada..",
		start_on_timer_8_part_5 = "Sa saad ainult purupudi, mine minema mu [tänavanurga nimi] nurgalt!",
		start_on_timer_8_part_6 = "Lahku siit, sa oled läbi ja kõik sellega seonduv!",
		start_on_timer_8_part_7 = "Telefon piiksatas ka, oled läbi! Mul on keegi teine sellega tegelemas.",

		start_over_31d_part_1 = "Ma ei valeta sõber! Oled liiga kaua siin olnud..",
		start_over_31d_part_2 = "Palun lase midagi kiiresti korda ja tule tagasi, sõber.",

		start_over_100k_part_1 = "Miks sa toitu müüd, kui sul juba üle 100 kukru raha on?",
		start_over_100k_part_2 = "See pole ju sularahas, eks? Või muidu saad kindlasti röövitud, sõber.",

		start_revving_part_1 = "Kui sa ikka veel selle jama autot möllitad, siis meil on probleeme.",
		start_revving_part_2 = "Rahune maha, enne kui ma Sind rahustan, sõber!",

		start_staff_1_part_1 = "Ei ole Sa ju administraator, kes peaks dushi päid ja muid selliseid tegevusi keelama?",
		start_staff_1_part_2 = "Fuck it, mul on raha vaja, aga ma jälgib Sind, adminnid.",

		start_staff_2_part_1 = "Broo, oled juba teine moderator, kes täna oksi jooksutab..",
		start_staff_2_part_2 = "Teil on tarvis tööd teha, kuid mitte selle tööga.",

		start_streamer_part_1 = "Yoooo, see on see kutt, kes arvab, et ta on suur striimer!",
		start_streamer_part_2 = "Yo Ls chat'is, tornige see tüüp üle!",

		start_stressed_part_1 = "Bro! Miks su käed värisevad?!",
		start_stressed_part_2 = "Mine võta suitsetamispaus või midagi bro, sest liigud juba liiga stressirohkelt.",

		start_subaru_part_1 = "Ay see Subaru peab olema karm maastikul g!",
		start_subaru_part_2 = "'sest see rada, mida ma sind viin, on erinev!",

		start_under_10k_part_1 = "Vennike, ma tean, et sul on vähem kui 10k nime all!",
		start_under_10k_part_2 = "Nii et miks sa ei võta oma vaest perset ja need tabletid kiiresti asukohta? Minu vend.",

		start_under_24h_part_1 = "Sa oled loom, sõber! Hoia hoogu!",

		start_zombie_pills_part_1 = "Olgu, sa just lõpetasid Z Pillide võtmise ja nüüd tahad Oxy Pillsi võtta..",
		start_zombie_pills_part_2 = "Sa oled kindlasti kräkker!",

		still_pressing_e_1_part_1 = "Aitäh sõber, miks sa oled meeleheitel?",
		still_pressing_e_1_part_2 = "Lõpeta tagasi tulemine ja vaata oma telefoni. Mul on juba saadetud sulle selle asukoha koordinaadid.",
		still_pressing_e_1_part_3 = "Jah, kontrolli seda.. kontrolli seda..",

		still_pressing_e_2_part_1 = "Sõber, kas sa oled mingi loll või midagi?",
		still_pressing_e_2_part_2 = "Ma just saatsin sulle asukoha koordinaadid, kas sa oled pime või midagi?",
		still_pressing_e_2_part_3 = "Vaata telefoni sõber, mine ise kuhugi ära!",

		still_pressing_e_3_part_1 = "Kuule, ma ei valeta, kui sa selle veel kord minuga teed, olen sulle liiga palju kordi öelnud..",
		still_pressing_e_3_part_2 = "Kui sa seda veel kord teed, saadan kindlasti ootersi su järele.",

		still_pressing_e_4_part_1 = "Sa võtkad perse nüüd, mine kuhugi ära!",

		still_pressing_e_5_part_1 = "Kas sa oled loll või midagi?",
		still_pressing_e_5_part_2 = "Tuled ikka mulle suure häälitsusega jutustama?",
		still_pressing_e_5_part_3 = "Kuule, parem ole kohe vait, muidu ma löön sind initsi sugune puruks!",

		still_pressing_e_6_muffled_part_1 = "See tüüp on tõesti ebameeldiv..",

		still_pressing_e_7_muffled_part_1 = "See tüüp on tõesti ebameeldiv, sõber.",
		still_pressing_e_7_muffled_part_2 = "Ta on kindlasti ebameeldiv, ta tuleb pidevalt tagasi!",
		still_pressing_e_7_muffled_part_3 = "Ta arvab, et ma lähen veel rohkem närvi, kuid ma ei lähe enam sõber!",

		still_pressing_e_8_part_1 = "Tõsiselt, sa hakkad mind päris tõsiselt närvi ajama..",
		still_pressing_e_8_part_2 = "Nii et lõpeta see survamine sõber.",

		still_pressing_e_9_part_1 = "Kui sa jätkad seda kuradi E vajutamist, siis sa ajad mind tõsiselt endast välja sõber.",
		still_pressing_e_9_part_2 = "Ma muutun metafooriliseks ja lõhun su selle kähku maha, saast küll...",

		taking_too_long_1_part_1 = "Kuule sõber, sa võtad ikka juba liiga kaua aega juba, tead ju...",
		taking_too_long_1_part_2 = "Sa peaksid tõsisemalt ka kiirustama hakkama.",

		taking_too_long_2_part_1 = "Kuule, kui sa nii kaua segaduses oled, siis meil on sulle suuri probleeme...",
		taking_too_long_2_part_2 = "Nüüd on juba hilja, sa oled juba liiga hiljaks jäänud... pane kiiremini toimetama!",

		taking_too_long_3_part_1 = "Kuule vend, sa kisud ikka liiga pikale juba, kas proovid mulle tööd varastada või?",

		taking_too_long_5_part_1 = "Kas sa arvad, et sa oled naljakas või? Kas sa arvad, et see on mingi nali suurem mees?",
		taking_too_long_5_part_2 = "Kuule, tule kohe siia, näe, mis sinuga juhtub.",

		taking_too_long_6_part_1 = "Kuule, sa ei tohi minuga nalja teha. Tahan kohe oma kraami kätte saada.",
		taking_too_long_6_part_2 = "Kiirusta sa kuradi nolk.",

		taking_too_long_7_part_1 = "Ma tean, millist autot sa juhid.",
		taking_too_long_7_part_2 = "Nägin, kui sa lahkusid. Ära arva, et oled ohutu.",

		taking_too_long_8_part_1 = "Aite, see on viimane võimalus, sõber.",
		taking_too_long_8_part_2 = "Kui sa jälle kaua võtad, siis ma helistan oma meestele ja olukord muutub karmiks.",
		taking_too_long_8_part_3 = "Sa parem kiirusta, kella tiksumine käib.",

		too_many_people_1_part_1 = "Oi, ma ei valeta, on palju rahvast minu ümber, sõber!",
		too_many_people_1_part_2 = "Miks te kõik siin olete? Kas üritate siit ala üle võtta või midagi, sõber?",
		too_many_people_1_part_3 = "Ma vannun jumala nimel, et mul on relvad ja ma olen valmis kõigeks.",
		too_many_people_1_part_4 = "Sa näed, mida ma Aitan, sõber..",
		too_many_people_1_part_5 = "Tagasi KÕIK teist, ma ütlesin KÕIK, jah see tähendab sind sõber, tastu sa sõber!",

		too_many_people_2_part_1 = "Yo, ma ei valeta, seal on liiga palju inimesi praegu sõber..",
		too_many_people_2_part_2 = "Sa liigutad praegu päris kahtlaselt, kõigi nende inimestega teie kõrval, sõber.",
		too_many_people_2_part_3 = "Sa ütlesid, et nendel osadel on ainult üks teist, mitte nagu 4 teist, tõprad sõber..",
		too_many_people_2_part_4 = "Mul pole tähtis, kas oled mingisuguses jõugus, kas ma hoolin sellest vend? Ei, vend..",
		too_many_people_2_part_5 = "Tagane oma inimestega kohe, enne kui asi tõsiseks muutub vennas.",

		tutorial_1_part_1 = "Tere vend, kuidas läheb? Kas sa tahad minu eest oxyt vedada?",
		tutorial_1_part_2 = "Tipp-topp! Ma ei valeta sulle, vend, ma olen otsinud kedagi, kes aitaks mu narkoviisadega.",
		tutorial_1_part_3 = "Kuule, kuule aga..",
		tutorial_1_part_4 = "Mul on hulgaliselt võltsitud retsepte, mis on valmistatud põhjas, vend.",
		tutorial_1_part_5 = "Jah, aga ma ei saa valetada, mul on vaja neid asju sulle järele korjata-",
		tutorial_1_part_6 = "Ja siis, mida ma vajan, kuula mind, kui räägin sinuga!",
		tutorial_1_part_7 = "Võta need linna ja vaheta need sisse!",
		tutorial_1_part_8 = "Jah.. Jah.. Sulle on vaja neid sisse vahetada.",
		tutorial_1_part_9 = "Ma saadan sulle detailid telefoni peale, kontrolli oma GPSi ja kõike muud, ma saadan sulle, ma olen sinuga..",
		tutorial_1_part_10 = "Aga kuule.. Sa ei tohi liiga kaua aega võtta.. muidu pean sind jälitama hakkama, sõber.",
		tutorial_1_part_11 = "Usu mulle, et see pole sinu jaoks hea, ma ei saa valetada.",
		tutorial_1_part_12 = "Jah, hakkame minema suur vend... lõpeta minuga rääkimine, lõpeta mu nägu vaatamine ja kiirusta jumala eest!",

		tutorial_2_part_1 = "Oi, mis on, sõber? Kas sa tahad minu jaoks mingit oksi joosta?",
		tutorial_2_part_2 = "Yoo, see on hea! Ma ei suuda sulle praegu valetada, et olen kõikjale abi otsinud.",
		tutorial_2_part_3 = "Tere, vend. Ma sain siinsamas põhja poolt palju võltsretsepte tehtud.",
		tutorial_2_part_4 = "Hei, mida ma vajan, on see, et jooksed alla ja võtad need retseptid mulle, sõber...",
		tutorial_2_part_5 = "Jah, ja kuule, kuule, vii need alla linna sõber, ning lunasta need apteekides.",
		tutorial_2_part_6 = "Jah, jah, ma saan aru...",
		tutorial_2_part_7 = "Ma saadan sulle detailid telefoni teel, nii et kontrolli GPS-i ja kõike muud, ma olen sulle sõber.",
		tutorial_2_part_8 = "Kuid oi... ära võta liiga kaua aega... muidu pean ma sind taga ajama, sõber.",
		tutorial_2_part_9 = "Ja uskuge mind, see ei näe hea välja teie jaoks, ma ei saa selle kohta valetada.",
		tutorial_2_part_10 = "Jah, lähme suur vend, lõpeta minuga rääkimine, ära vaata mu nägu ja kiirusta kurat !",

		tutorial_3_part_1 = "Tere, mu vend! Kas sa tahad praegu minu jaoks oxy'd vedada?",
		tutorial_3_part_2 = "Jah.. jah.. see on hea, sest ma ei saa valetada, et olen selle kõige jaoks abi otsinud.",
		tutorial_3_part_3 = "Jah, jah, jah.. Mul on siin üles põhja poole tehtud mitu võltsretsepti. Usu mind selles küsimuses.",
		tutorial_3_part_4 = "Jah, kuid ma ei saa valetada, ma vajan SINU abi retseptide väljaostmiseks.",
		tutorial_3_part_5 = "Ja siis põhimõtteliselt viima need linna ja lunastama erinevates apteekides ja kõik see vend.",
		tutorial_3_part_6 = "Jah, ma saan hakkama, sest praegu teen ühe asja...",
		tutorial_3_part_7 = "Sa näed seda asukohta ekraanil, eks? Ma saadan sulle selle asukoha andmed, vaata oma GPS-i, vend.",
		tutorial_3_part_8 = "Ära aega raiska, sest vastasel korral võivad nad sind kätte saada, nii et liiguta ennast, suur mees.",
		tutorial_3_part_9 = "Jah, läheme juba suur vend, lõpeta minuga rääkimine, ära vaata mu nägu ja kiirusta kurat teiega suur vend.",
		tutorial_3_part_10 = "Armastus vend, armastus."
	},

	panel = {
		loading_title = "Laadimine",
		error_title = "Midagi läks valesti",

		was_banned = "Bännitud",
		loading = "Mängija andmete laadimine...",
		loading_screenshot = "Laen pilti...",
		screenshot_failed = "Ei õnnestunud pilti teha.",
		player_no_character = "Mängijal puudub tegelane.",
		no_warnings = "Hoiatusi pole",
		not_shown_warnings = "${count} rohkem hoiatusi pole näidatud",
		system_issuer = "Süsteem",
		add_note_title = "Märkme lisamine",
		message_placeholder = "${playerName} tegi oopsie...",

		type_note = "Märkus",
		type_warning = "Hoiatus",
		type_strike = "Karistus",
		type_system = "Süsteem",

		button_cancel = "Tühista",
		button_add = "Lisa",
		button_close = "Sulge",
		button_new = "Uus märge",
		button_back = "Tagasi",
		button_screenshot = "Pilt",

		ping = "${ping}ms",
		fps = "${fps}fps",
		playtime = "${time} mängitud",

		failed_load_player = "Mängija andmete laadimine ebaõnnestus. Kas sisestasid kehtiva serveri id?",
		failed_add_warning = "Hoiatuse lisamine ebaõnnestus.",

		user_indefinitely_banned_warning_no_reason = "Ma keelasin selle isiku määramata ajaks ilma põhjenduseta. See hoiatus genereeriti automaatselt keelu tulemusena.",
		user_indefinitely_banned_warning = "Ma keelasin selle isiku määramata ajaks põhjusega `${reason}`. See hoiatus genereeriti automaatselt keelu tulemusena.",
		user_temporarily_banned_warning_no_reason = "Ma keelasin selle isiku ajutiselt ilma määratletud põhjuseta ${displayTime}. See hoiatus genereeriti automaatselt keelu tulemusena.",
		user_temporarily_banned_warning = "Ma keelasin selle isiku ajutiselt põhjusel `${reason}` ${displayTime}. See hoiatus genereeriti automaatselt keelu tõttu."
	},

	panic = {
		press_panic_button = "Sa pead 5 sekundi jooksul vajutama paanikanuppu (X).",
		panic_button_timeout = "Sa ei vajutanud paanikanuppu õigeaegselt.",

		panic_button_title = "[Häirekeskus]",

		panic_button_unit = "10-14, ${unitId} ${lastName} ${label} on all.",
		panic_button_no_unit = "10-14, ${lastName} ${label} on all.",

		panic_blip = "10-14 ${lastName}",

		label_officer = "politseinik",
		label_paramedic = "kiirabiarst"
	},

	paper_bags = {
		fill_bag = "[${SeatEjectKey}] Täida Paberkott",
		no_bags = " Sul ei ole ühtegi paberkotti.",
		no_bag_items = " Sul ei ole ühtegi eset, mida saaksid paberkoti sisse panna.",
		close_bag = "Sulge kott",
		cancel_bag = "Tühista",
		title = "Paberkott",
		failed_fill = "Ei õnnestunud paberkotti täita.",
		filled_bag = "Paberkott täidetud edukalt."
	},

	parking_meters = {
		not_paid = "Maksmata",
		insert_dollar = "[${InteractionKey}] Sisesta $${amount}",

		no_cash = "Sul ei ole $4 sularahas.",
		max_time = "See parkimisautomaat on juba maksimaalselt täis.",
		failed_pay = "Parkimisautomaadi makse ebaõnnestus."
	},

	pause_menu = {
		sunday = "Pühapäev",
		monday = "Esmaspäev",
		tuesday = "Teisipäev",
		wednesday = "Kolmapäev",
		thursday = "Neljapäev",
		friday = "Reede",
		saturday = "Laupäev",

		bank = "Pank",
		cash = "Sularaha"
	},

	pawn_shops = {
		pawn_shop = "Pantipood",
		pawn_shop_far = "Pääse pantipoodi",
		pawn_shop_near = "[${InteractionKey}] Pääse pantipoodi",
		no_items_to_sell = " Sul ei ole ${itemLabel} müümiseks midagi.",
		close_menu = "Sulge menüü",

		sell_items = "Müü ${itemLabel}",
		press_to_sell_items = "[${InteractionKey}] Müü ${amount}x ${itemLabel}",
		sold_items = "Müüsid ${sellAmount}x ${itemLabel} eest $${sellPrice}.",
		daily_limit_reached = "Oled jõudnud päevase limiidini, müüja ei osta enam esemeid.",
		illegal_pawn_shop_id = "Üritades edastada väärtuseid pandimajale, mis ei eksisteeri.",

		used_pawn_shop_title = "Kasutatud pandimaja",
		used_pawn_shop_details = "${consoleName} kasutas pandimaja ja müüs ${sellAmount} `${itemLabel}` ning teenis $${sellPrice}."
	},

	ped_messages = {
		attempt_succeeded = "katsetas ${attemptMessage} ja õnnestus",
		attempt_failed = "katsetas ${attemptMessage}, kuid see ebaõnnestus",
		dice_message = "veeretas täringut ja sai numbriks ${diceNumber}",
		roll_message = "veeretas kohandatud täringut pakkumisega ${rolls}d${max} ja sai tulemuseks ${totalValue}",
		rps_message = "mängis kivi-paber-käärid ja valis ${rps}",
		citizen_card_message = "näitas isikut tõendavat dokumenti (${characterId})",
		driver_license_message = "näitas ID-kaarti (${characterId})",
		badge_message = "näitas silti (${characterId})",
		license_message = "${characterId} näitas litsentsi.",
		ped_message_logs_title = "Ped sõnum",
		ped_message_logs_details = "${consoleName} saatis ped sõnumiga järgneva sõnumi: `${pedMessage}`",
		attached_ped_message_logs_title = "Kinnitatud ped sõnum",
		attached_ped_message_logs_details = "${consoleName} kinnitas ped sõnumi järgneva sõnumiga: `${pedMessage}`",
		chat_ped_messages_enabled = "Ped sõnumid kuvatakse nüüd jututoas.",
		chat_ped_messages_disabled = "Ped sõnumid ei kuvata enam jututoas.",
		me_message_chat_title = "/mina [${serverId}]",
		inspect_chat_title = "/uurima [${serverId}]",
		frisk_chat_title = "/läbiotsima [${serverId}]",
		do_message_chat_title = "/tegutse [${serverId}]",
		attempt_message_chat_title = "/katseta [${serverId}]",
		dice_message_chat_title = "/täringud [${serverId}]",
		roll_message_chat_title = "/veereta [${serverId}]",
		rps_message_chat_title = "/rps [${serverId}]",
		description_message_chat_title = "/kirjeldus [${serverId}]",
		message_too_long = "Sõnum sisaldab liiga palju tähemärke või ridu!",
		card_command_wait = "Sa just võtsid kaardi, oota hetk enne järgmise võtmist.",
		ped_message_duplicate = "Sa just saatsid selle sõnumi, oota veidi enne uuesti saatmist."
	},

	ped_objects = {
		illegal_ped_object = "Üritad lisada jalakäijate objekti, mis pole 'lubatud' jalakäijate objektide loendis.",
		illegal_ped_weapon_object = "Üritad lisada jalakäijate relvade objekti, mis pole relvade loendis.",
		illegal_raw_ped_object = "Õigusteta käsu esitamine toormurmelpuuobjektide lisamiseks."
	},

	ped_task = {
		network_id_invalid = "Võrgu-ID on kehtetu.",
		ped_not_found = "Jalakäija võrgu-ID-ga `${networkId}` ei leitud.",
		tracked_ped = "Jälgitav jalakäija",
		tracked_ped_is = "Jalakäija (${entity}) on:"
	},

	ped_spawn = {
		ped_missing_model = "Puudub mudeli parameeter.",
		ped_spawn_success = "Jalakäija edukalt loodud.",
		ped_failed_spawn = "Ebaõnnestus pedi loomine.",
		invalid_weapon = "Vigane relv.",
		ped_remove_success = "Eemaldatud loodud pedit edukalt.",
		ped_failed_remove = "Ei õnnestunud loodud pede eemaldada.",
		ped_task_success = "Määrati '${task}' ülesanne loodud pedele edukalt.",
		ped_failed_task = "Ei õnnestunud määrata '${task}' ülesannet loodud pedidele.",
		invalid_target = "Vigane serveri ID.",
		missing_task = "Puudub tööülesande parameeter.",
		invalid_task = "Vigane pedi ülesanne '${task}'.",
		target_required = "Selle pedi ülesande jaoks on vajalik kehtiv sihtmärk.",
		ped_emote_success = "Loojangut mängisid '${emote}' emotsioone.",
		ped_failed_emote = "Ei õnnestunud tekitatud pede mängida '${emote}' emotsioone.",
		invalid_emote = "Kehtetu emotsioon '${emote}'.",
		missing_emote = "Puuduv emotsiooni parameeter.",

		emote_list = "Saadaval pede emotsioonid: ${list}.",
		task_list = "Saadaval pede ülesanded: ${list}."
	},

	ped_steal = {
		ped_steal_reset = "Mängijate ped on lähtestatud.",
		ped_steal_success = "Ped-i välimus varastati edukalt.",
		ped_steal_failed = "Ped-i välimuse varastamine ebaõnnestus.",
		ped_not_found = "Mängija pedi ei leitud."
	},

	ped_takeover = {
		failed_reset = "Ei õnnestunud naasta algse pediga.",
		failed_reset_not_exist = "Teie algset pedi ei eksisteeri või see pole teie lähedal.",
		failed_takeover = "Ped-i ülevõtmine ebaõnnestus.",
		invalid_network_id = "Võrgu ID on sobimatu."
	},

	peds = {
		ped_robbing_injection = "Liigne ped-rahakottimine! (Serveri ajalimiitide eiramine, ilmselt kasutades süstalt selleks.)",
		robbed_ped_logs_title = "Röövitud ped",
		robbed_ped_logs_details = "${consoleName} röövis pedi ja sai $${payout}."
	},

	pepper_spray = {
		press_to_pepper_spray = "Vajutage ~INPUT_ATTACK~, et kasutada piprapritsi.",
		using_pepper_spray = "Kasutab piprapritsi."
	},

	phone = {
		app_settings = "Seaded",
		app_contacts = "Kontaktid",
		app_calls = "Telefonikõned",
		app_messages = "Sõnumid"
	},

	phone_numbers = {
		no_phone_number_set = "Telefoninumber pole määratud.",
		invalid_format = "Määratud telefoninumber on valesti vormindatud.",
		invalid_length = "Määratud telefoninumber on vale pikkusega.",
		invalid_characters = "Määratud telefoninumbri sisu sisaldab vigaseid märke.",
		phone_number_changed_to = "Teie telefoninumber on muudetud ${phoneNumber} peale.",
		phone_number_taken = "Telefoninumber ${phoneNumber} on võetud.",
		database_error = "Tekkis taustabaseeri tõrge.",
		no_packages = "Teil pole sellesse pakette.",
		api_error = "Meie tagapoolne API tagastas veateate.",
		api_not_available = "Meie tagapoolne API pole saadaval.",
		phone_number_is_available = "Telefoninumber ${phoneNumber} on saadaval.",
		phone_number_is_not_available = "Telefoninumber ${phoneNumber} pole saadaval.",

		no_phone = "Sul pole telefoni.",
		nobody_nearby = "Kedagi piisavalt lähedal, et oma numbrit jagada, ei leidu.",
		shared_number = "${fullName} jagas sinuga oma telefoninumbrit. Kasuta /yes selle vastuvõtmiseks ja uue kontakti loomiseks või /no tagasilükkamiseks.",
		shared_number_expired = "Telefoninumbri jagamise päring on aegunud.",
		shared_number_declined = "Sa keeldusid telefoninumbri jagamise päringust.",
		failed_to_share = "Telefoninumbri jagamine ebaõnnestus.",
		number_share_timeout = "Sa just jagasid oma telefoni numbrit. Palun oota hetk enne uuesti proovimist.",
		phone_number_shared = "Teie telefoninumber on edukalt jagatud ${nearby} lähedalasuvale mängijale."
	},

	plants = {
		planting_seed = "Seemne istutamine",
		seed_planted = "Seemne istutamine õnnestus.",
		failed_plant = "Seemne istutamine ebaõnnestus.",
		cant_plant_here = "Sa ei saa siin seemet istutada.",

		press_water_plant = "[${InteractionKey}] Kasta",
		press_harvest_plant = "[${InteractionKey}] Saagi",
		press_destroy_plant = "[${SeatEjectKey}] Labidas",
		watering_plant = "Taime kastmine",
		harvesting_plant = "Taime koristamine",
		destroying_plant = "Taime hävitamine",

		plant_weed = "Taime umbrohuks muutmine",

		planted_seed_logs_title = "Külvatud seeme",
		planted_seed_logs_details = "${consoleName} külvati ${plant} (#${plantId}) materjalile ${material}.",
		harvested_plant_logs_title = "Koristatud taim",
		harvested_plant_logs_details = "${consoleName} koristas ${plant} (#${plantId}) ja sai ${items}.",
		watered_plant_logs_title = "Kastetud taim",
		watered_plant_logs_details = "${consoleName} kastis ${plant} (#${plantId}).",
		ran_over_plant_logs_title = "Ületas taime",
		ran_over_plant_logs_details = "${consoleName} ületas taime (#${plantId}).",
		shoveled_plant_logs_title = "Labidaga üles kaevatud taim",
		shoveled_plant_logs_details = "${consoleName} kaevas labidaga (hävitas) taime (#${plantId}).",

		total_plants = "Kokku taimi: ${count}",
		nearby_plants = "Lähedal asuvad taimed: ${count}"
	},

	player_control = {
		unable_to_drive_for_yourself = "Sa ei saa iseennast juhtida.",
		player_is_not_nearby = "Mängija serveri ID-ga ${serverId} ei ole läheduses.",
		player_is_not_the_drive_of_a_vehicle = "Mängija serveri ID-ga ${serverId} ei ole sõiduki juht.",
		press_to_stop_drive_for = "Vajuta ~INPUT_FRONTEND_CANCEL~, et lõpetada sõit mängijaga."
	},

	player_scales = {
		reset_player_scale_for = "Lähtesta mängija suurus kasutajale ${consoleName}.",
		set_player_scale_to_for = "Määra mängija suurus ${scale}-ks kasutajale ${consoleName}.",
		reset_player_scale = "Lähtesta mängija suurus.",
		set_player_scale_to = "Määra mängija suurus ${scale}-ks.",
		set_player_scale_no_permission = "Mängijal ei olnud vajalikku luba mängija mastaabi muutmiseks.",
		player_is_already_set_to_scale = "${consoleName} on juba seadistatud mastaabiks `${scale}`.",
		you_are_already_set_to_scale = "Olete juba seadistatud mastaabiks `${scale}`.",
		player_is_not_scaled = "${consoleName} ei ole skaalastatud.",
		you_are_not_scaled = "Teid ei ole skaalastatud."
	},

	player_stats = {
		hp = "HP",
		armor = "Armor",
		updated_render_range = "Uuendatud renderdamiste vahemik ${renderRange}.",
		turned_player_stats_on = "Mängija statistika sisse lülitatud.",
		turned_player_stats_off = "Mängija statistika välja lülitatud."
	},

	players = {
		player_left = "Mängija lahkus [${serverId}]",
		player_exited = "Mängija lahkus [${serverId}]",
		player_crashed = "Mängija kukkus välja [${serverId}]"
	},

	pole_dancing = {
		press_to_strip_dance = "Vajuta ~INPUT_CONTEXT~, et paljastustantsu teha.",
		this_pole_is_occupied = "See pulk on hõivatud.",
		stop_dancing = "Lõpeta tantsimine",
		change_dance = "Muuda tantsu (${animationId})",

		no_model_name_set = "Modeli nime pole määratud.",
		invalid_model = "Model '${modelName}' ei ole kehtiv.",
		pole_dancing_offset = "Model '${modelName}': vector3(${x}, ${y}, ${z})"
	},

	pools = {
		pools_overflowing = "Basseinid ülevoolavad: ~r~${poolsOverflowing}"
	},

	prescriptions = {
		redeem_prescription = "[${SeatEjectKey}] Retsepti lunastamine",

		redeemed_prescription = "Retsepti edukalt lunastatud.",
		failed_redeem = "Ei õnnestunud lunastada retsepti.",

		remeeded_prescription_logs_title = "Lunastatud Retsept",
		remeeded_prescription_logs_details = "${consoleName} lunastas retsepti ja sai 1x `${item}`."
	},

	printer = {
		use_printer = "[${InteractionKey}] Kasuta Printerit",
		failed_to_print = "Printimine ebaõnnestus.",

		no_paper = " Sul ei ole paberit.",
		invalid_url = "Vigane pildi URL.",
		invalid_domain = "See domeen pole lubatud.",
		print = "Prindi",
		printing = "Printimine...",
		document_title = "Minu lahe pealkiri",
		image_url = "https://files.catbox.moe/ttt1e4.jpg",

		printed_logs_title = "Prinditud pilt",
		printed_logs_details = "${consoleName} trükkis `${itemName}` kasutades `${paperType}` pildi URL-iga `${url}`, pealkiri: `${title}`, ülemine tekst: `${topText}` ja alumine tekst: `${bottomText}`."
	},

	prop_hide = {
		no_model = "~r~Mudel puudub",
		status_text = "Rekvisiidid: ~g~${label}"
	},

	properties = {
		no_address_set = "Aadressi pole määratud.",
		no_address_found = "Aadressi '${address}' ei leitud.",
		marker_set = "Marker ja teekonnaleidja määratud aadressile ${address}.",
		removed_marker = "Eemaldatud märker ${address} kohta.",
		entrance = "Sissepääs",
		back_entrance = "Tagaukse sissepääs",
		garage = "Garaaž",
		located_address = "Eliminar Cuenta de Ahorros"
	},

	props = {
		illegal_prop_item_id = "Mängija üritas kasutada rekvireeritud esemega ebaseaduslikku eseme ID-d.",
		managing_props_help = "Hetkel haldad sa ise esemeid. Astu eseme juurde ja vajuta ~INPUT_CONTEXT~, et see korjata.",
		total_props = "Esemeid kokku: ${count}",
		active_props = "Aktiivseid esemeid: ${count}",
		press_to_pick_up = "[${InteractionKey}] Korja üles",
		pick_up = "Võta",
		picking_up = "Võtmine käsil",
		press_to_destroy = "[${InteractionKey}] Hävita",
		destroy = "Hävita",
		destroying = "Hävitamine käsil",
		prop = "Objekt",
		model_parameter_missing = "Puudub `model` parameeter.",
		model_parameter_invalid = "`model` parameeter `${model}` on vigane.",
		spawned_prop_non_networked = "Loodi mittevõrgutoimeline objekt mudeliga `${model}`.",
		spawned_prop_networked = "Loodi võrgutoimeline objekt mudeliga `${model}`.",
		spawned_exact_prop = "Eseme täpne taaslavastus õnnestus.",
		failed_to_spawn_prop = "Ese mudelega `${model}` ei õnnestunud taaslavastada.",
		not_able_to_spawn_in_vehicle = "Sõidukis olles ei saa eset taaslavastada.",
		not_able_to_spawn_while_dead = "Surnuna ei saa eset taaslavastada.",
		not_able_to_spawn_while_moving = "Ese taaslavastamiseks tuleb seista paigal.",
		stand_still_to_place_prop = "Ese paigutamiseks tuleb seista paigal.",
		prop_no_interior = "Seda eset saab paigutada ainult õues.",
		invalid_culling_value = "Vigane piiranguväärtus, peab olema vahemikus 10m kuni 2,500m.",
		invalid_model = "Vigane/Tundmatu mudel `${name}` (${hash}).",

		invalid_prop_id = "Vigane eseme id.",
		prop_deleted = "Rekvisiidiga ${propId} seotud objekt on kustutatud.",

		invalid_wipe_radius = "Kehtetu objektide kauguse määr (1 kuni 100).",
		wipe_successful = "Edukalt pühiti ${amount} prop(i).",
		wipe_failed = "Propide puhastamine ebaõnnestus.",

		placing_prop = "Rekvisiidi paigutamine",
		pickup_prop = "Rekvisiidi korjamine",
		setting_up_tire_wall = "Rehvimüüri seadistamine",
		destroying_tire_wall = "Rehvimüüri hävitamine",

		placed_prop_logs_title = "Paigaldatud oma",
		placed_prop_logs_details = "${consoleName} paigaldas eseme `${itemName}` asukohta ${coords} (ID: ${propId}).",
		spawned_prop_logs_title = "Loodud ese",
		spawned_prop_logs_details = "${consoleName} loob eseme mudeliga `${modelName}` asukohas ${coords} (ID: ${propId})."
	},

	radio = {
		frequency = "Sage",
		switch = "Lüliti",
		radio_turned_off = "Raadio on välja lülitatud.",
		radio_removed = "Olete kaotanud oma raadio.",
		no_radio = "Teil ei ole raadiot.",
		unable_to_use_radio_while_cuffed = "Sa ei saa käsiraudades olles raadiot kasutada.",
		unable_to_use_radio_while_down = "Sa ei saa pikali olles raadiot kasutada.",
		unable_to_use_radio_as_animal = "Loomana te ei saa raadiot kasutada.",
		frequency_set_to_streamer = "Sagedus on seatud.",
		frequency_set_to = "Sagedus on seatud ${frequency} peale.",
		frequency_already_set_to = "Sagedus on juba seatud ${frequency} peale.",
		radio_volume_same = "${consoleName} eliminó una cuenta de ahorros llamada `${accountName}` con el ID ${accountId}.",
		radio_volume_reset = "Raadio helitugevus on nüüd lähtestatud.",
		radio_volume_set = "Retiro de Ahorros",
		radio_volume_current = "${consoleName} retiró $${amount} de la cuenta de ahorros ${accountId}.",
		radio_volume_current_default = "Sinu praegune raadio helitugevus on vaikimisi.",
		radio_sound_effects_same = "Raadio heliefektide helitugevus on juba määratud `${radioSoundEffects}`.",
		radio_sound_effects_reset = "Raadio heliefektide helitugevus on nüüd lähtestatud.",
		radio_sound_effects_set = "Raadio heliefektide helitugevus on nüüd määratud `${radioSoundEffects}`-le.",
		radio_sound_effects_current = "Raadio heliefektide helitugevus on hetkel määratud `${radioSoundEffects}`-le.",
		radio_sound_effects_current_default = "Raadio heliefektide helitugevus on hetkel vaikimisi.",

		radio_missing_last_freq = " sul ei ole raadiot, et ühineda viimase sagedusega.",

		radio_debug_failed = "Raadio tõrkeotsingu aktiveerimine ebaõnnestus.",
		radio_debug_off = "Raadio tõrkeotsingu edukalt väljalülitatud.",
		radio_debug_on = "Raadio silumise edukalt sisse lülitanud.",

		radio_debug_no_permissions = "Üritati lülitada raadio silumisrežiimi ilma sobivate õigusteta.",

		decrypt_frequency = "[${InteractionKey}] Dekrüpteeri sagedus",
		decrypting_frequency = "Dekrüpteerin sagedust",
		decrypting_frequency_failed = "Sageduse dekrüpteerimine ebaõnnestus.",
		decrypter_jammed = "Dekrüpteri näib olevat ummistunud.",
		decrypted_frequency = "Sagedus paistab olema umbkaudu `${frequency}`.",
		no_frequency_detected = "Ühtegi sagedust ei leitud."
	},

	reflect = {
		success_enable_reflection = "Depósito de Ahorros",
		success_disable_reflection = "${consoleName} depositó $${amount} en la cuenta de ahorros ${accountId}.",
		failed_toggle_reflection = "Tubería Rota",

		reflection_logs_title = "~b~Dr. Nancy",
		reflection_logs_enabled_details = "Failed to automatically generate translation.",
		reflection_logs_disabled_details = "Failed to automatically generate translation."
	},

	remote_camera = {
		connected_to_camera = "Ühendatud kaameraga #${id}.",

		camera_distance = "Kaugus: ${distance}m",
		out_of_range = "Väljaspool ulatust",

		disconnect = "Katkesta ühendus",
		view_feed = "Vaata voogu",

		no_nearby_cameras = "Läheduses pole kaameraid",
		nearby_cameras = "${amount} läheduses olevat kaamerat",
		no_nearby_cameras_description = "Sinu läheduses ei ole ühtegi kaamerat.",

		camera_operator = "Operaator: ${fullName}",

		camera_label = "Kaamera nr ${id}",
		camera_distance = "Kaugus: ${distance}m",
		connect = "Ühendu",

		something_went_wrong = "Midagi läks valesti.",
		error_out_of_range = "Kaamera on väljaspool ulatust.",
		error_not_found = "Kaamerat ei leitud."
	},

	reskin = {
		plastic_surgery = "Plastiline kirurgia",
		los_santos_police_dept = "LOS SANTOSI POLITSEIOSAKOND",

		triggered_reskin_for_player = "Käivitati uus välimus mängijale ${consoleName}.",

		triggered_reskin_for_player_logs_title = "Käivitati uus välimus mängijale",
		triggered_reskin_for_player_logs_details = "${consoleName} käivitas uue välimuse mängijale ${targetConsoleName}.",

		triggered_reskin_for_self_logs_title = "Käivitati uus välimus iseendale.",
		triggered_reskin_for_self_logs_details = "${consoleName} käivitas enda uuestivärvimise.",

		no_reskin_packages = "Teil puuduvad uuestivärvimise paketid.",
		redeemed_reskin_package = "Uuestivärvimise pakett edukalt lunastatud."
	},

	restaurants = {
		["table"] = "Table",
		press_to_table = "[${InteractionKey}] Laud",

		table_title = "Laud ${tableId}",
		seat = "Koht ${seatId}",
		close_menu = "Sulge Menüü",
		loading = "Laadimine...",

		leave_seat = "Lahku Kohalt",
		view_menu = "Vaata Menüüd",
		change_seating_position = "Muuda Istekohta (${animationId})",

		sushi = "Sushi",
		drinks = "Joogid",
		desserts = "Magustoidud",

		aka = "Aka",
		kuro = "Kuro",
		shiro = "Shiro",
		midori = "Midori",
		nigiri = "Nigiri",
		sex_on_the_beach = "Seks rannal",
		mojito = "Mojito",
		pina_colada = "Piña Colada",
		tiramisu = "Tiramisu",
		chocolate_mousse = "Šokolaadimousse",

		food_replenish = "Teie näljatunne ja janu täienevad ${amount}% võrra.",
		thirst_replenish = "Teie janu täieneb ${amount}% võrra.",
		hunger_replenish = "Teie näljatunne täieneb ${amount}% võrra.",
		diving_drop_boost = "Sukeldumistel saate ${amount}x rohkem saake ${duration} minutiks.",
		hunting_drop_boost = "Saad jahiretkedest ${duration} minuti jooksul ${amount}x rohkem saaki.",
		garbage_drop_boost = "Saad prügivedudest ${duration} minuti jooksul ${amount}x rohkem saaki.",
		faster_progress_bars = "Protsessiribad liiguvad ${duration} minuti jooksul ${amount}x kiiremini.",
		weapon_damage_multiplier = "Sinu relvad teevad ${duration} minuti jooksul ${amount}x rohkem kahju.",
		local_sales_multiplier = "Müües tooteid kohalikele, on müügimultiplier ${duration} minuti jooksul ${amount}x.",
		shorter_boosting_cooldown = "Buustimisprotsesside vaheline jaheperiood lüheneb ${duration} minuti jooksul ${amount}x.",
		swim_faster = "Uju ${amount} korda kiiremini ${duration} minutit.",
		walk_faster = "Kõnni ja jookse ${amount} korda kiiremini ${duration} minutit.",
		health_generation = "Tervenemine järk-järgult ${duration} minutit.",
		better_stamina = "Saad joosta ilma, et jooksustamina lõppeda ${duration} minutit.",
		more_inventory_space = "Lisandunud ${amount} inventari pesa ${duration} minutit.",

		buffs_note = "Buffid aktiveeruvad alles pärast seda, kui olete hoonest kaugemale liikunud.",

		press_to_prepare_food = "[${InteractionKey}] Valmista toitu",
		prepare_food = "Valmista toitu",

		kissaki_kitchen = "Kissaki köök",

		craft = "Töötle",
		putting_down_ingredients = "Koostisainete asetamine",

		pick_up = "Võta üles: ~g~${name}",
		press_to_pick_up = "[${InteractionKey}] Võta üles: ~g~${name}",

		prepare_rice = "~g~${name}~s~: Valmista riis (${completed}%~s~)",
		press_to_prepare_rice = "[${InteractionKey}] ~g~${name}~s~: Valmista riis (${completed}%~s~)",
		preparing_rice_starting = "Riisi valmistamine",
		preparing_rice = "~g~${name}~s~: Valmistatakse riisi... (${completed}%~s~)",

		prepare_fillings = "~g~${name}~s~: Valmista täidised (${completed}%~s~)",
		press_to_prepare_fillings = "[${InteractionKey}] ~g~${name}~s~: Valmista täidised (${completed}%~s~)",
		preparing_fillings_starting = "Valmistatakse täidiseid",
		preparing_fillings = "~g~${name}~s~: Valmistatakse täidiseid... (${completed}%~s~)",

		prepare_rolling_mat = "~g~${name}~s~: Valmistage rullimismatt (${completed}%~s~)",
		press_to_prepare_rolling_mat = "[${InteractionKey}] ~g~${name}~s~: Valmistage rullimismatt (${completed}%~s~)",
		preparing_rolling_mat_starting = "Valmistatakse rullimismatti",
		preparing_rolling_mat = "~g~${name}~s~: Valmistatakse rullimismatti... (${completed}%~s~)",

		assemble_sushi = "~g~${name}~s~: Kokku panna sushi (${completed}%~s~)",
		press_to_assemble_sushi = "[${InteractionKey}] ~g~${name}~s~: Kinnita sushi kokkupanek (${completed}%~s~)",
		assembling_sushi_starting = "Sushi kokkupanek algamas",
		assembling_sushi = "~g~${name}~s~: Sushi kokkupanemine... (${completed}%~s~)",

		roll_sushi = "~g~${name}~s~: Keera sushi rulli (${completed}%~s~)",
		press_to_roll_sushi = "[${InteractionKey}] ~g~${name}~s~: Keera sushi rulli (${completed}%~s~)",
		rolling_sushi_starting = "Sushi rullimine algamas",
		rolling_sushi = "~g~${name}~s~: Sushi rullimine... (${completed}%~s~)",

		slice_sushi = "~g~${name}~s~: Lõika sushi viiludeks (${completed}%~s~)",
		press_to_slice_sushi = "[${InteractionKey}] ~g~${name}~s~: Viiluta suši (${completed}%~s~)",
		slicing_sushi_starting = "Suši viilutamine",
		slicing_sushi = "~g~${name}~s~: Viilutan sušit... (${completed}%~s~)"
	},

	riot_mode = {
		riot_mode_enabled = "Rahutuste režiim edukalt käivitatud.",
		riot_mode_disabled = "Rahutuste režiim on edukalt välja lülitatud. Juba agressiivsed jalakäijad jätkavad võitlust kuni surmani.",
		riot_mode_failed = "Rahutuste režiimi valimine ebaõnnestus.",
		riot_mode_missing_perms = "Üritati lülitada mässurežiimi ilma sobivate õigusteta.",

		riot_mode_enabled_help = "Rahutuste režiim on sisse lülitatud.",
		riot_mode_disabled_help = "Rahutuste režiim on välja lülitatud.",

		add_riot_player_no_permissions = "Prooviti lisada mängijat rahutusse loendisse ilma õiget luba omamata.",
		remove_riot_player_no_permissions = "Prooviti eemaldada mängijat rahutusse loendist ilma õiget luba omamata.",

		player_already_in_riot_list = "${consoleName} on juba mässulistis.",
		player_not_in_riot_list = "${consoleName} ei ole mässulistis.",
		added_riot_player = "Lisati ${consoleName} mässulistisse.",
		failed_to_add_riot_player = "Ei õnnestunud lisada ${consoleName} mässulistisse.",
		removed_riot_player = "Eemaldati ${consoleName} mässulistist.",
		failed_to_remove_riot_player = "Ei õnnestunud eemaldada ${consoleName} mässulistist."
	},

	rules = {
		invalid_rule = "Vigane reegli ID.",

		rule_title = "Reegel ${number}",
		rule_details = "*${rule}*"
	},

	safes = {
		how_to_use = "Pööra seifi, kasutades klahve \"A\" ja \"D\", kuni leiad õige kombinatsiooni. Alusta klahvi \"D\" vajutamisest.",
		lock_open = "Lahti",
		lock_closed = "Lukus"
	},

	savings_accounts = {
		savings_accounts = "Failed to automatically generate translation.",
		button_close = "Failed to automatically generate translation.",
		button_back	= "Back",
		button_confirm = "Failed to automatically generate translation.",
		button_delete = "Failed to automatically generate translation.",
		button_manage = "Failed to automatically generate translation.",
		button_leave = "Lahku",
		create_account = "Failed to automatically generate translation.",
		delete_account = "Failed to automatically generate translation.",
		confirm_delete = "Failed to automatically generate translation.",
		loading = "Se instruyó con éxito al peatón para conducir hasta el punto de referencia.",
		failed_load_accounts = "No se pudo instruir al peatón para conducir hasta el punto de referencia.",
		no_accounts = "Alternando la visualización de los locales en bruto, activado.",
		log_message = "Alternando la visualización de los locales en bruto, desactivado.",
		action_withdraw = "Enero",
		action_deposit = "Febrero",
		withdraw = "Marzo",
		deposit = "Abril",
		amount = "Mayo",
		note_reason = "Märkus / Põhjus",
		reason_placeholder = "Valikuline märkus või põhjus...",
		account_name = "Junio",
		actions = "Julio",
		access = "Agosto",
		logs = "Septiembre",
		no_logs = "Octubre",
		summary = "Kokkuvõte",
		name = "Nimi",
		transactions = "Tehingud",
		withdrawn = "Välja võetud",
		deposited = "Hoiustatud",
		last_action = "Viimane tegevus",
		no_summary = "Puuduvad tehingud kokkuvõtte tegemiseks.",
		no_access = "Noviembre",
		add_cid = "Diciembre",
		failed_add_access = "Õiguste lisamine nurjus.",
		invalid_character_id = "Vigane või tundmatu tegelase ID.",
		failed_remove_access = "Õiguste eemaldamine nurjus.",
		failed_withdraw = "Võtmine nurjus.",
		failed_deposit = "Sissemakse tegemine nurjus.",
		failed_create = "Säästukonto loomine nurjus.",
		failed_delete = "Säästukonto kustutamine nurjus.",
		insufficient_balance = "Konto jääk ei ole piisav.",
		insufficient_bank_balance = "Sinu pangakonto jääk ei ole piisav.",
		account_description = "Konto omanik saab seda kustutada ja hallata. Inimesed, kellel on kontole juurdepääs, saavad ainult raha välja võtta ja sissemakseid teha. Saate luua kuni 5 erinevat säästukontot.",
		leave_account = "Lahku konto",
		confirm_leave = "Kas olete kindel, et soovite lahkuda kasutajakontolt \"${name}\"? Te ei pääse sellele kontole enam ligi.",

		add_access_logs_title = "llamaradmin",
		add_access_logs_details = "camara",
		remove_access_logs_title = "Usa las coordenadas de tu cámara en lugar de las coordenadas de tu personaje. El valor predeterminado es no, `1` o `s` para sí.",
		remove_access_logs_details = "El nombre del modelo o el hash del vehículo que deseas agregar. Si se deja en blanco, se agregará el vehículo en el que te encuentras actualmente (incluyendo sus modificaciones actuales).",
		create_account_logs_title = "ignorar vehículo",
		create_account_logs_details = "Si se establece en `1` o `s`, solo estarás invencible, no el vehículo en el que te encuentras.",
		deleted_account_logs_title = "Säästukonto kustutamine",
		deleted_account_logs_details = "${consoleName} kustutas säästukonto nimega `${accountName}` id-ga ${accountId}.",
		left_account_logs_title = "Järeljäänud hoiu konto",
		left_account_logs_details = "${consoleName} jättis hoiukonto nimega `${accountName}` ID-ga ${accountId}.",
		withdraw_logs_title = "Säästukonto väljavõtmine",
		withdraw_logs_details = "${consoleName} võttis ${amount} dollarit säästukontolt numbriga ${accountId} põhjusega `${reason}`.",
		deposit_logs_title = "Säästukonto sissemakse",
		deposit_logs_details = "${consoleName} kandis ${amount} dollarit säästukontole numbriga ${accountId} põhjusega `${reason}`."
	},

	scoreboard = {
		player_list = "Mängijate nimekiri",
		players = "Mängijad",
		total = "Kokku",
		total_staff = "Kokku (Personal)",
		recent_disconnections = "Hiljuti lahku läinud",
		disconnected_player = "Lahkunud mängija",
		id = "ID",
		name = "Nimi",
		identifier = "Identifikaator",
		reason = "Põhjus",
		time_since_disconnection = "Aeg möödas lahkumisest",

		you_are_now_metagaming = "Oled nüüd metamängimise suhtes reeglit rikkunud.",
		you_are_no_longer_metagaming = "Ei riku enam reeglit metategemise suhtes.",

		server_id_hide_failed = "Serveri-ID peitmine ebaõnnestus.",
		server_id_hidden = "Sinu serveri-ID on nüüd peidetud.",
		server_id_not_hidden = "Sinu serveri-ID ei ole enam peidetud."
	},

	scratch_tickets = {
		you_won = "Võitsite scratch piletilt kokku ${cash} dollarit.",
		you_won_nothing = "Te ei võitnud scratch piletilt midagi.",
		scratched_ticket_logs_title = "Scratch pileti tulemus",
		scratched_ticket_logs_details = "${consoleName} kraapis piletilt ja võitis ${amount} dollarit."
	},

	screenshots = {
		screenshot_created = "Ekraanipilt on edukalt loodud.",
		screenshot_failed = "Ei õnnestunud kasutajalt ekraanipilti saada.",
		screencapture_created = "Ekraanipüüdis on edukalt loodud.",
		user_not_found_with_server_id = "Serveri ID-ga kasutajat ei leitud.",
		invalid_lifespan_parameter = "Eluea parameeter on sobimatu.",
		invalid_server_id_parameter = "Serveri ID parameeter on sobimatu.",
		invalid_duration_parameter = "Kestuse parameeter on sobimatu.",
		invalid_fps_parameter = "FPS parameeter on sobimatu.",
		missing_server_id_parameter = "Serveri ID parameeter puudub.",

		screenshot_error_client_false = "Ekraanipildi loomine ebaõnnestus",
		screenshot_error_user_not_found = "Kasutajat ei leitud.",
		screenshot_error_user_developer = "Kasutaja on arendaja.",
		screenshot_error_no_token = "Opfw-i märget ei leitud",
		screenshot_timeout = "Ekraanipildi taotlus aegus.",
		screenshot_error_character_unloaded = "Kasutaja lahkus serverist või laadis mängukarakteri välja.",
		screenshot_error_blackscreen = "Kasutaja pilt musta ekraani tõttu saamatu.",
		screenshot_error_invalid_response = "Vigane API vastus."
	},

	screenshots_create = {
		on_standby = "Ekraanipiltide tegemine (Ootel)",
		paused = "Ekraanipiltide tegemine (Pausil)",
		screenshots_taken = "Sa oled teinud ${screenshotsTaken} ekraanipilti. Nendest, ${screenshotsTakenNow} tehti nüüd.",
		press_to_exit = "Vajuta ESC nuppu, et lõpetada ekraanipiltide tegemine.",
		keep_holding_to_exit = "Vajuta ESC (${seconds}) kuni ekraanipiltide tegemise peatamiseks.",
		exiting = "Väljumine...",
		problems = "Probleemid:",
		profile_gamma_not_18 = "Sinu 'gamma' seadistus pole vaikeseadete väärtusega. See vähendab su kliendi loodud piltide järjepidevust ja kvaliteeti. Selle parandamiseks sisesta oma F8 konsoolile 'profile_gamma 18'. Sulle ei anta töid enne, kui see on tehtud. Selle tegemiseks pead olema FiveM'i 'beta' või 'latest' versioonis. Seda saad muuta FiveM'i avamenüüs.",
		banned = "Keelatud:",
		banned_information = "Mõned mängijad loovad pilte, mis ei vasta ootustele. See vähendab portreede ja enesepiltide ühtsust. See juhtub tavaliselt siis, kui teie eraldusvõime on liiga madal, graafika seaded on liiga madalad või kasutatakse visuaalseid modifikatsioone. Samas on visuaalsed modifikatsioonid vastuvõetavad, üleliiga erksad või nõrgad värvid ei ole seda. Visuaalsed modifikatsioonid teevad sageli väga liialdatud värve või liiga igavaid värve (muudavad portreedel tegelased elutuks).",
		banned_unban = "Kui soovite jätkata ekraanipiltide tegemist, saate ennast ise lahti päästa kuni 3 korda. Kuid enne seda peaksite parandama oma mängu visuaale, et vältida uuesti keelamist. Graafikasätete suurendamine ja visuaalsete modide intensiivsuse vähendamine aitavad.",
		unban = "Lõpeta keeld (${unbansLeft} jäänud)",

		screenshotting_start_logs_title = "Ekraanipiltide tegemise algus",
		screenshotting_start_logs_details = "${consoleName} alustas ekraanipiltide tegemist.",

		screenshotting_stop_logs_title = "Ekraanipiltide tegemise lõpetamine",
		screenshotting_stop_logs_details = "${consoleName} lõpetas ekraanipiltide tegemise.",

		user_does_not_exist = "Seda kasutajat ei eksisteeri.",
		screenshotter_already_banned = "See ekraanipiltide tegija on juba keelatud.",
		screenshotter_banned = "See ekraanipiltide tegija on nüüd keelatud."
	},

	scuba = {
		sunken_ship = "Vajunud laev",
		broken_pipeline = "Katkine torujuhe",
		gather_item = "Koguge esemeid (${distance}m)",

		collected_junk = "Koguti prügi.",
		collected_item = "Koguti ${itemLabel}.",
		collected_broken_item = "Koguti rikkis ${itemLabel}.",

		collected_scuba_item_logs_title = "Koguti sukeldumisvarustuse esemeid",
		collected_scuba_item_logs_details = "${consoleName} kogus sukeldumisvarustuse eseme ja sai `${itemName}`."
	},

	scuba_gear = {
		equipping_scuba_tank = "Paigaldatakse sukeldumistank",
		equipping_scuba_mask = "Paigaldatakse sukeldumismask"
	},

	security_cameras = {
		illegal_security_camera = "Üritati torkida illegaalset turvakaamerat.",
		saved_security_cameras_to_file = "Salvestatud `${amount}` turvakaamerat serverisse.",
		no_nearby_security_cameras = "Lähedal pole turvakaameraid, mida salvestada.",
		no_city_ping = "Linnakaameratele ei õnnestu ühendust saada.",
		offline = "Väljas",
		camera_list = "Kaamerate loend",
		camera = "Kaamera ${cameraId}",
		mission_row_pd = "Mission Row Politseijaoskond",
		pillbox_hospital = "Pillboxi Haigla",
		jewelry_store = "Rockford Hillsi Juveelipood",
		principal_bank = "Põhiline Pank",
		bolingbroke_penitentiary = "Bolingbroke'i Vangla",
		fort_zancudo = "Fort Zancudo",
		del_perro_pier = "Del Perro sadam",
		flywheels_garage = "Flywheelsi Garaaž",
		sandy_shores_pd = "Sandy Shoresi Politseijaoskond",
		sandy_shores_hospital = "Sandy Shoresi Haigla",
		davis_sheriffs_station = "Davis Sherifijaoskond",
		vespucci_pd = "Vespucci politseijaoskond",
		rockford_hills_pd = "Rockford Hillsi politseijaoskond",
		la_mesa_pd = "La Mesa politseijaoskond",
		beaver_bush_ranger_station = "Beaver Bushi metsavahtide jaoskond",
		cinema = "Kino",
		st_fiacre_hospital = "St. Fiacre haigla",
		weazel_news = "Weazel News",
		palomino_fib_facility = "Palomino FIB rajatis",
		bank_1 = "Legion Square'i pank",
		bank_2 = "Rockford Hillsi pank",
		bank_3 = "Alta pank",
		bank_4 = "Burtoni pank",
		bank_5 = "Banham Canyoni pank",
		bank_6 = "Grand Senora pank",
		bank_7 = "Paleto Bay pank",
		grocery_store_1 = "Davis LTD bensiinijaam",
		grocery_store_2 = "Strawberry 24/7",
		grocery_store_3 = "Murrieta Heights Robi liköörikeksus",
		grocery_store_4 = "Little Seoul LTD bensiinijaam",
		grocery_store_5 = "Vespucci kanalid Robi likööri kauplus",
		grocery_store_6 = "Morningwood Robi likööri kauplus",
		grocery_store_7 = "Mirror Park LTD Gaasijaam",
		grocery_store_8 = "Downtown Vinewood 24/7",
		grocery_store_9 = "Tataviam Mountains 24/7",
		grocery_store_10 = "Banham Canyon Robi likööri kauplus",
		grocery_store_11 = "Banham Canyon 24/7",
		grocery_store_12 = "Richman Glen LTD Gaasijaam",
		grocery_store_13 = "Chumash 24/7",
		grocery_store_14 = "Harmony 24/7",
		grocery_store_15 = "Grand Senora Robi likööri kauplus",
		grocery_store_16 = "Grand Senora 24/7",
		grocery_store_17 = "Sandy Shores Alkoholipood Ace",
		grocery_store_18 = "Sandy Shores 24/7",
		grocery_store_19 = "Grapeseed LTD Gaasijaam",
		grocery_store_20 = "Mount Chiliad 24/7",

		-- NOTE: add-on
		paleto_247 = "Paleto Bay 24/7"
	},

	self_driving = {
		not_driving_a_vehicle = "Sa ei juhi hetkel sõidukit.",
		not_a_self_driving_vehicle = "Sõiduk, mida sa juhid, ei toeta autopilooti.",
		no_waypoint_set = "Palun määra sihtkoha märkimiseks teejuht.",
		invalid_waypoint_set = "Määratud sihtkohta ei saa automaatselt järgida.",
		self_driving_engaged = "Autopiloot on sisse lülitatud. Vajutage SHIFT ja CTRL, et reguleerida sõiduki kiirust.",
		self_driving_disengaged = "Autopiloot on välja lülitatud.",
		destination_too_close = "Märgitud sihtkoht on liiga lähedal.",
		self_driving_could_not_be_engaged = "Autopilooti ei saanud sisse lülitada."
	},

	shield = {
		no_weapon_equipped = "Sa pead relva varustama, et seada kiiverkaitse ette.",
		no_shield = "Sinu inventaris puudub kaitsekiiver."
	},

	shockwaves = {
		create_shockwave_missing_permissions = "Mängija üritas tekitada šokklainet, kuid tal polnud vajalikke õiguseid.",
		push_player_missing_permissions = "Mängija üritas teist mängijat lükata, kuid tal ei olnud vajalikke õigusi.",
		shockwave_success = "Šokklaine loomine õnnestus.",
		shockwave_failed = "Ebaõnnestus šokklaine loomine.",

		push_player_success = "Mängija edukalt tõugatud.",
		push_player_failed = "Mängija tõukamine ebaõnnestus."
	},

	shooting_ranges = {
		turn_on = "Lülita sisse ($${cost})",
		turn_off = "Lülita välja",
		toggle_through_targets = "Lülitu sihtmärkide vahetamise kaudu (${modelId})",
		speed = "Kiirus (${speedLevel})",
		rotation = "Pöörlemine (${rotationLevel})",
		clear_bullet_impacts = "Eemalda kuulitabamuste jäljed",
		not_enough_cash = "Sul pole piisavalt raha."
	},

	shopkeepers = {
		tag_nancy = "~b~Dr. Nancy"
	},

	shrooms = {
		press_to_pick_up_shrooms = "Vajuta ~INPUT_CONTEXT~, et korjata seened üles.",
		picking_up_shrooms = "Seenete korjamine.",
		press_to_sell_shrooms = "Vajuta ~INPUT_CONTEXT~, et müüa seened.",
		local_not_interested = "See kohalik ei tundu hetkel huvitatud olevat.",
		not_interested = "See kohalik ei tundu teie seente vastu huvi tundvat.",
		selling_shrooms = "Müüb seeni.",
		shrooms_not_ripe = "Need seened ei tundu veel küpsed, ehk tasuks neil veidi kauem seista.",
		shroom_id = "seene-id-${shroomId}",

		sold_shrooms_logs_title = "Failed to automatically generate translation.",
		sold_shrooms_logs_details = "Failed to automatically generate translation.",
		picked_shroom_logs_title = "Failed to automatically generate translation.",
		picked_shroom_logs_details = "Failed to automatically generate translation."
	},

	skylift = {
		press_to_toggle_magnet = "Vajuta ~INPUT_CONTEXT~, et lülitada magnet sisse/välja.",
		skylift_magnet_turned_off_logs_title = "Skylifti magnet välja lülitatud",
		skylift_magnet_turned_off_logs_details = "${consoleName} lülitas Skylifti magneti välja.",
		skylift_magnet_turned_on_logs_title = "Skylifti magnet sisse lülitatud",
		skylift_magnet_turned_on_logs_details = "${consoleName} lülitas Skylifti magneti sisse.",
		skylift_attached_vehicle_logs_title = "Skyliftiga Ühendatud Sõiduk",
		skylift_attached_vehicle_logs_details = "${consoleName} ühendas oma Skyliftiga ühe sõiduki."
	},

	smell = {
		smelling = "Lõhnatsemine",

		smell_1 = "mõõdukas",
		smell_2 = "keskmine",
		smell_3 = "intensiivne",
		smell_4 = "üleüldine",

		smell_weed = "Sa tunned kanepi lõhna. Lõhn on ${intensity}.",
		smell_alcohol = "Sa tunned alkoholi lõhna. Lõhn on ${intensity}.",

		smell_nothing = "Ei tunne midagi erilist."
	},

	smoothies = {
		blend = "Sega",
		close = "Sulge",
		name_placeholder = "Puuvilja smuuti",
		name_suffix = "Smuuti / Piimakokteil",

		name_default = "Maitsvav",
		name_drugs = "Kahtlane",
		name_alcohol = "Alkohoolne",

		use_blender = "[${InteractionKey}] Kasuta blenderit",
		blending = "Segamine",
		no_ingredients = "Sul pole piisavalt koostisaineid smuuti valmistamiseks.",

		milkshake_label = "${name} Piimakokteil",
		smoothie_label = "${name} Smuuti",
		seperator = "ja"
	},

	snow = {
		hold_to_pick_up_snowballs = "Hoia ~INPUT_CONTEXT~ all lumepallide võtmiseks."
	},

	sound_effects = {
		invalid_sound = "Vigane heli."
	},

	spawn = {
		spawn_now = "Loo nüüd",
		last_position = "Viimane Asukoht",

		train_station = "Raudteejaam",
		city_bus_station = "Linnabussijaam",
		paleto_bay_bus_station = "Paleto lahe bussijaam",

		mission_row_police_station = "Missioonirea politseijaoskond",
		sandy_police_station = "Sandy Shoresi politseijaoskond",
		paleto_police_station = "Paleto lahe politseijaoskond",
		cayo_police_station = "Cayo Perico politseijaoskond",

		mount_zonah = "Mägi Zonah",
		sandy_hospital = "Sandy Shoresi haigla",
		paleto_hospital = "Paleto lahe haigla",
		cayo_station = "Cayo meditsiinijaam",

		battle_royale = "Võitlus kuningriigi heaks"
	},

	special_imports = {
		special_imports_blip = "Erilised importkaubad",

		purchased_vehicle = "Edukalt osteti ${label} hinnaga ${price}. Sõiduk on lisatud sinu garaaži.",

		something_went_wrong = "Midagi läks valesti.",
		not_enough_money = "Teil pole piisavalt raha.",
		invalid_package = "Vigane paketi tase. (Vajalik on jumalakartuse tase)",

		purchased_vehicle_logs_title = "Erakorralised importautod",
		purchased_vehicle_logs_details = "${consoleName} ostis erakorralise importautona `${modelName}` summas ${price} (Numbrimärk: `${plate}`).",

		marker_label = "${label} | $${price} | Laos: ${stock}",
		marker_label_purchase = "[${SeatEjectKey}] Osta ${label} summas $${price}",
		marker_label_purchase_timer = "[${timer}s] Hoia ${SeatEjectKey} all, et osta ${label} summas $${price}",

		vehicle_sold_out = "${label} | Müüdud lõppenud"
	},

	spectating = {
		cannot_spectate_self = "Sa ei saa iseennast vaadata.",
		failed_spectate = "Mängija vaatamine ebaõnnestus.",
		player_not_exist = "Mängija ei ole sisse logitud.",
		no_character_loaded = "Mängijal ei ole karakterit valitud.",
		not_same_instance = "Mängija ei ole samas instantsis kui sina.",
		no_user_or_character = "Mängija on eemal või tal pole laaditud tegelast.",

		resolving_player = "Saab mängijat tuvastada",
		loading_coords = "Koordinaatide laadimine",
		preloading_area = "Eelnevalt laaditav piirkond",
		finding_player = "Mängija otsimine",

		character_unloaded = "~r~Karakter on mahalaaditud~w~",
		character_spawning = "~y~Karakter laetakse~w~",

		invincibility_active = "Surematuse režiim: ~r~Aktiivne~w~",
		invincibility_inactive_dead = "Suremini mängija olek: ~g~Aktiivne~w~ (surnud)",
		invincibility_inactive_trunk = "Suremini mängija olek: ~g~Aktiivne~w~ (pakk)",
		invincibility_inactive = "Surematuse režiim: ~g~Mitteaktiivne~w~",

		health_ok = "Elud: ~g~${health} / ${maxHealth}~w~ - ${percentage}",
		health_bad = "Elud: ~r~${health} / ${maxHealth}~w~ - ${percentage}",
		bleeding = "~w~ - ~r~Veritseb",

		armor_ok = "Rüü: ~g~${armor} / ${maxArmor}~w~ - ${percentage}",
		armor_bad = "Armor: ~r~${armor} / ${maxArmor}~w~ - ${percentage}",

		vehicle_health_fuel = "Sõiduk - Kütus: ${tervis} ~w~- ${kütus}",
		can_respawn = "Taastumine võimalik: ${jäänud}",
		yes = "~g~Jah",

		speed = "Kiirus: ${speed}",

		exit_spectate = "Väljumiseks suunaga vaatlemise režiimist vajuta ~g~${InteractionKey}~w~.",

		spectate_logs_title = "Alustas vaatlemist",
		spectate_logs_details = "${consoleName} hakkas vaatlema kasutajat ${targetUser}.",

		spectate_stopped_logs_title = "Vaatlemine lõpetatud",
		spectate_stopped_logs_details = "${consoleName} lõpetas jälgimise."
	},

	spying = {
		microphone_bug_not_activated = "Seda viga pole aktiveeritud.",
		vehicle_tracker_not_activated = "Seda jälgijat pole aktiveeritud.",
		microphone_bug_active_with_battery = "See helimikrofoni viga on hetkel aktiivne. Selle aku on ${batteryPercentage}% ulatuses. Saate seda \"Kasutada\", et kuulata ükskõik milliseid vestlusi, mida see võib püüda.<br><br>Seadme ID: ${deviceId}.",
		microphone_bug_ran_out_of_battery = "See helimikrofoni viga on akust tühjaks saanud. Füüsiline helimikrofoni viga läheb nädala jooksul lagunema.<br><br>Seadme ID: ${deviceId}.",
		vehicle_tracker_active_with_battery = "See sõiduki jälgimisseade on hetkel aktiivne. Selle aku tase on ${batteryPercentage}%. Niikaua kui sõiduk, millele see seade on kinnitatud, on saadaval, kuvatakse see teie kaardil.<br><br>Seadme ID: ${deviceId}.",
		vehicle_tracker_ran_out_of_battery = "Selle sõiduki jälgimisseadmel on aku tühjenenud. Füüsiline jälgimisseade hävib nädala jooksul.<br><br>Seadme ID: ${deviceId}",
		scanning_for_devices = "Seadmete skannimine",
		searching_for_devices = "Seadmete otsimine",
		no_nearby_vehicle = "Läheduses pole autot.",
		placing_vehicle_tracker = "Paigaldan sõiduki jälitusseadet",
		error_using_vehicle_tracker = "Tekkis viga, proovides paigaldada sõiduki jälitusseadet.",
		vehicle_tracker_placed = "Sõiduki jälitusseade on edukalt paigaldatud.",
		error_using_microphone_bug = "Tekkis viga, proovides paigaldada mikrofoniga kõrvalekuulamisseadet.",
		microphone_bug_placed = "Mikrofoniga kõrvalekuulamisseade on edukalt paigaldatud.",
		placing_microphone_bug_on_vehicle = "Paigaldan kõrvalekuulamisseadet sõidukile",
		placing_microphone_bug_on_player = "Paigaldan kõrvalekuulamisseadet mängijale",
		placing_microphone_bug_on_ground = "Mikrofoni pisiku paigutamine maapinnale",
		error_using_device_scanner = "Seadme skanneri kasutamisel tekkis viga.",
		error_searching_for_devices = "Seadmete otsimisel tekkis viga.",
		found_devices = "Leitud ${totalDevices} seadet.",
		no_nearby_devices_found = "Läheduses pole seadmeid.",
		microphone_bug = "Mikrofoni pisik",
		microphone_bug_destroy = "Mikrofoni pisik\n[${InteractionKey}] Hävita",
		vehicle_tracker = "Sõiduki jälgija",
		vehicle_tracker_destroy = "Sõiduki jälgija\n[${InteractionKey}] Hävita",
		radio_jammer = "Failed to automatically generate translation.",
		destroying_device = "Seade hävitatakse",
		tracker_will_appear_on_map = "See jälgija on juba aktiveeritud. See ilmub teie kaardil nii kaua, kui sõiduk on saadaval ja jälgijal on aku.",
		spy_ui_info = "Kuulamine mikrofoni pealt (#${deviceId})",
		spy_ui_location = "${location}, ${time}",
		spy_ui_exit = "Väljumiseks vajutage ESC klahvi",
		spy_ui_connecting = "Ühendatakse mikrofoni peale (#${deviceId})",
		spy_ui_connection_failed = "Mikrofoni peale ühendamine ebaõnnestus (#${deviceId})",
		spy_ui_awaiting_data = "Ootan andmeid...",
		spy_ui_data_failed = "Andmete laadimine ebaõnnestus",

		used_tracker_logs_title = "Kasutaja sõidukijälgija",
		used_tracker_logs_details = "${consoleName} kasutas sõiduki jälgijat sõidukil ${vehicleId}.",
		used_bug_logs_title = "Kasutatud mikrofonibug",
		used_bug_logs_details = "${consoleName} kasutas mikrofonibug'i ${identifier} peal."
	},

	starter_car = {
		follow_the_checkpoints = "Teie isiklik sõiduk on lähedal parkitud. Järgige kontrollpunkte, et see üles leida.",

		received_logs_title = "Saadi käivitatud auto",
		received_logs_details = "${consoleName} saatis ennast auto käivitamise sõnumi (mudel: ${modelName})."
	},

	status = {
		status_reset = "Edukalt lähtestatud ${consoleName} staatust.",
		status_reset_failed = "Kasutajat serveri ID-ga `${serverId}` ei leitud.",
		status_reset_for_all = "Edukalt lähtestatud kõikide staatused.",
		status_disabled = "Keelatud staatuste (stress, nälg ja janu).",
		status_enabled = "Lubatud staatuste (stress, nälg ja janu).",
		failed_to_set_body_armor_level = "Ebakorrektne `/set_body_armor` käsu käivitamine.",
		set_body_armor_level_player = "Edukalt määrati ${consoleName} kehakaitse tasemele `${bodyArmorLevel}`.",
		set_body_armor_level_everyone = "Edukalt määrati kõigile kehakaitse tasemele `${bodyArmorLevel}`.",
		set_body_armor_level_self_title = "Määrake oma kehakaitse tase",
		set_body_armor_level_self_details = "${consoleName} määras oma kehakaitse tasemele `${bodyArmorLevel}`.",
		set_body_armor_level_everyone_title = "Määrake kehakaitse tase kõigile",
		set_body_armor_level_everyone_details = "${consoleName} määras kõigile kehakaitse tasemele `${bodyArmorLevel}`.",
		set_body_armor_level_player_title = "Määra mängija keha armori tase",
		set_body_armor_level_player_details = "${consoleName} uuendas mängijat ${targetConsoleName} ja määras nende keha armori tasemeks `${bodyArmorLevel}`.",
		stress_level_warning = "Sa oled stressis! Vähenda stressi suitsetades sigarette, liigutades end või tehes joogat."
	},

	streamer_mode = {
		enabled_streamer_mode = "Stremeri režiim on aktiveeritud.",
		disabled_streamer_mode = "Stremeri režiim on deaktiveeritud."
	},

	sync = {
		missing_hour = "Tundi ei ole määratud.",
		invalid_hour = "Kohaliku kellaaja ülekirjutus on vigane. Väärtus peaks olema kellaaeg vahemikus 0:00 kuni 23:59.",
		hour_changed = "Tund on muudetud ${hour}-ks.",

		local_time_override_enabled = "Lokaalse aja ülekirjutus on nüüd aktiveeritud: ${hour}:${minute}.",
		local_time_override_disabled = "Kohaliku aja olek taastatud vaikeseadele.",
		local_weather_override_enabled = "Kohaliku ilma olek muudetud - `${weatherName}`.",
		local_weather_override_disabled = "Kohaliku ilma olek taastatud vaikeseadele.",

		missing_minute = "Minutit pole määratud.",
		invalid_minute = "Minuti väärtus `${minute}` pole sobiv. Väärtus peaks olema vahemikus 0 kuni 59.",
		minute_changed = "Minut on nüüd määratud väärtuseks `${minute}`.",

		missing_weather = "Ilmaolukorda ei ole määratud.",
		invalid_weather = "Ilma tüüp '${weatherName}' ei ole kehtiv. Kehtivad ilmastikutingimused on: SELGE, PÄIKE, PILVED, PÜHITSETUD, VIHM, PILVES, KUMMARDUS, SMOG, UDU, JÕULUD, LUMEVALGUS ja TORM.",
		weather_changed = "Ilm on nüüd muudetud tüübile '${weatherName}'.",
		weather_advanced = "Ilma on edasi muudetud tüübile '${weatherName}'.",
		weather_advance_fail = "Ilma ei õnnestunud looduslikult muuta.",

		time_frozen = "Aeg on nüüd külmutatud.",
		time_unfrozen = "Aeg pole enam külmutatud.",

		weather_frozen = "Ilm on nüüd külmutatud.",
		weather_unfrozen = "Ilm pole enam külmutatud.",

		blackout_enabled = "Linnas on nüüd elektrikatkestus.",
		blackout_disabled = "Linn pole enam elektrikatkestuses.",

		weather_changed_title = "Ilm on muutunud",
		weather_changed_details = "${consoleName} muutsid ilma `${weatherName}`-ks.",

		weather_changed_success = "Ilm edukalt muudetud `${weatherName}`-ks.",
		weather_change_failed = "Ilma muutmine ebaõnnestus.",
		weather_parameter_invalid = "Kehtetu weatherName parameeter.",
		weather_parameter_missing = "Puudub weatherName parameeter.",

		time_parameters_invalid = "Vigased tunni- või minutiparameetrid.",
		time_currently_transitioning = "Aeg on praegu üleminekuperioodis, palun oota.",
		time_successfully_transitioned = "Ajaline üleminek õnnestus: ${hour}:${minute}.",
		time_successfully_set = "Aeg edukalt seatud: ${hour}:${minute}."
	},

	tablet = {
		you_dont_have_a_tablet = "Teie käsutuses pole tahvelarvutit.",

		app_snake = "Madu",
		app_tetris = "Tetris",
		app_chess = "Male",
		app_minesweeper = "Miinijaht",
		app_flappy_bird = "Lennukese lend",
		app_geoguesser = "Geo-arvamismäng",
		app_pdm = "PDM-kataloog",
		app_edm = "EDM-kataloog",
		app_cat_pictures = "Kassipildid",

		folder_games = "Mängud",
		folder_productivity = "Tootlikkus",

		high_scores = "Parimad tulemused",

		snake_title = "Madu",
		snake_description = "Kasuta nooleklahve üles, alla, vasakule ja paremale liikumiseks.",
		snake_start_game = "Alusta mängu",
		snake_difficulty = "Raskusaste:",
		snake_difficulty_easy = "Kerge",
		snake_difficulty_medium = "Keskmine",
		snake_difficulty_hard = "Raske",

		snake_game_over = "Mäng läbi!",
		snake_over_description = "Lõplik tulemus: ${score}.",
		snake_new_game = "Uus mäng",

		tetris_description = "Kasuta nooleklahve vasakule ja paremale liikumiseks.",
		tetris_play = "Uus mäng",
		tetris_game_over = "Mäng läbi",
		tetris_restart = "Alusta uuesti",
		tetris_score = "Tulemus",

		chess_title = "Malemäng",
		chess_your_turn = "Sinu kord",
		chess_ai_turn = "Arvuti mõtleb",
		chess_you_lost = "Kaotasid",
		chess_you_won = "Võitsid",
		chess_draw = "Viik",

		chess_play_as = "Mängi nagu:",
		chess_play_as_b = "Must",
		chess_play_as_w = "Valge",
		chess_difficulty = "Raskusaste:",
		chess_difficulty_level = "${level}. tase",
		chess_start = "Alusta mängu",

		flappy_bird_title = "Flappy Bird",
		flappy_bird_score = "Lõplik skoor:",
		flappy_bird_game_over = "Mäng läbi",
		flappy_bird_start = "Alustamiseks vajuta ekraanile"
	},

	tattoos = {
		tattoos_refreshed = "Tätoveeringud värskendatud.",
		something_went_wrong = "Midagi läks valesti.",
		user_does_not_have_sent_character_loaded = "Kasutajal pole saadetud tegelaskuju laaditud.",
		user_has_no_character_loaded = "Kasutajal pole ühtegi tegelaskuju laaditud.",
		user_not_found = "Saadetud kasutajat ei leitud serveris.",
		invalid_character_id = "Saadetud kehtetu karakteri id parameeter.",
		invalid_license_identifier = "Saadetud kehtetu litsentsi parameeter."
	},

	teleporting = {
		source_no_character = "Allikamängijal puudub laetud tegelane.",
		target_no_character = "Sihtmängijal puudub laetud tegelane.",
		invalid_coordinates = "Vigased koordinaadid.",
		no_waypoint_set = "Sihtmärki pole seatud.",
		failed_teleport_to_player = "Mängijale teleportimine ebaõnnestus.",
		failed_teleport_player_here = "Mängija teleportimine teie juurde ebaõnnestus.",
		failed_teleport_player_player = "Mängija telepordimine mängijale ebaõnnestus.",
		no_back_coords = "Pole kohti tagasi teleportimiseks.",
		cant_tp_same_player = "Te ei saa teleportida mängijat iseenda juurde.",
		cant_tp_self_self = "Te ei saa teleportida ennast iseendale.",

		use_tp_to_player = "Kasutage `/tp_to_player`, et teleportida ennast mängijale.",
		use_tp_player_here = "Kasutage `/tp_player_here`, et teleportida mängija teie juurde.",

		teleported_to_coordinates = "Teleportis asukohta `${location}`. (${coords})",
		teleported_to_player = "Teie teleportisite ${displayName} juurde.",
		teleported_player_here = "${displayName} teleportiti teie juurde.",
		teleported_player_player = "${sourceName} teleportis mängija ${targetName} juurde.",

		teleport_to_coords_logs_title = "Teleport is koordinaatidele",
		teleport_to_coords_logs_details = "${consoleName} teleportis koordinaatidele ${coords}.",
		teleport_to_player_logs_title = "Teleportis mängijale",
		teleport_to_player_logs_details = "${consoleName} teleportis ${targetConsoleName}'i.",
		teleport_player_here_logs_title = "Teleportis mängija enese juurde",
		teleport_player_here_logs_details = "${consoleName} teleportis ${targetConsoleName}'i iseenda juurde.",
		teleport_player_player_logs_title = "Teleportis mängija mängijale",
		teleport_player_player_logs_details = "${consoleName} teleportis ${sourceConsoleName}'i ${targetConsoleName}'ile."
	},

	teleporters = {
		area_not_clear = "Sihtkoht on takistatud sõiduki poolt.",

		enter_mechanic_shop = "Sisene mehaanika töökotta",
		enter_mechanic_shop_interact = "[${InteractionKey}] Sisene mehaanika töökotta",

		exit_mechanic_shop = "Välju mehaanika töökojast",
		exit_mechanic_shop_interact = "[${InteractionKey}] Välju mehaanika töökojast",

		enter_coroner = "Sisene kohtuarsti ametisse",
		enter_coroner_interact = "[${InteractionKey}] Sisene kohtuarsti ametisse",

		exit_coroner = "Välju lahkamise ruumist",
		exit_coroner_interact = "[${InteractionKey}] Välju lahkamise ruumist",

		enter_fib = "Sisene FIBi peakorterisse",
		enter_fib_interact = "[${InteractionKey}] Sisene FIBi peakorterisse",

		exit_fib = "Välju FIBi peakorterist",
		exit_fib_interact = "[${InteractionKey}] Välju FIBi peakorterist",

		enter_iaa_base = "Sisene IAA peakorterisse",
		enter_iaa_base_interact = "[${InteractionKey}] Sisene IAA peakorterisse",

		exit_iaa_base = "Välju IAA peakorterist",
		exit_iaa_base_interact = "[${InteractionKey}] Välju IAA peakorterist",

		enter_server_room = "Sisene serveriruumi",
		enter_server_room_interact = "[${InteractionKey}] Sisene serveriruumi",

		exit_server_room = "Välju serveriruumist",
		exit_server_room_interact = "[${InteractionKey}] Välju serveriruumist",

		enter_warehouse_shop = "Sisene laoruumi",
		enter_warehouse_shop_interact = "[${InteractionKey}] Sisene laoruumi",

		exit_warehouse_shop = "Välju laoruumist",
		exit_warehouse_shop_interact = "[${InteractionKey}] Välju laoruumist",

		enter_office_shop = "Sisene kontorisse",
		enter_office_shop_interact = "[${InteractionKey}] Sisene kontorisse",

		exit_office_shop = "Välju kontorist",
		exit_office_shop_interact = "[${InteractionKey}] Välju kontorist",

		enter_cocaine_lab = "Sisene Kokaiini Laborisse",
		enter_cocaine_lab_interact = "[${InteractionKey}] Sisene Kokaiini Laborisse",

		exit_cocaine_lab = "Välju Kokaiini Laborist",
		exit_cocaine_lab_interact = "[${InteractionKey}] Välju Kokaiini Laborist",

		enter_mayor_office = "Sisene linnapea kontorisse",
		enter_mayor_office_interact = "[${InteractionKey}] Sisene linnapea kontorisse",

		exit_mayor_office = "Välju linnapea kontorist",
		exit_mayor_office_interact = "[${InteractionKey}] Välju linnapea kontorist",

		enter_exclusive_dealership = "Sisene Exlusiivsesse Autosalongi",
		enter_exclusive_dealership_interact = "[${InteractionKey}] Sisene eksklusiivsesse autokauplusesse",

		exit_exclusive_dealership = "Välju eksklusiivsest autokauplusest",
		exit_exclusive_dealership_interact = "[${InteractionKey}] Välju eksklusiivsest autokauplusest",

		enter_casino = "Sisene kasiinosse",
		enter_casino_interact = "[${InteractionKey}] Sisene kasiinosse",

		exit_casino = "Välju kasiinost",
		exit_casino_interact = "[${InteractionKey}] Välju kasiinost",

		enter_roof = "Sisene katusele",
		enter_roof_interact = "[${InteractionKey}] Sisene katusele",

		exit_roof = "Välju katuselt",
		exit_roof_interact = "[${InteractionKey}] Välju katuselt",

		enter_penthouse = "Sisene penthouse'i",
		enter_penthouse_interact = "[${InteractionKey}] Sisene penthouse'i",

		exit_penthouse = "Välju penthouse'ist",
		exit_penthouse_interact = "[${InteractionKey}] Välju penthouse'ist",

		enter_parking_garage = "Sisene parkimiskorrusele",
		enter_parking_garage_interact = "[${InteractionKey}] Sisene parkimiskorrusele",

		exit_parking_garage = "Välju parkimiskorruselt",
		exit_parking_garage_interact = "[${InteractionKey}] Välju parkimiskorruselt",

		enter_surgery = "Sisene operatsiooniruumi",
		enter_surgery_interact = "[${InteractionKey}] Mine operatsiooni ruumi sisenemiseks",

		exit_surgery = "Välju operatsiooniruumist",
		exit_surgery_interact = "[${InteractionKey}] Mine operatsiooni ruumist välja",

		enter_icu = "Mine intensiivraviosakonda",
		enter_icu_interact = "[${InteractionKey}] Mine intensiivraviosakonda",

		exit_icu = "Välju intensiivraviosakonnast",
		exit_icu_interact = "[${InteractionKey}] Välju intensiivraviosakonnast",

		enter_underground_tunnel = "Mine maa-alusesse tunnelisse",
		enter_underground_tunnel_interact = "[${InteractionKey}] Mine maa-alusesse tunnelisse",

		exit_underground_tunnel = "Välju maa-alusest tunnelist",
		exit_underground_tunnel_interact = "[${InteractionKey}] Välju maa-alusest tunnelist",

		use_secret_tunnel_exit = "Kasuta salajast väljapääsu",
		use_secret_tunnel_exit_interact = "[${InteractionKey}] Kasuta salajast väljapääsu",

		enter_hangar = "Sisene hangaari",
		enter_hangar_interact = "[${InteractionKey}] Sisene hangaari",

		exit_hangar = "Välju hangaarist",
		exit_hangar_interact = "[${InteractionKey}] Välju hangaarist",

		enter_loading_bay = "Sisene laadimisala",
		enter_loading_bay_interact = "[${InteractionKey}] Sisene laadimisala",

		exit_loading_bay = "Välju laadimisalalt",
		exit_loading_bay_interact = "[${InteractionKey}] Välju laadimisalalt",

		enter_submarine = "Failed to automatically generate translation.",
		enter_submarine_interact = "Failed to automatically generate translation.",

		exit_submarine = "Failed to automatically generate translation.",
		exit_submarine_interact = "Failed to automatically generate translation.",

		enter_garage = "Sisene garaaži",
		enter_garage_interact = "[${InteractionKey}] Sisene garaaži",

		exit_garage = "Välju garaažist",
		exit_garage_interact = "[${InteractionKey}] Välju garaažist",

		enter_viewer_booth = "Sisene vaatlemissaali",
		enter_viewer_booth_interact = "[${InteractionKey}] Sisene vaatajate kabinituppa",

		exit_viewer_booth = "Välju vaatajate kabinitoast",
		exit_viewer_booth_interact = "[${InteractionKey}] Välju vaatajate kabinitoast"
	},

	test_server = {
		menu_title = "OP-Menüü",

		vehicles = "Sõiduki valikud",
		spawn_car = "Sõiduki ilmumine",
		upgrade_vehicle = "Sõiduki värskendamine",
		break_windows = "Lõhu aknad",
		pop_tires = "Rehvid tühjeneda",
		detach_doors = "Uksed eralduma",
		damage_vehicle = "Sõiduki kahjustamine",
		repair_vehicle = "Sõiduki parandamine",
		delete_vehicle = "Sõiduki kustutamine",

		player = "Mängija valikud",
		starve = "Nälgimine",
		add_stress = "Lisa stressi",
		feed = "Söömine",
		relief_stress = "Stressi leevendamine",
		reset_health = "Tervise lähtestamine",
		remove_injuries = "Vigastuste eemaldamine",

		teleport = "Teleportimis valikud",
		teleport_to = "TP kohta",
		tp_customs = "LS Tolliamet",
		tp_legion = "Legioni Väljak",
		tp_garage_a = "Garaaž A",
		tp_paleto = "Paleto laht",
		tp_sandy = "Sandy kaldad",
		tp_zancudo = "Fort Zancudo",
		tp_airport = "LS lennujaam",
		tp_carrier = "Lennukikandja",
		tp_cayo = "Cayo Perico",

		actions = "Tegevused",
		wander_around = "Rända ringi",
		speed_around = "Liigu kiirelt",
		clear_tasks = "Tühista ülesanded",

		you_are_not_in_a_vehicle = "Te ei ole sõidukis.",
		you_are_in_a_vehicle = "Te olete hetkel sõidukis.",
		fully_upgraded = "Sõiduki uuendamine edukalt tehtud.",
		just_spawned_a_car = "Te lootsite hiljuti sõiduki, oodake ${time} enne järgmise loomist."
	},

	time_scale = {
		invalid_time_scale = "Väärtus ${timeScale} on kehtetu ajaskaala.",
		set_time_scale_missing_permissions = "Mängija üritas seada ajaskaala, kuid tal ei olnud selleks vajalikke õigusi.",
		time_scale_set_to = "Aja skaala on muudetud väärtusele ${timeScale}.",
		time_scale_disabled = "Aja skaala ülekirjutus on keelatud.",
		time_scale_already_set_to = "Aja skaala on juba määratud väärtusele ${timeScale}.",
		time_scale_is_already_disabled = "Aja skaala ülekirjutus on juba keelatud."
	},

	titanic = {
		created_titanic = "Titanic loodi uppuva aja ${sinkTime} minuti pikkuseks.",
		failed_to_create_titanic = "Titanicu loomine ebaõnnestus.",
		create_titanic_missing_permissions = "Mängija üritas luua Titanicut, kuid tal ei olnud selleks vajalikke õigusi."
	},

	top_down = {
		not_in_valid_vehicle = "Te ei ole sobivas sõidukis (ainult autod/jalgrattad).",
		top_down_on = "Ülevaade ülevalt alla aktiveeritud.",
		top_down_off = "Ülevaade ülevalt alla deaktiveeritud.",

		top_down_enabled_logs_title = "Ülaltvaade lubatud",
		top_down_enabled_logs_details = "${consoleName} lubas ülaltvaate kaamera.",
		top_down_disabled_logs_title = "Ülaltvaade keelatud",
		top_down_disabled_logs_details = "${consoleName} keelas ülaltvaate kaamera."
	},

	trackers = {
		error_finding_tracker = "Viga teie jälitusseadme leidmisel.",
		tracker_visible = "Teie jälitusseade on nüüd nähtav.",
		tracker_hidden = "Teie jälitusseade on nüüd varjatud.",
		tracker = "Jälitusseade",
		trackers = "Jälitusseadmed",
		stockade_robbery_tracker = "Stockade veoauto (10-78)",
		tracked_vehicle = "Jälgitud sõiduk (${trackerId})",
		tracked_player = "${displayName}",
		battle_royale_teammate = "${name}",
		tracker_character = "${firstName} ${lastName} (${departmentLabel})",
		tracker_character_unit_id = "${unitId}: ${firstName} ${lastName} (${departmentLabel})",
		trackers_in_category = "Jälitajad salvestatakse nüüd kategooriate kaupa kaardil.",
		trackers_split = "Jälitajad kuvatakse nüüd eraldi blipidena.",

		tracker_broken = "${lastName} jälitaja on katki lähedal asuvast asukohast ${location}",
		tracker_broken_unit = "${unitId} ${lastName} jälitaja on katki lähedal asuvast asukohast ${location}",
		tracker_broken_title = "[Hädaabi]",
		tracker_broken_blip = "Katkine jälitaja ${lastName}",
		tracker_broken_timeout = "Teie jälitaja on katki. Saate selle uuesti sisse lülitada 20 minuti pärast.",

		department_sasp = "SASP",
		department_bcso = "BCSO",
		department_sahp = "SAHP",
		department_doc = "DOC",
		department_park_rangers = "Ranger",
		department_medical = "EMS",
		department_doctor = "Arst",
		department_bcfd = "BCFD",

		department_police_undercover = "Salajane Politsei",

		department_police_training = "PD Koolitus",
		department_ems_training = "EMS Koolitus"
	},

	trading_cards = {
		access_store = "Vajuta ~INPUT_CONTEXT~, et pääseda ligi kaardipoest.",

		buy_pack = "Osta ${packName}",
		store_title = "Kaardipood",

		successfully_bought_pack = "Kaardipaki ost õnnestus",
		failed_buy_pack = "Kaardipaki ost ebaõnnestus. Kas Sul on piisavalt raha?",

		just_showed_trading_cards = "Näitasid just oma kaardikollektsiooni kaarti. Palun oota hetk.",

		unpack_successfull = "Pakendi edukalt avamine.",
		failed_unpack = "Pakendi avamine ebaõnnestus.",
		failed_unpack_no_cards = "Ei õnnestunud pakendit avada. Kaardid pole saadaval.",

		edition = "Väljaanne",
		rarity = "Haruldus",

		rarity_bronze = "Pronks",
		rarity_silver = "Hõbe",
		rarity_gold = "Kuld",
		rarity_holo = "Holo",
		rarity_foil = "Foil",
		rarity_relic = "Reliikvia",
		rarity_headache = "Peavalu",
		rarity_missprint = "Veamustrükk",
		rarity_ethereal = "Eeterlik",
		rarity_promotional = "Reklaamiline",

		rarity_custom = "Kohandatud",

		press_to_access_buyback = "Vajuta ~INPUT_CONTEXT~, et ligipääseda kaardite ostmisele tagasiostus",
		buyback_title = "Kaartide tagasiostu osakond",
		close_menu = "Sulge menüü",
		sell_cards = "Müü kõik ${rarity} kaardid",

		failed_selling = "Kaartide müük ebaõnnestus.",
		no_cards_of_type = "Sul ei ole ühtegi ${rarity} kaarti.",
		successfully_sold_cards = "Müüdud ${amount} ${rarity} kaarti väärtuses $${earned}.",

		studio_blip = "945-stuudiod"
	},

	train_pass = {
		used_train_pass = "Kasutasid edukalt 'Rongipääset' eset. Sul on nüüd ${trainPasses} rongipääset.",
		train_passes = "Sul on ${trainPasses} rongipääset."
	},

	training = {
		on_team_attackers = "Sa oled ründaja! \n Aega jäänud: ${time}",
		on_team_defenders = "Sa oled kaitsja! \n Aega jäänud: ${time}",
		attackers = "Ründajad:",
		defenders = "Kaitsevõistkond:",
		waiting_for_players = "Ootame rohkem mängijaid. Igal võistkonnal peab olema vähemalt üks mängija.",
		none = "Puudub",
		match_starting_in = "Mäng algab ${seconds} sekundi pärast.",
		loading_match = "Ootame, kuni kõik mängijad laevad mängu. Mäng algab ${seconds} sekundi pärast.",
		attackers_help_text = "Võida, tappes kõik kaitsevõistkonna liikmed, enne kui jahutusperiood lõppeb!",
		defenders_help_text = "Võida, tappes kõik ründajad või oodates, kuni jahutusperiood lõppeb!",
		attacker = "RÜNDAJA",
		defender = "KAITSELINE",
		attackers_won = "Ründajad võitsid!",
		defenders_won = "Kaitsjad võitsid!"
	},

	traps = {
		rearming = "Relvastumine",
		press_to_rearm = "[${InteractionKey}] Relvastu",
		rearm = "Relvastu",
		e = "E"
	},

	treasure_maps = {
		no_treasure_map_with_tier = "Puudub aareteta kaart tasemega ${mapTier}.",
		treasure_map_does_not_have_piece = "Aarete kaardil tasemega ${mapTier} pole tükki numbriga ${pieceNumber}.",

		sketchy_map = "Visandlik kaart",
		worn_map = "Kantud kaart",
		fancy_map = "Elegantne kaart",
		exquisite_map = "Luksuslik kaart",

		map_piece_tier_1_description = "Allpool näib olevat kirjutatud inetu tükikese alla.",
		map_piece_tier_2_description = "Üsna autentne tükk kaarti, isegi kui tindi allapoole voolab.",
		map_piece_tier_3_description = "See kaarditükk sädeleb päikese käes natuke.",
		map_piece_tier_4_description = "See keeruline ilus kaarditükk lõhnab rahamaailma järele.",

		map_tier_1_description = "Tundub, nagu oleks see käsitsi paberile joonistatud ja seal oleks üks kahtlane plekk.",
		map_tier_2_description = "See kaart on üsna kulunud, kuid tundub, et see võib viia millelegi korralikule.",
		map_tier_3_description = "Väga hea \"särav\" kaart koos \"100% päris\" pitsatiga all paremal pool.",
		map_tier_4_description = "See kaart näeb välja kallim kui enamik aardeid. Lähme!!!!",

		press_to_combine_pieces = "Vajuta ~INPUT_CONTEXT~, et kokku panna kaardiosad tervikkaardiks.",

		treasure_map = "Aareteta kaart (Tase ${mapTier})",

		treasure_maps_debug_enabled = "Aardekaartide silumine on sisse lülitatud.",
		treasure_maps_debug_disabled = "Aarekaartide silumine on keelatud.",

		treasure_map_debug = "Kaart (Tase: ${mapTier}, Kaugus: ${distance})",
		dig_zone = "Auku kaevamine",

		combining_maps = "Kaartide ühendamine",

		combined_map = "Ühendatud kaart tasemega ${mapTier}.",
		no_maps_to_combine = "Sul pole kaarte ühendamiseks.",

		treasure_map_dug_up_logs_title = "Aarekaardi üles kaevamine",
		treasure_map_dug_up_logs_details = "${consoleName} kaevandas aarekaardi tasemega ${mapTier} ja sai langeva ID ${dropId}."
	},

	tsunami = {
		the_ocean_scaler_intensity_already_set_to = "Ookeani skaleerimise tugevus on juba määratud väärtusele `${intensity}`.",
		no_ocean_scaler_intensity_set = "Ookeani skaleerimise tugevust ei ole määratud.",
		set_ocean_scaler_to = "Määra ookeani skaleerimise tugevus väärtusele `${intensity}`.",
		reset_ocean_scaler = "Lähtesta ookeani skaleerimise tugevus.",
		set_ocean_scaler_no_permission = "Mängijal polnud piisavalt õigusi ookeani skaleerimise määramiseks.",

		tsunami_started = "Tsunami on alanud. Kogu kaardi ujutamine võtab aega ${minutes} minutit.",
		tsunami_stopped = "Tsunami peatus."
	},

	tuner_shop = {
		purchase_label = "[${SeatEjectKey}] Osta ${label} hinnaga $${price}",
		purchase_label_far = "${label} | $${price}",
		purchase_label_timer = "[${timer}] ${label} | $${price}",
		purchase_label_sale = "[${SeatEjectKey}] Ostke ${label} summas $${price} (-${discount}%)",
		purchase_label_sale_far = "Müügil | ${label} | $${price} (-${discount}%)",
		purchase_label_sale_timer = "[${timer}] ${label} | $${price} (-${discount}%)",

		failed_vehicle_spawn = "Sõiduki spawnimine ebaõnnestus.",
		not_enough_funds = "Ostusumma eest pole piisavalt raha.",
		area_not_clear = "Spawnipiirkond pole puhas.",
		something_went_wrong = "Midagi läks valesti sõiduki ostmise katsel.",

		purchased_vehicle = "Ostsid ${label} ${price} dollari eest.",

		tuner_shop_blip = "Kesköö Tuunimispuks",

		log_title = "Tunimispuksi ost",
		log_description = "Ostsid `${label}` ${price} dollari eest.",
		log_description_discount = "Ostsid `${label}` ${price} dollari eest ${discount}% allahindlusega."
	},

	tunerchip = {
		pimp_ride = "Pimp My Ride™",

		drive_force = "Pöördemomendi muutja",
		brake_force = "Pidurdusjõud",
		break_bias = "Pidurijaotus (taga/eest)",
		clutch_change_up = "Lülituskiiruse muutja üles",
		clutch_change_down = "Lülituskiiruse muutja alla",
		air_fuel_mixture = "Õhu/kütuse seguleke",

		close = "Sulge",
		reset = "Lähtesta häälestus",
		apply = "Rakenda häälestus",
		save = "Salvesta häälestus",
		tunes = "Häälestused",
		save_tune = "Salvesta häälestus",
		back = "Tagasi",
		name = "Nimi",
		cancel = "Tühista",
		loaded_tune = "Häälestus laaditud edukalt.",
		loading = "Häälestus rakendamine...",
		success = "Häälestus rakendatud edukalt.",
		failed = "Häälestuse rakendamine ebaõnnestus.",
		failed_delete = "Häälestuse kustutamine ebaõnnestus.",
		failed_save = "Häälestuse salvestamine ebaõnnestus.",
		success_save = "Häälestus edukalt salvestatud.",
		success_delete = "Häälestus edukalt kustutatud."
	},

	twitter_bid = {
		twitter_bid = "Twitteri pakkumine",
		information_part_1 = "Soovite kõigile teada anda, kes on Twitteris ülemus? Olge kõige suurem pakkumine kontrollimärgisele!",
		information_part_2 = "Kõige rohkem raha maksja saab sinise kontrollimärgise, kuni keegi teine pakub suuremat summat.",
		information_part_3 = "Kui keegi teine teie pakkumise üleb, te ei saa oma raha tagasi.",
		information_part_4 = "Veenduge, et paneksite pilkepüüdva tsitaadi, et teised teid tõrjuda tahaksid.",
		no_bidder_yet = "Pakkujat pole",
		no_bidder_yet_quote = "Ole esimene pakkuma! (Tsitaat läheb siia)",
		bid_amount = "Pakkumise summa",
		close = "Sulge",
		bid_amount = "Pakkumise summa",
		bid_quote = "Pakkumise tsitaat",
		place_bid = "Tee pakkumine",
		win_the_bid = "Võida pakkumine!",
		bid_won = "Olete pakkumise võitnud... vähemalt hetkel.",
		bid_must_be_greater_than_current_bidder = "Pakkumine peab olema suurem kui praegune pakkujal.",
		max_quote_length_exceeded = "Tsitaadi maksimaalne pikkus ületatud.",
		not_enough_bank_balance = "Ebapiisav pangakonto saldo.",

		twitter_bid_placed_logs_title = "Twitteri pakkumine tehtud",
		twitter_bid_placed_logs_details = "${consoleName} tegi Twitteris pakkumise ${bidAmount} $ eest, tsitaadiga `${bidQuote}`."
	},

	vape = {
		press_to_use = "Vajuta ~INPUT_CONTEXT~, et tõmmata suitsu. Vajuta ~INPUT_FRONTEND_CANCEL~, et panna vape ära.",

		plain_vape = "Geek Baar",
		weed_vape = "Geek Baar (THC õli)",
		mango_vape = "Geek Bar (mango)",
		strawberry_vape = "Geek Bar (maasikas)",
		menthol_vape = "Geek Bar (mentool)",
		apple_vape = "Geek Bar (õun)",
		blueberry_vape = "Geek Bar (mustikas)"
	},

	vdm = {
		failed_vdm = "Mängija VDM-i nurjus.",
		invalid_entity = "Ei leidnud autot või juhti.",
		invalid_target = "Vigane sihtmärk.",
		cleared_vdm = "Puhastatud ${amount} vdm sihtmärki.",
		failed_vdm_clear = "Ei õnnestunud vdm sihtmärke puhastada.",
		added_vdm_target = "NPC võrgu ID-ga ${networkId} sihimeeskonnas ${target}.",
		no_ped_available = "Läheduses ei ole saadaval mingeid pede.",
		failed_steal = "Sõiduki vargamine ebaõnnestus.",
		stealing_vehicle = "Läheduses olevale ped-le anti juhised sõiduki varguseks (${distance}m).",
		no_waypoint = "Failed to automatically generate translation.",
		success_drive_to = "Se instruyó con éxito al peatón para conducir hasta el punto de referencia.",
		failed_drive_to = "No se pudo instruir al peatón para conducir hasta el punto de referencia."
	},

	vending_machines = {
		vending_coffee = "Vajuta nuppu ~INPUT_CONTEXT~, et osta kohvi. Hind on $${cost}.",
		vending_coffee_not_enough_cash = " Sul pole piisavalt raha, et osta kohvi. Hind on $${cost}.",
		vending_snack = "Vajuta ~INPUT_CONTEXT~, et osta snäkk. Hind on $${cost}.",
		vending_snack_not_enough_cash = "Sul ei ole piisavalt sularaha, et osta snäkk. Hind on $${cost}.",
		vending_soda = "Vajuta ~INPUT_CONTEXT~, et osta karastusjook. Hind on $${cost}.",
		vending_soda_not_enough_cash = "Sul ei ole piisavalt sularaha, et osta karastusjook. Hind on $${cost}.",
		vending_water = "Vajuta ~INPUT_CONTEXT~, et osta veepudel. Hind on $${cost}.",
		vending_water_not_enough_cash = "Sul ei ole piisavalt sularaha, et osta veepudel. Hind on $${cost}.",
		vending_machine_damaged = "See müügiautomaat on kahjustatud. Palun kontrollige hiljem uuesti.",
		vending_water_cooler = "Vajutage ~INPUT_CONTEXT~, et saada tass vett.",

		refill_bottle = "Vajutage ~INPUT_CONTEXT~, et pudelit uuesti täita.",
		refilling_bottle = "Pudeli uuesti täitmine"
	},

	voice = {
		illegal_radio_frequency = "Püütakse pääseda ligi ebaseaduslikele raadiosagedustele.",
		voice_chat = "Häälevestlus",
		voice_server_connected = "Ühendatud häälevestluse serveriga. Saadame hääled seotud mängijatele.",
		voice_server_disconnected = "Ühendus häälserveriga on katkenud. Ootame ühendust.",
		voice_muted = "Hääle vestlus on vaigistatud.",
		voice_unmuted = "Hääle vestlus on taas lubatud.",
		broadcasting_voice_to_players = "Edastan mängijatele häälteavet:",
		listening_to_virtual_players = "Kuulan virtuaalmängijaid:",
		radio = "Raadio",
		phone = "Telefon",
		muted_players = "Vaigistatud mängijad:",
		connected = "Ühendatud: ${connected}",
		muted = "Vaigistatud: ${muted}",
		boolean_true = "Tõene",
		boolean_false = "Väär",
		target_channel = "Sihtmärgi kanal: ${targetChannel}",
		actual_channel = "Tegelik kanal: ${actualChannel}",
		target_radius = "Sihtmärgi ulatus: ${targetRadius}",
		actual_radius = "Tegelik ulatus: ${actualRadius}",

		intent_music = "Hääle sisendi režiimiks muudetakse 'muusika'.",
		intent_speech = "Hääle sisendi režiim tagasi muudetakse 'kõneks'.",
		music_mode = "Muusika režiim",

		failed_toggle_listen = "Kuulamise oleku vahetus ebaõnnestus.",
		listeners = "Kuulajad:",
		listening_to = "Kuulatakse:",

		failed_toggle_muted = "Vahetuse ebaõnnestumine summutatud olekule.",
		toggle_muted_on = "${consoleName} on nüüd peidetud häälteabega.",
		toggle_muted_off = "${consoleName} pole enam peidetud häälteabega.",

		affected_by_jammer = "Sinu raadiot tundub mõjutavat segaja või midagi sellist.",

		listening_missing_permissions = "Mängija üritas küll kuulamisolekut muuta, kuid tal puudusid selleks vajalikud õigused.",
		voice_mute_missing_permissions = "Mängija üritas teise mängija vaigistatud olekut muuta, kuid tal puudusid selleks vajalikud õigused.",

		music_mode_logs_title = "Heli režiimi lülitamine",
		music_mode_logs_details_on = "${consoleName} muutis oma häälte sisendirežiimi 'muusikaks'.",
		music_mode_logs_details_off = "${consoleName} muutis oma häälte sisendirežiimi 'kõneks'.",

		listening_logs_title = "Kuulamine",
		stopped_listening_logs_details = "${consoleName} hakkas kuulama kasutajat ${targetConsoleName}.",
		started_listening_logs_details = "${consoleName} lõpetas kasutaja ${targetConsoleName} kuulamise.",

		muted_logs_title = "Vaigistatud hääl",
		muted_logs_details = "${consoleName} vaigistas kasutaja ${targetConsoleName} häälkõnega.",
		unmuted_logs_details = "${consoleName} lülitas ${targetConsoleName} häälevestluse sisse."
	},

	wallhack = {
		wallhack_on = "Seinavaatlus on sisse lülitatud.",
		wallhack_off = "Seinavaatlus on välja lülitatud.",

		wallhack_failed = "Seinavaatluse sisse-/väljalülitamine ebaõnnestus.",
		wallhack_everyone = "Seinavaatlus on edukalt sisse-/väljalülitatud kõigile.",
		wallhack_self = "Seinavaatlus on edukalt sisse-/väljalülitatud endale.",
		wallhack_player = "Seinavaatlus on edukalt sisse-/väljalülitatud mängijale ${displayName}.",

		wallhack_everyone_logs_title = "Lülitatud läbi seinte vaatamine kõigile",
		wallhack_everyone_logs_details = "${consoleName} lülitas läbi seinte vaatamise sisse kõigile.",
		wallhack_player_logs_title = "Lülitatud läbi seinte vaatamine mängijale",
		wallhack_player_logs_details = "${consoleName} lülitas läbi seinte vaatamise sisse mängijale ${targetConsoleName}.",
		wallhack_self_logs_title = "Lülitatud läbi seinte vaatamine endale",
		wallhack_self_logs_details = "${consoleName} lülitas läbi seinte vaatamise sisse endale."
	},

	washrooms = {
		use_sink = "[${InteractionKey}] Kasuta kraanikaussi",
		using_sink = "Kasutad kraanikaussi",
		refill_bottle = "[${InteractionKey}] Täida pudel",
		refilling_bottle = "Pudeli täitmiseks"
	},

	weed = {
		strain_default = "Metsik udu",
		strain_lemon = "Sidruni udu",
		strain_northern = "Põhjavalgus",
		strain_kush = "OG Kush",

		default_emoji = "🥦",
		lemon_emoji = "🏃",
		northern_emoji = "🛡️",
		kush_emoji = "🦁",

		strain_description = "<b>Sort:</b> <i>${strain}</i> $ {emoji}"
	},

	weed_field = {
		pick_weed = "Vajuta ~INPUT_CONTEXT~, et korjata umbrohtu.",
		picking_weed = "Korjad umbrohtu"
	},

	wizard = {
		menu_title = "Võlur",

		ragdoll_player = "Nukutada",
		ragdoll_player_force = "Nukutada (Sunniviisiliselt)",
		jump_player = "Hüppa",
		punch_player = "Löö sundasendisse",
		enter_vehicle_player = "Mine Sõiduki juurde",
		exit_vehicle_player = "Lahku sõidukist",
		yank_steering_wheel_player = "Tõmmata rooli",
		flashbang_player = "Pimestada",
		paper_bag_player = "Panna kott pähe",
		ignite_player = "Põlema panna",
		explode_player = "Plahvatada",
		quietly_revive_player = "Vaikselt elustada",
		play_sound = "Mängi heli",

		play_sound_knocking = "Koputamine",
		play_sound_discord = "Discord",
		play_sound_phone_call = "Telefonikõne",
		play_sound_message = "Sõnum",
		play_sound_twitter = "Twitter",

		invalid_radius = "Vale raadius",

		punch_success = "Mängijale ${consoleName} õnnestus lüüa.",
		punch_failed = "Mängija peksmist ebaõnnestus.",

		explode_success = "Mängija ${consoleName} plahvatus õnnestus.",
		explode_failed = "Mängija plahvatuse tegemine ebaõnnestus.",

		taze_success = "Edukalt tazerisite ${consoleName}.",
		taze_failed = "Mängijale taseerimine ebaõnnestus.",

		flashbang_success = "Edukalt vakuum toruga ${consoleName}.",
		flashbang_failed = "Ebaõnnestus vakuum toruga mängijat vakuum'ata.",

		flashbang_radius_success = "Edukalt vakuum toruga ${radius} raadiuses olevad mängijad.",
		flashbang_radius_failed = "Ebaõnnestus vakuum toruga mängijad raadiuses.",

		missing_command = "Puuduv käsk.",
		run_as_success = "Edukalt käivitati käsk ${consoleName} nime all.",
		run_as_failed = "Ebaõnnestus käivitada käsk ${consoleName} nime all.",

		no_nearby_vehicle = "Läheduses pole sõidukit.",
		reversing_failed = "Ei õnnestunud tegelast tagasi teha.",
		driving_forwards_failed = "Ei õnnestunud tegelast edasi sõitma panna.",
		reversing_success = "Tegelase tagasi panemine õnnestus.",
		driving_forwards_success = "Tegelase edasi sõitma panemine õnnestus.",

		vehicle_temp_action_missing_permissions = "Mängija üritas käivitada sõiduki ajutist tegevust ilma nõuetekohaste õigusteta."
	},

	yoga = {
		yoga_mat_use = "[${InteractionKey}] Joogamatt",
		yoga_mat = "Joogamatt",
		press_to_stop_yoga = "Lõpetamiseks vajuta ~INPUT_CONTEXT~."
	},

	zombies = {
		hold_to_continue_looting_zombie = "[${InteractionKey}] Surnust röövimine",
		press_to_loot_zombie = "[${InteractionKey}] Röövi zombit",
		looting_zombie = "Zombi röövimine",
		zombie_looting_injection = "Liiga palju zombi röövimist! (Serveri timeouti ületatud, tõenäoliselt kasutades süsti tegemise programmi selleks.)",

		zombie_trip_limit = "Tunnetad end liiga väsinuna, et edasi zombisid röövida. Proovi homme uuesti."
	},

	-- global/*
	entities = {
		in_no_ped_population_area = "Viibid piirkonnas, kus 'NPC' populatsiooni pole.",
		not_in_no_ped_population_area = "Sa ei viibi piirkonnas, kus 'NPC' populatsiooni pole."
	},

	explosions = {
		invalid_explosion_type = "Plahvatuse tüüp `${explosionType}` ei ole kehtiv.",
		invalid_camera_shake = "Kaamera raputamine `${cameraShake}` ei ole kehtiv.",
		invalid_damage_scale = "Kahju skaala `${damageScale}` ei ole kehtiv.",
		created_explosion = "Loodud plahvatus tüübist `${explosionTypeName}` kahju skaalaga `${damageScale}` ja kaamera raputusega `${cameraShake}`."
	},

	exports = {
		player_killed = "Mängija tapetud",
		player_killed_details = "${consoleName} tapeti ${killerConsoleName} poolt. Tapmise põhjus: `${deathCause}`.",

		killed_player = "Tapetud mängija",
		killed_player_details = "${killerConsoleName} tappis ${consoleName}. Tapmise põhjus: `${deathCause}`. (See on vastavalt tapetud mängija klientrakendusele, mida saab võltsida, pea seda meeles)",

		player_died = "Mängija suri",
		player_died_details = "${consoleName} suri. Surma põhjus: `${deathCause}`."
	},

	functions = {
		unknown = "Tundmatu",
		flipped_vehicle_logs_title = "Ümberpaisatud sõiduk",
		flipped_vehicle_logs_details = "${consoleName} ümberpööratud sõiduk.",
		failed_to_find_ground = "Ei õnnestunud maapinda leida, teleportisin sind lähimasse teele.",

		knots = "sõlme",
		mph = "mph",
		kmh = "km/h"
	},

	locales = {
		showing_raw_locales_on = "Alternando la visualización de los locales en bruto, activado.",
		showing_raw_locales_off = "Alternando la visualización de los locales en bruto, desactivado."
	},

	states = {
		invalid_network_id = "Võrgu ID on vale.",
		debug_states_failed = "Selle objekti olekute tõrge ebaõnnestus.",
		no_states = "Sellel üksusel pole seadeid määratud.",
		printed_states = "Printin üksuse ${networkId} seisundeid.",

		get_entity_states_missing_permissions = "Mängija üritas saada konkreetse üksuse seise ilma korralike lubadeta."
	},

	time = {
		year = "aasta",
		years = "aastat",
		month = "kuu",
		months = "kuud",
		day = "päev",
		days = "päeva",
		hour = "tund",
		hours = "tundi",
		minute = "minut",
		minutes = "minutit",
		second = "sekund",
		seconds = "sekundit",
		just_now = "just nüüd",
		now = "nüüd",

		month_1 = "Enero",
		month_2 = "Febrero",
		month_3 = "Marzo",
		month_4 = "Abril",
		month_5 = "Mayo",
		month_6 = "Junio",
		month_7 = "Julio",
		month_8 = "Agosto",
		month_9 = "Septiembre",
		month_10 = "Octubre",
		month_11 = "Noviembre",
		month_12 = "Diciembre",

		time_in = "${time} ${unit} pärast",
		time_ago = "${time} ${unit} tagasi"
	},

	-- illegal/*
	stockade = {
		dispatch = "[Häirekeskus]",
		status_1a = "10-78, Üks Stockade on vajutanud hädaolukorra nuppu ja palub tagalat aadressil ${streetName}.",
		status_1b = "10-78, Stockade on vajutanud hädaabiklahvi ning palub backup'i ${streetName} lähedal ${crossingRoad}.",
		status_2a = "10-78, Häireseade on tuvastanud, et Stockade'i uksi on praegu tuunimas ja taotletakse backup'i ${streetName}'il.",
		status_2b = "10-78, Häireseade on tuvastanud, et Stockade'i uksi on praegu tuunimas ja taotletakse backup'i ${streetName} lähedal ${crossingRoad}.",
		status_3a = "10-78, Häireseade on tuvastanud, et Stockade'i uksed on valesti avatud ning taotletakse backup'i ${streetName}'il.",
		status_3b = "10-78, Häiresüsteem tuvastas, et Stockade'i uksed on ebaõigesti avatud ja vajatakse lisajõudu ${streetName} lähedal asuvas ristmikul nimega ${crossingRoad}.",
		grab_valuables = "[${InteractionKey}] Võtke hinnalised asjad (${valuablesRemaining} alles)",
		grabbing_valuables = "Hinnaliste asjade võtmine",
		use_advanced_lockpick = "[${InteractionKey}] Kasutage arenenud lukuvõtit",
		lockpicking_stockade = "Stockade'i lukustamine",

		status_blip = "Stockade",

		stockade_reward_logs_title = "Stockade'i auhinnad",
		cash_pickup_logs_details = "${consoleName} korjas üles $${cashAmount} raha.",
		item_pickup_logs_details = "${consoleName} korjas üles 1x ${itemName}.",

		reward_diamonds = "Sa võtsid teemanti.",
		reward_gold_bar = "Sa võtsid kullastanga.",
		reward_cash = "Sa võtsid raha.",
		reward_keycard_red = "Sa võtsid punasele võtmekaardile.",
		reward_treasure_map_piece = "Sa said aardekaardi tüki.",

		stockade_logs_title = "Stockade aktiveeriti",
		stockade_logs_details = "${consoleName} aktiveeris stockade."
	},

	-- interfaces/*
	interface = {
		no_interfaces_are_focused = "Fookuses pole ühtegi liidest.",
		interfaces_focused = "Fookuses olevad liidesed:\n${interfacesFocused}"
	},

	-- jobs/*
	bean_machine = {
		start_delivery = "Alusta kohaletoimetamist.",
		press_to_start_delivery = "Alustamiseks vajuta ~g~${InteractionKey}~w~.",
		already_in_delivery = " Sul on juba aktiivne kohaletoimetamine.",
		not_bean_machine_employee = "Sa pead olema Bean Machine töötaja, et alustada kohaletoimetamist.",
		finish_delivery = "Lõpeta kohaletoimetamine.",
		press_to_finish_delivery = "Lõpetamiseks vajuta ~g~${InteractionKey}~w~.",
		started_delivery = "Alustasid kohaletoimetamist sihtkohale ${deliveryName}. Asukoht on märgitud kaardile.",
		finished_delivery = "Kohaletoimetamine sihtkohale ${deliveryName} on lõpetatud. Sa teenisid $${deliveryPrice} ja $${distanceBonus} jootraha, kokku $${totalPrice}.",
		error_finishing_delivery = "Ilmnes tõrge kui üritati tellimust lõpetada.",
		finished_delivery_title = "Lõpetatud Bean Machine tellimus",
		finished_delivery_details = "${consoleName} lõpetas Bean Machine tellimuse ja teenis $${deliveryPrice} ning $${distanceBonus} jootrahana, mis kokku teeb $${totalPrice}.",
		delivery_blip = "Bean Machine tellimus"
	},

	burger_shot = {
		start_delivery = "Alusta tellimust.",
		press_to_start_delivery = "Vajuta ~g~${InteractionKey} ~w~, et alustada tellimust.",
		already_in_delivery = "Sul on juba aktiivne tellimus.",
		not_burger_shot_employee = "Peate olema Burger Shot'i töötaja, et alustada kohaletoimetamist.",
		finish_delivery = "Lõpeta kohaletoimetamine.",
		press_to_finish_delivery = "Vajuta ~g~${InteractionKey} ~w~kohaletoimetamise lõpetamiseks.",
		started_delivery = "Alustasid kohaletoimetamist kohale ${deliveryName}. Asukoht on märgitud kaardil.",
		finished_delivery = "Kohaletoimetamine kohale ${deliveryName} on lõpetatud. Te teenisite kokku $${totalPrice} koos $${distanceBonus} boonusega. Teile maksti $${deliveryPrice} otse tasuna.",
		error_finishing_delivery = "Teie kohaletoimetamise lõpetamisel ilmnes tõrge.",
		finished_delivery_title = "Burger Shoti kohaletoimetamine edukalt lõpetatud",
		finished_delivery_details = "${consoleName} lõpetas ära Burger Shoti kohaletoimetamise ja teenis ${deliveryPrice} dollarit ning ${distanceBonus} dollarit jootraha. Kokku teenis ${totalPrice} dollarit.",
		delivery_blip = "Burger Shoti kohaletoimetamine"
	},

	bus_driver = {
		start_route = "Alusta marsruuti vajutades klahvi ~INPUT_CONTEXT~",
		failed_start_job = "Uue töö alustamine ebaõnnestus.",
		next_stop = "Järgmine peatus",
		bus_hq = "Bussi peakorter",
		job_cancelled = "Töö on tühistatud.",
		next_stop_help = "Järgmine peatus: ${stop} / ${total}",
		passenger_count = "Reisijad: ${passengers} / ${seats}",
		shutdown_engine = "Lülita mootor välja ja oota reisijaid.",
		return_to_hq = "Tagasi peakorterisse.",
		bus_stop = "Bussipeatus",
		pay_for_ticket = "Maksa piletiraha (~INPUT_CONTEXT~ - $18).",
		not_enough_money_ticket = "Teil pole piisavalt sularaha piletiks (18 dollarit).",
		ticket_paid = "${displayName} maksis bussipileti eest.",
		paid_for_ticket = "Te maksite edukalt bussipileti eest.",

		east_route = "Mängusaal",
		pillbox_route = "Pillbox",
		little_seoul_route = "Little Seoul",
		sandy_route = "Liivane kõrberada",
		paleto_route = "Suur ookeani ekspres",
		grapeseed_route = "Grapeseed Greenway",
		route_68_route = "Marsruut 68 otse",
		airport_route = "Lennujaama buss",

		finished_job_logs_title = "Lõpetatud bussimarsruut",
		finished_job_logs_details = "${consoleName} lõpetas sõitmise `${route}` bussiliinil ja teenis $${payout}."
	},

	doj = {
		invalid_type = "Vigane või puuduv tüüp.",
		missing_search = "Puuduv otsinguparameeter.",
		lookup_failed = "Andmetüübi ja otsingu jaoks tulemusi ei leitud.",

		result_signature = "San Andrease osariik",
		result_title = "${type} otsing (\"${search}\")",
		result_text = "${type} - \"${search}\"\n\nC-ID:\t\t${characterId}\nEesnimi:\t${firstName}\nPerenimi:\t${lastName}\nTelefoninumber:\t${phoneNumber}\nSünniaeg:\t${dateOfBirth}\nSugu:\t\t${gender}\n\nTwitter: @${username}",

		looked_up_character_logs_title = "Tegelase otsing",
		looked_up_character_logs_details = "Fucking used for sawing shit off of other shitty things.",

		invalid_time = "Steel Fucking File",
		missing_invalid_plate = "Used for fucking filing things. Not your goddamn taxes though.",
		vehicle_hold_success = "$200 Shitty Savings Bond",
		vehicle_hold_failed = "A shitty $200 savings bond that represents your fucking commitment to financial security. This shit can be cashed in at participating banks, providing you with a fucking boost to your savings and a fucking step closer to your fucking financial goals.",
		invalid_plate = "$500 Shitty Savings Bond",
		cant_reduce_time = "A fucking $500 savings bond that serves as a substantial investment in your fucking future. When the fucking time is right, redeem it at a bank to unlock its full fucking value and take a significant goddamn stride toward your financial aspirations.",

		vehicle_hold_logs_title = "Fucking used for sawing shit off of other shitty things.",
		vehicle_hold_logs_details = "Steel Fucking File"
	},

	duty = {
		toggle_duty_status_no_permissions = "Proovis lubatud staatuse sisse/välja lülitada käsklusega ilma vajalike õigusteta.",

		duty_status_on = "Mängija on nüüd töörežiimis.",
		duty_status_off = "Mängija on nüüd töörežiimist väljas.",
		duty_status_failed = "Töörežiimi sisselülitamine ebaõnnestus.",

		training_status_on = "Koolituse režiim on edukalt sisse lülitatud.",
		training_status_off = "Koolituse režiim on edukalt välja lülitatud.",
		training_status_failed = "Koolituse režiimi vahetus ebaõnnestus.",

		emergency_call = "On olemas hädaabikõne. Vajutage ENTER, et vastu võtta.",

		toggled_operator_status_on = "Operaatori olek on vahetatud sisse.",
		toggled_operator_status_off = "Operaatori olek on vahetatud välja."
	},

	job_center = {
		life_invader = "Elu Vandal",
		life_invader_blip = "Kandideeri tööle",
		ui_close_menu = "Sulge menüü",
		press_to_browse_jobs = "Vajuta ~INPUT_CONTEXT~, et uurida töökohti.",
		change_job = "Töö muutmine: ${jobName}",
		job_unemployed = "Töötu",
		job_transportation = "Veokijuht",
		job_taxi = "Taksosõitja",
		job_journalist = "Ajakirjanik",
		job_government = "Jäätmevedaja",
		job_mechanic = "Autolammutaja",
		job_delivery = "Tarnetöö",
		job_bus_driver = "Bussijuht",
		changed_job_already_set_to_job = "Sinu töö on juba määratud kui ${jobName}.",
		changed_job_success = "Sinu töö on edukalt muudetud ${jobName}ks.",
		changed_job_success_go_to_coords = "Sinu töö on edukalt muudetud ${jobName}ks. Alustamiseks jälgi oma kaardil olevat punkti.",
		changed_job_failure = "Töö muutmisel esines tõrge ${jobName} määramisel.",
		changed_job_title = "Töö muudetud",
		changed_job_details = "${consoleName} muutis oma tööks `${jobName}`."
	},

	police = {
		aim_assist_enabled = "Teie sihtimisoskus on nüüd suurepärane.",
		aim_assist_disabled = "Teie sihtimisoskus on nüüd halvem kui kriminaalidel / tõpratel. Soovitame sihtimisabi kohe uuesti lubada.",
		you_are_not_police = "See funktsioon on reserveeritud politseile, mitte kriminaalidele / tõpradele.",

		no_vehicle_tint = "Läheduses pole sõiduki akent, et varjundit mõõta.",
		window_broken = "See aken on purunenud.",
		window_open = "See aken on avatud.",
		measuring_tint = "Varjundi mõõtmine",
		tint_measurement = "Varjundi mõõtmine",

		tint_0 = "Sellel aknal pole varjundit.",
		tint_1 = "Selle akna varjund on täiesti must.",
		tint_2 = "Selle akna varjund on tumedas suitsus.",
		tint_3 = "Selle akna varjund on hele suitsus.",
		tint_4 = "Selle akna varjund on limusiinisarnane.",
		tint_5 = "Selle akna varjund on roheline.",

		undercover_enabled = "Sa oled nüüd salajases töös.",
		undercover_disabled = "Sa ei ole enam salajases töös.",

		npc_vehicle = "See sõiduk ei ole mängija omatud sõiduk.",
		not_in_a_vehicle = "Sa ei sõida praegu üheski sõidukis.",
		invalid_minutes = "Vigane aeg (1 minuti ja 48 tunni vahel).",

		not_on_duty = "Sa ei ole tööl.",
		failed_impound = "Sõiduki arestimine ebaõnnestus.",
		not_near_impound = "Sa ei ole politseijaama sõidukite arestimisalal.",
		impound_success = "Sõiduk numbri märgiga `${plate}` on edukalt arestitud ${minutes} minutiks.",

		access_impound = "[${InteractionKey}] Pääse sõidukeid arestimisalale",
		impound_lot = "Sõidukite arestimisala",
		exit_impound = "Välju likvideerimiskohast",
		no_impounded_vehicles = "Hetkel pole ühtegi sõidukit likvideerimiskohas.",
		failed_impound_list = "Ei õnnestunud saada likvideeritud sõidukite nimekirja.",
		impound_owner = "Omanik: #${cid}",
		withdraw_success = "Sõiduk edukalt välja võetud.",
		failed_withdraw = "Ei õnnestunud sõidukit välja võtta.",
		vehicle_not_impounded = "Sõidukit hetkel likvideerimiskohas ei ole.",

		impound_logs_title = "PD likvideerimiskohad",
		impound_logs_details = "${consoleName} pani sõiduki numbritega ${plate} politsei likvideerimiskohale ${minutes} minutiks.",

		impound_withdraw_logs_title = "PD väljavõtulogi",
		impound_withdraw_logs_details = "${consoleName} võttis sõiduki numbrimärgiga ${plate} PD konfiskeerimislaost (Aega järel: ${timeLeft}).",

		none = "Puudub",
		active = "Aktiivne",
		not_active = "Mitteaktiivne",
		active_robberies = "\nAktiivne kauplus: ${store}.\nAktiivne pank: ${bank}.\nAktiivne juveelipood: ${jewelry}",

		failed_dispatch = "Saadetise sõnumi saatmine ebaõnnestus.",
		dispatch_title = "[Saadetis]",
		dispatch_message = "${author}: ${message}",
		invalid_dispatch_message = "Vigane saadetise sõnum (Maksimaalselt 255 tähemärki).",
		in_training = "Te olete hetkel koolitusrežiimis.",
		cannot_use_dispatch = "Te ei saa hetkel kasutada hädakõnet.",

		dispatch_message_logs_title = "Hädakõne sõnum",
		dispatch_message_logs_details = "${consoleName} saatis hädakõne sõnumi: `${message}`.",

		no_keys = "Sul ei ole selle sõiduki võtmeid.",
		invalid_drive_mode = "Vigane juhtimisrežiim.",
		not_in_police_vehicle = "Sa ei ole politseisõidukis.",
		drive_mode_too_fast = "Sa sõidad liiga kiiresti, et muuta juhtimisrežiimi.",
		drive_mode_already_set = "Teie sõidurežiim on juba määratud `${mode}`.",
		drive_mode_failed = "Sõidurežiimi määramine ebaõnnestus.",
		drive_mode_set = "Sõidurežiim on edukalt määratud `${mode}`.",

		mode_s = "Sport-Režiim",
		mode_d = "Tavarežiim",

		drive_mode_logs_title = "Sõidurežiim muutus",
		drive_mode_logs_details = "${consoleName} muutis oma sõidurežiimi `${mode}`'ks."
	},

	state = {
		license_heli = "Helikopter",
		license_fw = "Fikseeritud tiivik",
		license_cfi = "Sertifitseeritud lennuinstruktor",
		license_hw = "Raskeveok",
		license_hwh = "Raskeveokiga helikopter",
		license_perf = "Jõudlus",
		license_utility = "Tööteenus",
		license_commercial = "Kaubavedu",
		license_management = "Juhtimine",
		license_passenger = "Kaasreisija",
		license_military = "Sõjavägi",
		license_special = "Erilennukid",
		license_boat = "Paadiluba",
		license_hunting = "Jahiluba",
		license_fishing = "Kalastusluba",
		license_weapon = "Relvaluba",
		license_mining = "Kaevandamisluba",
		license_driver = "Juhi load",
		gave_character_license = "Andis ${characterName}-le loa `${licenseLabel}`.",
		character_already_has_license = "${characterName}-l on juba luba `${licenseLabel}`.",
		removed_character_license = "Võttis loa `${licenseLabel}` ära kasutajalt ${characterName}.",
		character_does_not_have_license = "${characterName}-l puudub luba `${licenseLabel}`.",
		license_not_found = "Litsentsi `${licenseName}` ei leitud.",
		user_not_found_with_character_id = "Kasutajat ei leitud tegelase ID-ga `${characterId}`.",
		no_license_added = "Ühtegi litsentsi ei lisatud.",
		invalid_character_id = "Lisatud tegelase ID ei ole kehtiv.",
		no_character_id_added = "Ühtegi tegelase ID-d ei lisatud.",
		your_licenses_are = "Sinu litsentsid on järgmised: ${licenses}",
		player_licenses_are = "${characterName}l on järgmised litsentsid: ${licenses}",
		you_have_no_licenses = "Sul ei ole ühtegi litsentsi.",
		player_has_no_licenses = "${characterName}il pole lube.",
		failed_to_get_licenses = "Lubade hankimine ebaõnnestus.",
		license_list = "Saadaolevad load: ${licenseList}.",
		already_married = "Üks või mõlemad partnerid on juba abielus.",
		either_not_married = "Üks või mõlemad partnerid ei ole abielus.",
		not_married = "Partnerid ei ole abielus omavahel.",
		failed_marriage = "Abieluseisu määramine ebaõnnestus.",
		marriage_success = "${nameA} ja ${nameB} on nüüd abielus.",
		divorce_success = "${nameA} ja ${nameB} ei ole enam abielus.",
		character_not_online = "Üks partneritest pole hetkel võrgus. Ainult surnud partnerid võivad lahutada, kui nad pole võrgus.",
		you_are_now_married = "Oled nüüd abielus kasutajaga ${name}.",
		you_are_no_longer_married = "Sa pole enam abielus kasutajaga ${name}.",

		divorced_logs_title = "Lahutus",
		divorced_logs_details = "${consoleName} uuendas kasutajate ${nameA} #${cidA} ja ${nameB} #${cidB} abieluseisu `lahutatud`.",
		married_logs_title = "Abielus",
		married_logs_details = "${consoleName} uuendas kasutajate ${nameA} #${cidA} ja ${nameB} #${cidB} abieluseisu `abielus`."
	},

	tow = {
		press_to_access_spawner = "Vajuta ~INPUT_CONTEXT~, et saada juurde sõidukite spawner.",
		tow_vehicles = "Lohuta Sõidukeid",
		vehicle_list = "Sõidukite Nimekiri",
		park_vehicle = "Pargi Sõiduk",
		parked_vehicle = "Sõiduk on parkitud.",
		no_vehicle_to_park = "Ei ole sõidukit, mida parkida.",
		close_menu = "Sulge Menüü",
		purchased_vehicle = "Sõiduk ostetud.",
		shop_on_timeout = "Sõidukipood on ajutiselt suletud. Palun proovi uuesti hiljem.",
		spawn_area_not_clear = "Spawna ala pole selge.",
		purchase_funds = "Ebapiisavad vahendid.",
		return_button = "Tagasi",

		toggled_messages_on = "Sõnumid lülitatud sisse.",
		toggled_messages_off = "Sõnumid lülitatud välja.",
		cannot_toggle_mechanic_messages = "Lohkujad ei saa remonditeavitusi välja lülitada."
	},

	weazel_news = {
		press_to_access_spawner = "Vajuta ~INPUT_CONTEXT~, et avada sõidukite spawner.",
		weazel_news = "Weazel News",
		vehicle_list = "Sõidukite nimekiri",
		close_menu = "Sulge menüü",
		return_button = "Tagasi",
		park_vehicle = "Parki sõiduk",
		parked_vehicle = "Sõiduk on parkitud.",
		no_vehicle_to_park = "Sõidukit pole võimalik parkida.",
		spawned_vehicle = "Sõiduk loodi",
		spawner_on_timeout = "Sõiduki loomine on ajutiselt blokeeritud. Palun proovige hiljem uuesti.",
		spawn_area_not_clear = "Loomisala ei ole vaba."
	},

	-- menus/*
	hydrogen = {
		number1_of_number2 = "${number1} / ${number2}"
	},

	native = {
		player_label = "[${source}] ${name}"
	},

	-- vehicles/*
	alert = {
		triggered_vehicle_alert = "Sõiduki häire aktiveeritud ${locationLabel} asukohas sõiduki numbrimärgiga `${plateText}`.",
		vehicle_alert_blip = "Sõiduki häire"
	},

	boats = {
		anchor_disconnected = "Lõi maha ankru ühenduse edukalt.",
		anchored_successfully = "Ankurdati edukalt.",
		removing_anchor = "Ankru ühenduse katkestamine",
		deploying_anchor = "Ankru paigaldamine",
		no_vehicle_nearby = "Selles läheduses ei ole paati, mille saaksid ankurdada.",
		vehicle_not_anchorable = "Te ei saa seda paati ankurdada."
	},

	car_wash = {
		use_car_wash = "Vajuta ~INPUT_CONTEXT~, et kasutada autopesulat. Hind on $${cost}.",
		stop_car_to_wash = "Peata oma sõiduk autopesula kasutamiseks.",
		vehicle_already_clean = "Selle sõiduki pesemiseks on see juba liiga puhas.",
		car_wash = "Autopesula",
		air_unit_damaged = "See lennuvahend on kahjustatud.",
		air_unit_not_enough_cash = "Sul ei ole piisavalt raha, et lennuvahendit kasutada.",
		air_unit_exit_vehicle = "Välju sõidukist, et lennuvahendit kasutada.",
		air_unit_press_to_use = "Vajuta ~g~${SeatEjectKey} ~w~kasutamiseks Õhuelikopterit hinnaga $${cost}.",
		air_unit_purchase_cleaning_kit = "Vajuta ~g~${InventoryKey} ~w~et osta auto puhastus komplekt.",
		cleaning_vehicle = "Auto Puhastamine",
		not_enough_money = "Sul pole piisavalt raha, et Õhuelikopterit kasutada.",
		vehicle_not_in_range = "Auto on liiga kaugel, et seda puhastada."
	},

	carrier = {
		use_catapult = "Vajuta ~INPUT_CONTEXT~ hüpitooli kinnitamiseks.",
		use_launch = "Vajuta ~INPUT_VEH_HANDBRAKE~ hüpitoolist väljumiseks."
	},

	clamps = {
		no_vehicle_near = "Sa ei ole lähedal ühelegi sõidukile vasakul tagumisel rattal.",
		vehicle_not_driveable = "Ei saa kinnitusklambrit kinnitada katkisele sõidukile.",
		clamping = "Kinnitamine",
		removing_clamp = "Kinnitusklambri eemaldamine",
		remove_clamp = "[${InteractionKey}] Eemalda kinnitusklamber",

		clamped_log_title = "Kinnitatud kinnitusklamber",
		clamped_log_details = "${consoleName} kinnitas kinnitusklambri sõidukile numbrimärgiga `${plate}`.",
		unclamped_log_title = "Kinnitusklambri eemaldamine",
		unclamped_log_details = "${consoleName} eemaldas kinnitusklambri sõidukilt numbrimärgiga `${plate}`."
	},

	damage = {
		vehicle = "Auto-ID: ${entity}",
		general = "Üldine: ${value}",
		body = "Kere: ${value}",
		engine = "Mootor: ${value}",
		petrol_tank = "Paak: ${value}",
		temperature = "Temperatuur: ${value}",
		tracked_vehicle = "Jälitatav sõiduk",

		debug_vehicle_on = "Lülitatud sisse sõiduki tõrkeotsing režiimis.",
		debug_vehicle_off = "Lülitatud välja sõiduki tõrkeotsing režiimis."
	},

	fuel = {
		exit_to_fuel = "Lahkuge sõidukist, et tankida.",
		press_to_fuel = "Vajutage ~g~${InteractionKey} ~w~, et tankida sõidukit.",
		fuel_pump_text = "Used for fucking filing things. Not your goddamn taxes though.",
		vehicle_text = "Kütuse tase: ${fuelLevel}%",
		tank_full = "Paak on täis.",
		vehicle_busy = "Lähedal oleval sõidukil on hõivatud.",
		purchase_jerry_can = "Vajuta ~g~${InventoryKey} ~w~, et osta kanistriga kütust.",
		gas_station = "Bensiinijaam",
		petrolcan_fuel_text = "$200 Shitty Savings Bond",
		player_busy = "Sa oled hõivatud millegi muuga.",
		fuel_level_set_to = "Kütuse tase on määratud `${fuelLevel}` peale.",
		not_in_a_vehicle = "Sa ei ole sõidukis.",
		vehicle_engine_on = "Mootor töötab endiselt.",

		vehicle_exploded_logs_title = "Sõiduk plahvatas",
		vehicle_exploded_logs_details = "${consoleName} tankis sõiduki üle ja käivitas plahvatuse jooksva mootori tõttu."
	},

	gadgets = {
		helicopter_camera_vehicle_info = "Kiirus: ${speed}\nMudel: ${model}\nNumbrimärk: ${plate}",
		helicopter_camera_altitude = "${altitude} jalga maapinnast kõrgusel",
		helicopter_camera_altitude_asl = "${altitude} jalga merepinnast kõrgusel",
		helicopter_camera_locked_on = "Lukustatud",
		helicopter_camera_not_locked = "Lukustamata",
		unknown = "Teadmata"
	},

	garage_access = {
		menu_title = "Garaaži haldur",
		button_close = "Sulge",
		loading = "Laadimine...",
		access = "Garaaži ligipääs",
		access_description = "Need tegelased saavad teie garaažist sõidukeid välja võtta ja sinna tagasi panna.",
		accessible = "Teie ligipääs",
		accessible_description = "Need on garaažid, millele teile on antud ligipääs.",
		no_access = "Kedagi peale teie ei saa teie garaaži ligi.",
		no_accessible = "Ükski inimene ei ole andnud teile ligipääsu nende garaažile.",

		failed_allow_access = "Ei õnnestunud garaažile ligipääsu lubada.",
		failed_remove_access = "Ei õnnestunud garaaži ligipääsu eemaldada.",
		already_has_access = "Karakteril on juba ligipääs sinu garaažile.",
		invalid_character_id = "Vigane karakteri ID.",
		does_not_access = "Karakteril ei ole juba ligipääsu sinu garaažile.",

		added_access_logs_title = "Lisatud garaaži ligipääs",
		added_access_logs_details = "${consoleName} (#${characterId}) andis #${targetCharacterId} ligipääsu nende garaažile.",
		removed_access_logs_title = "Eemaldatud garaaži ligipääs",
		removed_access_logs_details = "${consoleName} (#${characterId}) eemaldas #${targetCharacterId} ligipääsu oma garaažile."
	},

	garages = {
		garage_empty = "Teie garaaž on tühi!",
		impound_lot = "Hoiukoda",
		police_impound = "Politsei Hoiukoda",
		owner_self = "Omanik",
		owner_other = "Ligipääs",
		engine = "Mootor",
		body = "Kere",
		vehicle_in = "Sisse",
		vehicle_out = "Välja",
		vehicle_at_police_impound = "Teie sõiduk on hetkel politsei valduses.",
		vehicle_at_impound = "Teie sõiduk asub Hoiukojas.",
		impound_lot_short = "Arestitud",
		waypoint_to_impound = "Teie GPS-i on märgitud suund Hoiukojale.",
		unable_to_withdraw = "Ei saa sõidukit välja võtta, kuna see on hetkel kasutuses.",
		vehicle_in_garage = "Teie sõiduk asub ${garageName}. Teie kaardil on märgitud marsruuttähis.",
		insufficient_funds = "Teil ei ole piisavalt raha selle sõiduki välja võtmiseks.",
		error_withdrawing = "Sõiduki väljavõtmisel ilmnes viga.",
		withdraw_timeout = "Palun oodake hetke, enne kui proovite järgmist sõidukit välja võtta.",
		garage_in_use = "See garaaž on hetkel kasutuses, palun oodake hetk.",
		invalid_model = "Vale või tundmatu sõiduki mudel.",
		vehicle_in_the_way = "Parkimiskohta blokeerib sõiduk.",
		vehicle_is_out = "Teie sõiduk on juba väljas.",
		vehicle_stored = "Teie sõiduk on hoiule pandud.",
		error_storing = "Sõiduki hoiulepanek ebaõnnestus. Kas sõiduk kuulub teile?",
		no_nearby_vehicle = "Läheduses pole sõidukeid.",
		no_vehicles_to_retrieve = "Teil pole sõidukeid tagasi võtta!",
		vehicle_retrieved = "Sõiduk on edukalt tagasi võetud.",
		error_retrieving = "Sõiduki tagasi võtmisel ilmnes viga.",
		not_enough_balance_to_retrieve = "Teil pole piisavalt raha, et seda sõidukit tagasi võtta.",
		press_to_access = "Vajuta ~INPUT_CONTEXT~, et minna garaaži.",
		ui_return = "Tagasi",
		ui_my_vehicle_list = "Minu Sõidukid",
		ui_other_vehicle_list = "Teiste Sõidukid",
		ui_store_vehicle = "Salvesta auto",
		ui_vehicle_sell = "Müü autod",
		ui_retrieve_vehicle = "Too auto tagasi",
		ui_close_menu = "Sulge menüü",
		garage_letter = "Garaaž ${letter}",
		garage_emergency = "${type} garaaž",
		emergency_type_1 = "PD",
		emergency_type_2 = "EMS",
		no_vehicles_impounded = "Ükski sinu autodest pole konfiskeeritud!",
		you_must_retrieve_this_vehicle = "Peate auto taastama, et sellele juurde pääseda.",
		garage = "Garaaž",
		retrieved_vehicle_logs_title = "Recupereeritud sõiduk",
		retrieved_vehicle_logs_details = "${consoleName} recupereeris sõiduki numbrimärgiga `${plate}` hinnaga ${price}€.",
		no_vehicles_to_sell = "Teil pole sõidukeid müümiseks.",

		state_loading_model = "Mudeli laadimine...",
		state_withdrawing = "Võetud välja...",
		state_retrieving = "Haaramine...",
		state_storing = "Hoiustamine...",
		state_loading = "Laadimine...",

		vehicle_weight = "Kaal: ${weight}",
		no_last_garage_letter = "Eelmist garaaži ei leitud",

		purchase_vehicle = "Vajuta ~INPUT_CONTEXT~, et pääseda poe juurde",
		emergency_shop = "Sõidukipood",
		exit_shop = "Välju poest",
		purchase_success = "${label}, mida sa viimasena ostsid on nüüd sinu garaažis.",
		purchase_failed = "Sõiduki ostmine ebaõnnestus.",
		already_owned = "Sul on see sõidukimudel juba olemas.",
		maximum_owned = "Sa ei saa omada rohkem kui 8 sõidukit.",
		not_enough_money = "Sul pole piisavalt raha, et seda sõidukit osta.",

		sold_vehicle = "Müüdud ${label} eest $${price}.",
		failed_sell_vehicle = "Sõiduki müük ebaõnnestus.",

		sold_vehicle_logs_title = "Müüdud sõiduk",
		sold_vehicle_logs_details = "${consoleName} müüs hädaolukorra sõiduki nimega `${modelName}` numbrimärgiga `${plate}` hinnaga ${price}.",

		purchased_vehicle_logs_title = "Sõiduki ost",
		purchased_vehicle_logs_details = "${consoleName} ostis hädaolukorra sõiduki nimega `${modelName}` hinnaga ${price} (Numbrimärk: `${plate}`).",

		-- NOTE: `toggle_garage_debug` command:
		toggle_garage_debug_toggled_on = "Lülitati garaaži siluvigar (debug) sisse.",
		toggle_garage_debug_toggled_off = "Lülitati garaaži siluvigar (debug) välja.",

		invalid_vehicle = "Puudub või vigane sõiduk.",
		not_owned_vehicle = "Sõiduk ei kuulu kellelegi.",
		vehicle_garaged = "A shitty $200 savings bond that represents your fucking commitment to financial security. This shit can be cashed in at participating banks, providing you with a fucking boost to your savings and a fucking step closer to your fucking financial goals.",
		garaged_failed = "Sõidukit ei õnnestunud garaaži saata.",
		invalid_vehicle_id = "$500 Shitty Savings Bond",
		ungarage_success = "A fucking $500 savings bond that serves as a substantial investment in your fucking future. When the fucking time is right, redeem it at a bank to unlock its full fucking value and take a significant goddamn stride toward your financial aspirations.",
		ungarage_failed = "Eliminar Cuenta de Ahorros",
		vehicle_not_found = "${consoleName} eliminó una cuenta de ahorros llamada `${accountName}` con el ID ${accountId}.",

		garaged_vehicle_logs_title = "Retiro de Ahorros",
		garaged_vehicle_logs_details = "${consoleName} retiró $${amount} de la cuenta de ahorros ${accountId}.",
		ungaraged_vehicle_logs_title = "Depósito de Ahorros",
		ungaraged_vehicle_logs_details = "${consoleName} depositó $${amount} en la cuenta de ahorros ${accountId}."
	},

	keys = {
		no_nearby_player = "Läheduses pole ühtegi mängijat.",
		no_nearby_vehicle = "Läheduses pole ühtegi sõidukit.",
		no_keys_for_vehicle = "Sul pole selle sõiduki võtmeid.",
		vehicle_locked = "Sõiduk lukus",
		vehicle_unlocked = "Sõiduk lukust lahti",
		h_to_hotwire = "[H] Süüde sisse",
		received_keys = "Sa said võtmed sõidukile numbrimärgiga ${plate}.",
		received_keys_no_plate = "Sa said sõiduki võtmed.",
		you_are_not_in_a_vehicle = "Sa ei ole sõidukis.",
		you_are_in_a_vehicle = "Sa oled hetkel sõidukis.",
		hotwired_vehicle_with_plate_number = "Sõiduk numbrimärgiga '${plateNumber}' sai käivitatud ilma võtmeta.",
		unable_to_hotwire_vehicle = "Ei saa sõidukit käivitada ilma võtmeta.",
		picked_up_keys = "Korjasid üles võtmed sõidukile '${plate}'.",
		hotwired_vehicle_for_player = "Tehnikaüksusel on nüüd ${displayName} tehnika üle kontroll ning see on kasutusvalmis.",
		gave_keys_success = "Andis edukalt võtmed sõidukile ${displayName}.",
		gave_keys_failure = "Ei õnnestunud anda võtmeid kasutajale ${displayName} nende sõidukile."
	},

	modifications = {
		wheels_reset = "Rattad asetatakse tagasi vaikeseisundisse.",
		wheels_already_reset = "Rattad on juba tagasi vaikeseisundis.",
		wheels_modified = "Rattad on muudetud.",
		wheels_none_specified = "Rattaid pole määratletud.",
		wheels_none_valid_specified = "Kehtivaid rattaid pole määratletud.",
		not_in_a_car = "Sa ei ole autos.",
		invalid_value = "Kehtetu väärtus."
	},

	oil = {
		move_to_change = "Liikuge siia, et vahetada sõiduki õli.",
		changing_oil = "Sõiduki õli vahetamine",
		low_oil = "Sinu sõiduk vajab õlivahetust!"
	},

	plates = {
		plate_number_is_available = "Numbrimärk '${plateNumber}' on saadaval.",
		plate_number_is_not_available = "Numbrimärk '${plateNumber}' ei ole saadaval.",
		missing_valid_plate_number = "Puudub kehtiv 'numbrimärk' parameeter.",
		missing_valid_vehicle_id = "Puudub kehtiv 'sõiduki id' parameeter.",
		database_error = "Ilmnes tagakülje andmebaasi tõrge.",
		no_custom_plate_package = "Teil pole kohandatud numbrimärgipaketti. Lisateabe saamiseks vaadake meie veebipoodi!",
		api_error = "Tagakülje API tagastas vea.",
		api_not_available = "Tagakülje API ei ole saadaval.",
		vehicle_does_not_belong_to_player = "Sõiduk ei kuulu teile. Sõiduki ID on `${vehicleId}`.",
		vehicle_id_does_not_exist = "Sõiduki ID ei eksisteeri. Sõiduki ID on `${vehicleId}`.",
		you_have_no_character_loaded = "Teil pole ühtegi tegelast laaditud.",
		vehicle_plate_changed = "Muudetud sõiduki ID-le ${vehicleId} vastav numbrimärk on ${plateNumber}.",

		you_are_not_in_a_vehicle = "Sa ei viibi sõidukis.",
		fake_plate_active = "Võltsitud numbrimärk sõidukile edukalt genereeritud.",
		fake_plate_inactive = "Sõiduki numbrimärk tagastatud algseisundisse.",

		fake_plate_missing_permissions = "Mängija proovis genereerida võltsitud numbrimärki ilma vastavate õigusteta."
	},

	runways = {
		you_are_not_in_a_plane = "Sa ei viibi lennukis.",
		ifr_disabled = "IFR on deaktiveeritud.",
		ifr_enabled = "IFR on lubatud."
	},

	sirens = {
		sirens_muted_on = "Kõik sireenid on vaigistatud.",
		sirens_muted_off = "Kõik sireenid on uuesti valjemaks reguleeritud."
	},

	spawner = {
		press_to_access_spawner = "Vajuta ~INPUT_CONTEXT~, et saada juurdepääs sõidukite spawnerile.",

		parked_vehicle = "Sõiduk edukalt parkitud.",

		spawner_burger_shot = "Burger Shoti kullerisõidukid",
		spawner_bean_machine = "Bean Machine'i kullerisõidukid",
		spawner_weazel_news = "Weazel Newsi kullerisõidukid",
		spawner_state = "Seisundis olevad sõidukid",
		close_menu = "Sule menüü",
		vehicle_list = "Sõidukite nimekiri",
		park_vehicle = "Pargi sõiduk",
		return_button = "Tagasi",

		failed_spawn = "Sõiduki loomine ebaõnnestus.",
		failed_area = "Ala ei ole selge.",
		failed_job = "Sul ei ole õiget tööd.",
		failed_generic = "Midagi läks valesti."
	},

	trailers = {
		cant_attach_trailer = "Sellel sõidukil puudub haagisekonks.",
		no_trailer_nearby = "Ühtegi haagist pole läheduses.",
		not_in_vehicle = "Sa ei sõida ühtegi sõidukit.",
		not_lined_up = "Sinu sõiduk ei ole haagisega joondatud.",
		keybind_description = "Haagise lahtiühendamine või haakimine"
	},

	vehicles = {
		flip_flipping = "Sõiduki ümber keeramine",
		flip_unable = "Te ei saa sõidukit tagurpidi keerata, kui seal on inimesi sees.",
		vehicle_busy = "Oodake, sõiduk on hõivatud!",
		hold_to_eject = "Hoidke vabastamiseks all",
		taking_keys = "Võtmete võtmine",
		belt_on = "Rihm kinnitatud",
		belt_off = "Rihm lahti",
		mileage = "Läbisõit",
		vehicle_mileage_amount = "Sellel sõidukil on ${miles} miili.",
		not_in_driver_seat = "Kilomeetri näidu vaatamiseks pead istuma auto juhiistmel.",
		not_driving_vehicle = "Sa ei sõida autoga.",
		not_in_vehicle = "Tubería Rota",
		vehicle_locked = "Auto on lukus.",
		gear_animation_enabled = "Käiguvahetuse animatsioon (ja helid) on nüüd sisse lülitatud.",
		gear_animation_disabled = "Käiguvahetuse animatsioon (ja helid) on nüüd välja lülitatud.",
		manual_gears_enabled = "~b~Dr. Nancy",
		manual_gears_disabled = "Manuaalne käiguvahetus on nüüd välja lülitatud.",
		manual_gears_too_fast = "Manuaalkäikudega saab sõita ainult alla 30 miili tunnis.",
		hybrid_off = "väljas",
		speed_limiter_set_to_metric = "Kiirusepiiraja piirab nüüd kiirust ${speed} km/h.",
		speed_limiter_set_to_imperial = "Kiirusepiiraja piirab nüüd kiirust ${speed} mph.",
		speed_limiter_reset = "Kiirusepiiraja piirab nüüd kiirust, mis sõidukil oli hetkel, kui toggle nupp vajutati.",
		speed_limiter_on_metric = "Kiirusepiiraja seadistatud ${speed} km/h.",
		speed_limiter_on_imperial = "Kiirusepiiraja seadistatud ${speed} mp/h.",
		speed_limiter_on_plane_metric = "Kiirusepiiraja seadistatud ${speed} km/h ja kõrgus ${altitude} meetrit.",
		speed_limiter_on_plane_imperial = "Kiiruspiirik on seatud ${speed} miili tunnis ja ${altitude} jalga.",
		speed_limiter_on_helicopter_metric = "Kiiruspiirik on seatud ${altitude} meetrites (hõljub).",
		speed_limiter_on_helicopter_imperial = "Kiiruspiirik on seatud ${altitude} jalga (hõljub).",
		autopilot_metric = "~g~Autopiloot~s~: ${altitude}m ~c~/~s~ ${speed}km/h",
		autopilot_imperial = "~g~Autopiloot~s~: ${altitude}jalga ~c~/~s~ ${speed}sõlme",
		you_are_cuffed = "Oled käeraudades.",
		belt_is_on_and_vehicle_is_locked = "Sinu turvavöö on kinnitatud ja sõiduk lukustatud.",
		belt_is_on = "Teie vöö on kinnitatud.",
		vehicle_is_locked = "Sõiduk on lukus.",
		belt_warning = "Turvavöö pole pandud, vajuta ~INPUT_SPECIAL_ABILITY_SECONDARY~, et see kinnitada.",
		supporter_vehicle = "Toetaja",
		getting_out = "Väljun",

		no_data_copied = "Sa ei ole kopeerinud ühtegi sõiduki andmeid.",
		copied_data = "Sõiduki andmed on kopeeritud.",
		pasted_data = "Sõiduki andmed on kleepitud.",

		nearest_player_not_vehicle = "Lähim mängija ei ole sõidukis.",
		no_dead_player_nearby = "Sinu läheduses ei ole ühtegi surnud mängijat sõidukis.",
		dragging_out_player = "Väljatõmmatava mängija lohistamine sõidukist välja.",
		vehicle_too_fast = "Sõiduk liigub liiga kiiresti.",

		modifying_brakes = "Pidurite muutmine",
		toggle_brakes_on = "Pidurid lülitatud välja.",
		toggle_brakes_off = "Pidurid lülitatud sisse.",
		failed_modify_brakes = "Pidurite muutmine ebaõnnestus.",

		-- NOTE: `toggle_vehicle_weapons` command:
		toggled_vehicle_weapons_on = "Lülitas sõiduki relvad sisse.",
		toggled_vehicle_weapons_off = "Lülitas sõiduki relvad välja.",
		toggled_vehicle_weapons_vehicle_is_not_networked = "Sõiduk, milles oled, ei ole võrgus.",
		toggled_vehicle_weapons_target_user_not_found = "Sihtmärki ei leitud.",
		toggled_vehicle_weapons_player_not_in_a_vehicle = "Sihtmängija ei ole sõidukis.",
		toggled_vehicle_weapons_for_player_on = "${consoleName} relvastus sõidukiga.",
		toggled_vehicle_weapons_for_player_off = "${consoleName} eemaldas relvastuse sõidukist.",
		toggled_vehicle_weapons_for_everyone = "Kõigile lülitati sisse sõiduki relvastus.",

		toggled_vehicle_weapons_on_logs_title = "Sõiduki relvastus lülitatud sisse",
		toggled_vehicle_weapons_on_logs_details = "${consoleName} lülitas sisse relvastuse sõidukiga.",
		toggled_vehicle_weapons_off_logs_title = "Sõiduki relvastus välja lülitatud",
		toggled_vehicle_weapons_off_logs_details = "${consoleName} keeras sõiduki relvad välja.",
		toggled_vehicle_weapons_on_for_player_logs_title = "Keeras mängija sõiduki relvad sisse",
		toggled_vehicle_weapons_on_for_player_logs_details = "${consoleName} keeras sõiduki relvad sisse mängijale ${targetConsoleName}.",
		toggled_vehicle_weapons_off_for_player_logs_title = "Keeras mängija sõiduki relvad välja",
		toggled_vehicle_weapons_off_for_player_logs_details = "${consoleName} keeras sõiduki relvad välja mängija ${targetConsoleName} jaoks.",
		toggled_vehicle_weapons_for_everyone_logs_title = "Lülitatud sõidukite relvad kõigile",
		toggled_vehicle_weapons_for_everyone_logs_details = "${consoleName} lülitas relvad kõigile sõidukitele.",

		breaking_window = "Aknaklaasi purustamine",
		not_near_window = "Sa ei ole piisavalt lähedal aknale.",
		not_near_vehicle = "Ühtegi sõidukit pole läheduses.",

		wheelie_no_vehicle = "Sõiduk puudub",
		wheelie_engine_off = "Mootor väljas",
		wheelie_idling = "Ooteseisund",
		wheelie_ready = "Valmis",
		wheelie_boosting = "Tõukamine",

		invalid_power_level = "Vigane võimsuse tase (1 - 5)."
	},

	vin_numbers = {
		cad_title = "[CAD]",

		checking_vin = "VIN-i kontrollimine",
		not_driver = "Sa hetkel ei juhi autot.",
		failed_vin_get = "VIN-i saamine ebaõnnestus.",
		vin_checked = "Selle sõiduki VIN-kood on `${vin}`.",
		vin_scratched = "VIN-kood on maha kraabitud.",

		looking_up_vin = "VIN-koodi otsimine",
		invalid_vin = "Vigane või puuduv VIN-kood.",
		failed_vin_lookup = "VIN-koodi otsimine ebaõnnestus.",
		vin_lookup_details = "VIN-kood `${vin}` on registreeritud sõidukiga mille numbrimärk on `${plate}` omanik on `${fullName}`.",
		vin_lookup_unregistered = "VIN-kood `${vin}` ei ole ühegi sõiduki kohta registreeritud."
	},

	wheel_slash = {
		hold_to_slash = "[${InteractionKey}] Hoia, et lõigata",
		slashing_tire = "Rehvi lõikamine"
	},

	-- weapons/*
	ammo = {
		unboxing_ammo = "Ammuunide lahtipakkimine",
		failed_unbox = "Ei õnnestunud ammuune lahtipakkida.",
		failed_unbox_full = "Sa ei saa seda tüüpi ammuune rohkem kaasas kanda.",
		unbox_success = "Lahtipakkisid edukalt ${amount}x ${ammoType} ammuuni.",
		unbox_success_box = "Lahtipakkisid edukalt ammuuni karbi.",

		type_pistol = "püstoli ammuunid",
		type_smg = "automatpüssi ammuunid",
		type_rifle = "püssirohi",
		type_sniper = "snipri padrunid",
		type_shotgun = "12 kaliibriline püssirohi",
		type_stungun = "taseri padrunid",

		invalid_server_id = "Vigane serveri id.",
		fill_ammo_success = "Täitsid edukalt oma laskemoona.",
		fill_ammo_success_player = "Täitsid edukalt laskemoona kasutajale ${displayName}.",
		fill_ammo_success_everyone = "Täitsid edukalt laskemoona kõigile.",
		fill_ammo_failed = "Padrunit ei saa täita.",

		fill_ammo_everyone_logs_title = "Täitsid kõigi laskemoona",
		fill_ammo_everyone_logs_details = "${consoleName} täitis kõigi laskemoona.",
		fill_ammo_player_logs_title = "Täidetud mängija kuulid",
		fill_ammo_player_logs_details = "${consoleName} täitis mängija ${targetConsoleName} kuulid."
	},

	throwables = {
		pick_up_weapon = "[${InteractionKey}] Võtke üles",

		no_weapon_equipped = "Teil pole relva käsitsi.",
		cant_throw_weapon = "Te ei saa seda relva visata.",
		keybind_description = "Visake oma relv",

		total_throwables = "Visatavad esemed: ${count}",

		threw_weapon_logs_title = "Viskas relva",
		threw_weapon_logs_details = "${consoleName} viskas oma ${item} (${coords}) üles.",
		picked_up_weapon_logs_title = "Relvaga korjamine",
		picked_up_weapon_logs_details = "${consoleName} korjas üles ${item} (${coords})."
	},

	weapons = {
		pick_up_fire_extinguisher = "Hoia ~INPUT_CONTEXT~, et korjata tulekustuti.",
		press_to_drop_fire_extinguisher = "Vajuta ~INPUT_FRONTEND_RRIGHT~, et visata tulekustuti maha.",
		illegal_fire_extinguisher_model = "Katsed kõigil klientidel kustutit kustutada mudeliga, mis pole tulekustuti.",

		airsoft_mode_on = "Lülitatud õhupüssirežiim sisse.",
		airsoft_mode_off = "Lülitatud õhupüssirežiim välja.",
		airsoft_mode_failed = "Ei õnnestunud lülitada õhupüssirežiimi.",

		no_weapon_equipped = "Relv puudub.",
		ammo_count_title = "Padrunite arv",
		no_ammo = "Sul ei ole ühtegi padrunit.",
		ammo_count = "**${ammoType}:** *x${ammoCount}*",

		ammo_pistol = "Püstol",
		ammo_shotgun = "Püss",
		ammo_smg = "SMG",
		ammo_rifle = "Püss",
		ammo_sniper = "Sniper",
		ammo_stungun = "Nui",

		firing_mode_0 = "Tulerežiim on tagasi vaikeasendisse seatud.",
		firing_mode_1 = "Tulerežiim on seatud poolsalvavale.",
		firing_mode_2 = "Relva turvafunktsioon on sisse lülitatud.",

		safety_is_on = "Relva turvarežiim on sees.",

		firing_mode_set_1 = "Tulerežiim on seatud poolsalvavale.",
		firing_mode_set_2 = "Relva turvafunktsioon on sisse lülitatud.",

		folded_stock = "Kokkupandud tugi",
		unfolded_stock = "Lahku löödud tugi",
		failed_to_toggle_stock = "Liigutamise viga tugi puhul.",
		weapon_has_no_stock = "Sellel relval pole tuge."
	},

	-- a shared "alpha" locale category uwu - also know, some features such as the ${InteractionKey} will be missing here, so don't try to use it
	alpha = {
		check_in = "[E] Sisse registrimine",
		check_in_timer = "[${remaining}s] Sisse registreerimine",
		check_in_escorted = "Sind valvatakse",
		checking_in = "Sisse registreeritakse",
		doctor_notified = "Arsti on teavitatud, palun oota",
		leave_bed = "Vajuta ~INPUT_CONTEXT~, et voodist lahkuda",
		you_have_been_charged = "Sind on arvestatud ${cost} € vigastuste raviks",
		beds_occupied = "Kõik voodid on hõivatud",
		patient_checked_in = "Patsient registreeritud voodis ${bed}",
		stop_bleeding = "[E] Peata veritsus",
		stopping_bleeding = "Veritsuse peatamine",
		bleeding_stopped = "Veritsus peatatud",
		overdose_effects = "Sa koged üledoosi efekte.",
		you_have_parasite = "Sul on parasiit",
		you_have_multiple_parasite = "Sul on mitu parasiiti",
		bandage = "[E] Haavade sidumine",
		bandaging = "Haavade sidumine",
		wounds_bandaged = "Haavad seotud",
		treat_injury = "[E] ${label} vigastuse ravimine",
		treating_injury = "${label} vigastuse ravimine",
		injury = "${label} vigastus",
		cpr_done = "Edukalt teostatud CPR",
		cpr_fail = "Isiku asukoht pole teada",
		went_on_duty = "Läks tööle",
		went_off_duty = "Lõpetas töö",
		on_duty = "tööl",
		off_duty = "vabal",
		press_to_sign = "Vajuta ~g~E ~w~et allkirjastada",
		open_vehicle_spawner = "Vajuta ~g~E ~w~et avada sõidukite menüü",
		open_heli_spawner = "Vajuta ~g~E ~w~et avada helikopteri menüü",
		open_boat_spawner = "Vajuta ~g~E ~w~et avada paadi menüü",
		on = "sees",
		off = "väljas",
		sign_as_doctor = "Vajuta ~g~E ~w~et märkida end ${status} arstina",
		close_menu = "Sulge menüü",
		vehicle_list = "Sõidukite nimekiri",
		park_vehicle = "Pargi sõiduk",
		clear_area = "Enne sõiduki spawnimist palun tühjendage garaaž",
		unable_to_extra = "Ei saa sellele sõidukile lisada 'extras'!",
		warning = "Hoiatus",
		invalid_input = "Vigane sisend.",
		unable_to_extra_on_vehicle = "Ei saa sellele sõidukile lisada 'extras'!",
		heli_here_already = "Helikopter juba maandumisplatvormil",
		ems_air_hq = "EMS õhutugi peakorter",
		ems_boat_hq = "EMS paaditugi peakorter",
		ems_garage = "EMS garaaž",
		e_to_get_treated = "[E] Raviks - $1250",
		e_check_in_player = "[E] Kontrolli sissekantud mängijat - 1250 dollarit",
		check_in_blocked = "Registreerimine on hõivatud",
		get_treated = "Töötlus - $1250",
		you_are_being_treated = "Teid töödeldakse",
		being_treated = "Töödeldakse",
		minute = "minut",
		minutes = "minutit",
		second = "sekund",
		seconds = "sekundit",
		kurwa_and = "ja",
		wait_for_paramedic = "Palun oodake kiirabi saabumist või oodake ${time} uuestisünnini",
		cannot_respawn_currently = "Te ei saa hetkel uuesti sündida",
		hold_to_respawn = "Hoidke klahvi ~b~ENTER ~w~, et uuesti sündida või oodake kiirabi saabumist",
		hold_to_respawn_secondslol = "Hoidke klahvi ~b~ENTER (${seconds}) ~w~, et uuesti sündida või oodake kiirabi saabumist",
		passed_out = "Sa oled teadvuse kaotanud",
		light = "Kerge",
		moderate = "Mõõdukas",
		heavy = "Raske",
		severe = "Väga raske",
		arms_injured = "Käed on vigastatud, tulistamine ei ole võimalik",
		injuryb = "Vigastus",
		bleeding_multiple_injuries = "veritseb mitme vigastuse korral",
		feels_irritated = "tunneb ärritust",
		feels_painful = "tunneb valu",
		feels_extremely_painful = "tunneb väga tugevat valu",
		multiple_injuries = "Sul on mitmeid vigastusi",
		bleeding = "veritseb",
		bleeding_with_injury = "veritseb ja on vigastatud ${label} kohas",
		bleeding_reduced = "Verejooks vähenenud",
		bleeding_self_stopped = "Veritsus peatus automaatselt.",
		thanks_for_loot = "Sa said teadvusetult röövitud. Mõned esemed võivad puudu olla. Kuuldavasti oli see Nancy.",
		guards_found_unconcious = "Valvurid leidsid sind teadvusetuna ja viisid su vangla haiglasse.",
		serial_number = "Seerianumber: ${serialNumber}<br><i>See relv kuulub ${fullName} (tunnus: #${characterId}).</i>",
		serial_number_unknown = "Seerianumber: ${serialNumber}<br><i>See relv ei ole registreeritud.</i>",
		serial_number_removed = "Seerianumber näib olevat maha kraabitud või kustutatud.",
		badge_owner = "<i>Selle märgi omanik on <b>${fullName} (${positionName})</b>.</i>",
		badge_owner_unknown = "Märgi omanik on tundmatu.",
		citizen_card_owner = "<i>Selle kodaniku kaardi omanik on <b>${fullName} (#${characterId})</b>.</i>",
		driver_license_owner = "<i>See juhiluba kuulub <b>${fullName} (#${characterId})</b>-le.</i>",
		has_portrait = "<i>Sellel on pilt.</i>",
		picture_pending = "<i>Pilt on veel töötlemisel ...</i>",
		picture_selfie_owner = "<i>See on pilt isikust <b> ${fullName} </b>.</i>",
		bought_by = "Ostetud ${buyerName} (${buyerCid}) poolt.",
		bought_by_unknown = "Selle eseme ostja on teadmata.",
		cigarette_pack = "${cigarettes} sigaretti jäänud.",
		evidence_incomplete = "See tõendikott ei ole täielik.",
		evidence_type = "Tõenditüüp",
		processed_picked_up = "<i>Võttis üles ${pickupName} ja töödeldi ${processName} poolt.</i>",
		picked_up = "<i>Võetud üles ${pickupName} poolt.</i>",
		processed_by = "<i>Töödeldud ${processName} poolt.</i>",
		evidence_casings = "Padruneid tuvastati seerianumbriga ${serialNumber}, mis oli ostetud kasutamise ajal ${buyerName} poolt (${buyerCid}).",
		evidence_bullets = "Tulistamisjäljed ilmselt loodi ${bulletLabel} abil.",
		evidence_vehicle_dna = "DNA leiti sõidukist numbrimärgiga ${plateNumber} istmelt ${seat}. DNA kuulub ${fullName} (${characterId}).",
		evidence_dna = "${fullName} (#${characterId}) dna kogutud tõendid.",
		evidence_fingerprint = "${fullName} (#${characterId}) sõrmejäljed.",
		evidence_not_processed = "Pole veel töödeldud.",
		additional_information = "Lisainformatsioon:",
		picked_up_at_location = "Koha leidmine:",
		clothing_dna_trace = "DNA jäljed viitavad ${fullName}-le (#${characterId})",
		clothing_dna_trace_unprocessed = "Riietel leiti töötlemata dna jäljed.",
		timestamp_of_pickup = "Aja tempel kohast võtu kohta:",
		weapon_name = "Relva nimi:",
		casings_picked_up = "Korjatud ühikutest padrunikestade arv:",
		bullet_label = "Kuuli silt:",
		impacts_found = "Leitud laskemoona jälgede arv piirkonnas:",
		right_foot = "Parempoolne jalg",
		left_foot = "Vasakpoolne jalg",
		right_hand = "Parempoolne käsi",
		left_hand = "Vasakpoolne käsi",
		right_knee = "Parempoolne põlv",
		left_knee = "Vasakpoolne põlv",
		head = "Pea",
		neck = "Kael",
		right_arm = "Parempoolne käsi",
		left_arm = "Vasakpoolne käsi",
		chest = "Rind",
		pelvis = "Vaagen",
		right_shoulder = "Parempoolne õlg",
		left_shoulder = "Vasakpoolne õlg",
		right_wrist = "Parempoolne randmeosa",
		left_wrist = "Vasakpoolne randmeosa",
		tounge = "Keel",
		upper_lip = "Ülajoon",
		lower_lip = "Alumine huul",
		right_thigh = "Parem reie",
		left_thigh = "Vasak reie",
		lower_spine = "Alaselgroog",
		center_spine = "Keskelüli",
		upper_spine = "Ülemine selgroog",
		root_spine = "Juurselgroog",
		right_clavicle = "Parem õlavars",
		left_clavicle = "Vasak õlavars",
		note_signed_by = "<b>Allkirjastajaks:</b> <i>${name} (#${cid})</i>",
		map_location = "<b>Märgitud asukoht:</b> <i>${x}, ${y}</i>",
		smart_watch_hover = "<i>See nutikell kuulub <b>${name} (#${cid})</b>. Sellel on kantud kokku <b>${stepsWalked}</b> sammu.</i>",
		item_contains = "<b>Sisaldab:</b> <i>${contents}</i>.",
		item_engraving = "<b>Graveering:</b> <i>${message}</i>.",
		evidence_incomplete = "See tõendikott ei ole täielik."
	}
}
