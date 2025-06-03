// ∞∞∞ ENDLESS_STATION_OVERLOAD
//Original code: code\modules\atmospherics\machinery\pipes\pipes.dm
/obj/machinery/atmospherics/pipe
	var/initial_gas = null

/obj/machinery/atmospherics/pipe/New()
	..()
	if(initial_gas)
		// Если труба не в сети, используем air_temporary
		if(!parent)
			air_temporary = SSair.parse_gas_string(initial_gas)
			air_temporary.volume = volume
		else
			// если уже есть родительская сеть, добавим в неё
			var/datum/gas_mixture/new_mix = SSair.parse_gas_string(text)
			parent.air.merge(new_mix)
