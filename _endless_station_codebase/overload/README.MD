# Описание

Деректория `overload` служит для перезагрузки оригинальной кодовой базы `/tg/station` не файлы.
Перегрузка производится следующим образом:

1. Оригинальный файл из деректории `code` копируется в деректорию `overload` в соответствующую оригинальному коду поддеректорию.
2. Вверху кода копии указываются метка:

```dm
//∞∞∞ ENDLESS_STATION_OVERLOAD
//Original code: code\modules\admin\verbs\map_export.dm
```

3. Изменения в копии помечаются комментариями:

```dm
//∞∞∞ ENDLESS ADD BEGINE
[код]
//∞∞∞ ENDLESS ADD END
//∞∞∞ ENDLESS EDIT BEGINE
//[закоментированный оригинальный код]
[новый код]
//∞∞∞ ENDLESS EDIT END
//∞∞∞ ENDLESS DELETE BEGINE
//[закоментированный оригинальный код]
//∞∞∞ ENDLESS DELETE END
```

4. В файле `tgstation.dme` комментируется оригинальная деректива, например:

```dm
// #include "code\modules\admin\verbs\map_export.dm" ENDLESS_STATION_OVERLOAD
```

5. В файле `tgstation.dme` указывается деректива, например:

```dm
#include "_endless_station_codebase\overload\modules\admin\verbs\map_export.dm"
```

# Состав перезагруженного кода

| Код                                                                                              | Описание изменений                                                                                    |
| ------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------- |
| \_endless_station_codebase\overload\modules\admin\verbs\map_export.dm                            | Существенно переработан экспорт карты под нужды сборки                                                |
| \_endless_station_codebase\overload\modules\atmospherics\machinery\components\components_base.dm | Добавлена возможность устанавливать начальное значение газа для инициализации                         |
| \_endless_station_codebase\overload\modules\atmospherics\machinery\datum_pipeline.dm             | Добавлена возможность извлечение пропорционального состава газа для объекта без уничтожения pipelines |
| \_endless_station_codebase\overload\modules\atmospherics\pipes\pipes.dm                          | Добавлена возможность устанавливать начальное значение газа для инициализации                         |
