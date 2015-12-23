# ror
Rigs of Rods cookbook to build and deploy

## Supported Platforms

UBUNTU

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['ridgeofrods']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### ridgeofrods::default

Include `ridgeofrods` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[ridgeofrods::default]"
  ]
}
```

## License and Authors

Author:: Petr Michalec (epcim@apealive.net)
