//∞∞∞ ENDLESS_STATION_OVERLOAD
//Original code\controllers\configuration\entries\general.dm

/datum/config_entry/flag/endless_mode

// Долбаный рот этого казино блин. Это нужно лишь за тем, что в момент инициализации
// модуля карт модуль загрузки конфига не активен.
/proc/is_endless_mode_enabled()
    var/list/lines = world.file2list(@"config\endless_config.txt")
    for(var/line in lines)
        line = trim(line)
        if(line == "ENDLESS_MODE")
            return TRUE
        if(findtext(line, "#ENDLESS_MODE") == 1)
            return FALSE
    return FALSE
