//∞∞∞ ENDLESS_STATION_OVERLOAD
//Original code: code\modules\admin\verbs\map_export.dm
/datum/pipeline/proc/get_store_air(var/volume)
	var/datum/gas_mixture/air_temporary = new
	air_temporary.volume = volume
	air_temporary.copy_from_ratio(air, volume / air.volume)
	air_temporary.temperature = air.temperature
	return air_temporary
