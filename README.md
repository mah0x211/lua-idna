lua-idna
=========

libidn bindings for lua.

---

## Dependencies

- libidn: http://www.gnu.org/software/libidn/


## Installation

```sh
luarocks install idna --from=http://mah0x211.github.io/rocks/
```


## API

### Encode

#### str, err = idna.encode( src:string )

```lua
local idna = require('idna');
local src = '日本語.jp';
local enc, err = idna.encode( src );
print( enc ); -- 'xn--wgv71a119e.jp'
```

### Decode

#### str, err = idna.decode( src:string )

```lua
local idna = require('idna');
local src = 'xn--wgv71a119e.jp';
local dec, err = idna.decode( src );
print( dec ); -- '日本語.jp'
```
