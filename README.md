# Endless Station - Fork [/tg/station](https://github.com/tgstation/tgstation)

<img src="https://github.com/Endless-Station/Endless-Station/blob/master/.github/images/logo/Enless%20Station.png" alt="Endless Station" style="width: 400px;">

[![Build Status](https://github.com/Endless-Station/Endless-Station/workflows/CI%20Suite/badge.svg)](https://github.com/Endless-Station/Endless-Station/actions?query=workflow%3A%22CI+Suite%22)
[![Percentage of issues still open](https://isitmaintained.com/badge/open/tgstation/tgstation.svg)](https://isitmaintained.com/project/tgstation/tgstation "Percentage of issues still open")
[![Average time to resolve an issue](https://isitmaintained.com/badge/resolution/tgstation/tgstation.svg)](https://isitmaintained.com/project/tgstation/tgstation "Average time to resolve an issue")
![Coverage](https://img.shields.io/badge/coverage---4%25-red.svg)

[![resentment](.github/images/badges/built-with-resentment.svg)](.github/images/comics/131-bug-free.png) [![technical debt](.github/images/badges/contains-technical-debt.svg)](.github/images/comics/106-tech-debt-modified.png) [![forinfinityandbyond](.github/images/badges/made-in-byond.gif)](https://www.reddit.com/r/SS13/comments/5oplxp/what_is_the_main_problem_with_byond_as_an_engine/dclbu1a)

| Веб-сайт             | Ссылка                                                                                                 |
| ------------------- | ---------------------------------------------------------------------------------------------------- |
| Website             | В будушем                                                                    |
| Code                | [https://github.com/Endless-Station/Endless-Station](https://github.com/Endless-Station/Endless-Station)                     |
| Wiki                | [https://tgstation13.org/wiki/Main_Page](https://tgstation13.org/wiki/Main_Page)                     |
| Codedocs            | [https://codedocs.tgstation13.org/](https://codedocs.tgstation13.org/)                               |
| Discord | Будет доступно при готовности публичного тестирования                                               |
| Coderbus Discord    | [https://discord.gg/Vh8TJp9](https://discord.gg/Vh8TJp9)                                             |

Эта кодовая база небольшой сборки, основанной на /tg/station.

## Загрузка и запуск сборки

[Загрузка](.github/guides/DOWNLOADING.md)

[Запуск сервера](.github/guides/RUNNING_A_SERVER.md)

[Карты и "авейки"](.github/guides/MAPS_AND_AWAY_MISSIONS.md)

## Компиляция

**Быстрый способ**. Найдите в этом репозитори файл `bin/server.cmd` и дважды щелкните по нему, чтобы автоматически собрать и разместить сервер на порту 1337.

**Длинный путь**. Найдите в этом репозитории файл `bin/build.cmd` и дважды щелкните по нему, чтобы запустить сборку. Она состоит из нескольких этапов и может занять около 1-5 минут. Если он закроется, это будет означать, что он закончил свою работу. После этого вы можете [настроить сервер](.github/guides/RUNNING_A_SERVER.md), открыв `tgstation.dmb` в DreamDaemon.

**Обратите внимание. Создание tgstation в DreamMaker напрямую устарело и может привести к ошибкам**, таким как `'tgui.bundle.js': cannot find file`.

**[Как компилировать в VSCode и другие варианты сборки] (tools/build/README.md).**.

## Как начать работать с кодом

Руководство по предложению изменений см. в [Guides for Contributors](.github/CONTRIBUTING.md).

Начало работы (dev env, компиляция) смотрите в документе HackMD [здесь](https://hackmd.io/@tgstation/HJ8OdjNBc#tgstation-Development-Guide).

Общую документацию по разработке смотрите в [HackMD](https://hackmd.io/@tgstation).

Для истории [см. Common Core](https://github.com/tgstation/common_core).

## Лицензирование

Весь код после [commit 333c566b88108de218d882840e61928a9b759d8f on 2014/31/12 at 4:38 PM PST](https://github.com/tgstation/tgstation/commit/333c566b88108de218d882840e61928a9b759d8f) лицензируется в соответствии с [GNU AGPL v3](https://www.gnu.org/licenses/agpl-3.0.html).

Весь код до [commit 333c566b88108de218d882840e61928a9b759d8f on 2014/31/12 at 4:38 PM PST](https://github.com/tgstation/tgstation/commit/333c566b88108de218d882840e61928a9b759d8f) лицензируется в соответствии  [GNU GPL v3](https://www.gnu.org/licenses/gpl-3.0.html).
(Включая инструменты, если в их readme не указано иное.)

Более подробную информацию см. в LICENSE и GPLv3.txt.

TGS DMAPI лицензируется как подпроект под лицензией MIT.

См. нижний колонтитул [code/\_\_DEFINES/tgs.dm](./code/__DEFINES/tgs.dm) и [code/modules/tgs/LICENSE](./code/modules/tgs/LICENSE) для лицензии MIT.

Все ресурсы, включая иконки и звук, находятся под лицензией [Creative Commons 3.0 BY-SA](https://creativecommons.org/licenses/by-sa/3.0/), если не указано иное.
