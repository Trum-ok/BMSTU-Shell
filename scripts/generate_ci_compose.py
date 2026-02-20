import sys

try:
    import yaml
except ImportError:
    print("Error: PyYAML not found! Use: pip install pyyaml", file=sys.stderr)
    sys.exit(1)


SRC = 'docker-compose.yaml'
OUT = 'docker-compose.ci.yaml'


def main() -> None:
    try:
        with open(SRC, 'r') as f:
            data: dict = yaml.safe_load(f)
    except FileNotFoundError:
        print(f"Error: '{SRC}' not found", file=sys.stderr)
        sys.exit(1)

    if 'x-defaults' in data:
        data.pop('x-defaults')

    services: dict = data.get('services', {})
    for _, svc in services.items():
        if isinstance(svc, dict):
            svc.pop('environment', None)
            svc.pop('volumes', None)

    with open(OUT, 'w') as f:
        yaml.dump(data, f, default_flow_style=False, sort_keys=False)


if __name__ == '__main__':
    main()
