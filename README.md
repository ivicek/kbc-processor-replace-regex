
### Replace with regex 

Reads all `*.csv` files in `data/in/files` or `data/in/tables` (doesn't matter how deeply files are nested or what folder structure they have, but .csv suffix is obligatory) and performes basic character replacement with sed bash command.

## Configuration example

This configuration searches through all files for double-quotes which needs to be escaped and replace them with empty character. 

```
{
  "definition": {
    "component": "apac.processor-replace-regex"
  },
  "parameters": {
    "replace_what": "\"",
    "replace_with": ""
  }
}
```






