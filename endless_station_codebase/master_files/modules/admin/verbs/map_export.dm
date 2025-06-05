// ENDLESS_STATION_OVERLOAD
//Original code: code\modules\admin\verbs\map_export.dm
ADMIN_VERB(map_export_server, R_SERVER, "Map Export", "Select a part of the map by coordinates and download it.", ADMIN_CATEGORY_SERVER)
	var/date = time2text(world.timeofday, "YYYY-MM-DD_hh-mm-ss", TIMEZONE_UTC)
	var/round_id = GLOB.round_id
	var/file_name = null
	if(round_id != "NULL")
		file_name = sanitize_filename(tgui_input_text(user, "Filename?", "Map Exporter", "exported_map_[round_id][date]"))
	else
		file_name = sanitize_filename(tgui_input_text(user, "Filename?", "Map Exporter", "exported_map_[date]"))
	var/confirm = tgui_alert(user, "Are you sure you want to do this? This will cause extreme lag!", "Map Exporter", list("Yes", "No"))

	if(confirm != "Yes")
		return
	var/list/station_z_levels = SSmapping.levels_by_trait(ZTRAIT_STATION)
	var/min_z = min(station_z_levels)
	var/max_z = max(station_z_levels)
	var/map_text = write_map(1, 1, min_z, 255, 255, max_z)
	send_exported_map(user, file_name, map_text)

/proc/simple_exported_map(name, map)
	var/file_path = "data/[name].dmm"
	rustg_file_write(map, file_path)

/obj/machinery/atmospherics/pipe/get_save_vars()
	. = ..()
	. += NAMEOF(src, piping_layer)
	. += NAMEOF(src, pipe_color)
	if (src.parent)
		var/datum/gas_mixture/pipe_gas = src.parent.get_store_air(src.volume)
		src.initial_gas = pipe_gas.to_string()
	else
		var/datum/gas_mixture/pipe_gas = src.air_temporary ? src.air_temporary : (src.parent && src.parent.air ? src.parent.air : null)
		src.initial_gas = pipe_gas.to_string()
	. += NAMEOF(src, initial_gas)
	return .

/obj/machinery/power/apc/get_save_vars()
	. = ..()
	if(src.cell)
		src.start_charge = src.cell.charge * 100 / src.cell.maxcharge
	. += NAMEOF(src, start_charge)
	. += NAMEOF(src, cell_type)
