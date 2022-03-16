# unit-test-action

Este action se usara para las pruebas unitarias

## Inputs

## `node-version`

**Opcional** Versión que usará de Node (12,14,16, etc) por defecto es la 12.

## `registry-url`

**Opcional** Url del registro que se utilizará.

## `cache-dependency-path`

**Opcional** Sin descripción por el momento

## Ejemplo de uso

```yaml
uses: smu-chile/unit-test-action@v1.0.4
with:
  node-version: '12'
  registry-url: 'https://npm.pkg.github.com/'
  cache-dependency-path: 'package-lock.json'
```

## License

The MIT License (MIT)