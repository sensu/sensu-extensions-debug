# Sensu::Extensions::Debug

This handler extension provides the Sensu Core built-in handler
`debug`.

This handler will return the raw event data (JSON), which will be
logged by the Sensu server process.

## Configuration

The `debug` handler is included in every install of Sensu. To apply
the handler to a check, use the `"handler"` or `"handlers"` check
definition attribute.

For example:

``` json
{
  "checks": {
    "check-http": {
      "...": "...",
      "handler": "debug"
    }
  }
}
```

or

``` json
{
  "checks": {
    "check-http": {
      "...": "...",
      "handlers": ["debug"]
    }
  }
}
```

You can use the `debug` as the default Sensu event handler, by using a
handler set for `default`.

For example:

``` json
{
  "handlers": {
    "default": {
      "type": "set",
      "handlers": ["debug"]
    }
  }
}
```