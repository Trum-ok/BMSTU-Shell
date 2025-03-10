# BMSTU-Shell
Контейнерные версии дистрибутивов Linux (Ubuntu 24.04 и Alpine 3.21.3). 

```bash
git clone https://github.com/Trum-ok/BMSTU-Shell.git
cd BMSTU-Shell
```

> [!IMPORTANT]
> Перед запуском измените [volumes и platform в docker-compose.yaml](/docker-compose.yaml)

## Ubuntu

Первый запуск: **~100** секунд. \
Последующие запуски: **~2-3** секунды. \
Вес контенера со всеми пакетами: **~980мб**.

### Запуск
```bash
docker compose up ubuntu --build -d
```
### Подключение к контейнеру
```bash
docker exec -it ubuntu24 /bin/bash
```
`-it` - подключение к STDIN с корректным отображением приглашения ввода, а также поддержкой цветов. \
`ubuntu24` - имя контейнера, к которому необходими подключиться. \
`/bin/bash` - выбор оболочки внутри контейнера. (Также можно использовать `/bin/sh`)

### Конфигурация Ubuntu
На данный момент используется версия 24.04

---

## Alpine
В процессе доработки... 🏗️
```bash
docker exec -it alpine3 /bin/sh
```