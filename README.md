# BMSTU-Shell
![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat&logo=docker&logoColor=white)
![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=flat&logo=ubuntu&logoColor=white)
![Alpine Linux](https://img.shields.io/badge/Alpine_Linux-0D597F?style=flat&logo=alpine-linux&logoColor=white)

Контейнерные версии дистрибутивов Linux (Ubuntu 24.04, 22.04 и Alpine 3.21) для учёбы.

## Docker Compose

```bash
cp docker-compose.override.example.yaml docker-compose.override.yaml

# отредактируйте override под себя!

docker compose up ubuntu24 --build -d
docker exec -it ubuntu24 /bin/bash
```

## Доступные окружения
| Сервис     | Дистрибутив  |
|------------|-------------|
| `ubuntu24` | Ubuntu 24.04 |
| `ubuntu22` | Ubuntu 22.04 |
| `alpine3`  | Alpine 3.21  |

## Лицензия
[MIT License](./LICENSE)
