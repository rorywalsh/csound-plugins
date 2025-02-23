# cacheget

## Abstract

Get a string inside the cache


## Description

The cache- opcodes implement a global string cache. This can be useful to
pass multiple strings between instruments using the `event` opcode. This is
similar to the `strset` and `strget` opcodes but automatically asigns an idx
to each distints string inside the cache (we guarantee that passing twice 
the same string will return the same index)

`cacheget` executes both at **i-time** and **k-time**, depending on the type of
the input variable

## Syntax

    Sstr cacheget idx
    Sstr cacheget kdx
    

### Arguments

* `idx` / `kdx`: the numeric id representing the string, as returned by `cacheput`

### Output

* `Sstr`: the string inside the cache, corresponding to `idx`


### Execution Time

* Init 
* Performance

## Examples

```csound 

<CsoundSynthesizer>
<CsOptions>
--nosound
</CsOptions>

<CsInstruments>

/*
  Example file for cacheput / cacheget

  cacheput and cacheget implement a method to internalize strings,
  similar to strset and strget, but without having to take care about
  setting the indices

  cacheput puts a strin into the cache and returns an idx identifying 
  this string. If a string is put into the cache which already exists,
  we guarantee that the index returned is the same. 

  idx cacheput Sstr          i-time
  kdx cacheput Sstr          k-time

  cacheget retrieves a str previously put in the cache. If the index
  does not point to an existing string, a performance error is raised

  Sstr cacheget idx          i-time
  Sstr cacheget kdx          k-time

  Both opcodes work at both i- and k-time, depending on the arguments
*/

; Use cacheput/get to pass multiple strings between instruments
instr 1  
  event_i "i", 2, 0, -1, cacheput:i("foo"), cacheput:i("bar")
  turnoff
endin

instr 2
  S1 cacheget p4
  S2 cacheget p5
  prints "S1=%s   S2=%s \n", S1, S2
  turnoff
endin

</CsInstruments>

<CsScore>

i 1 0 0.1

f 0 1
</CsScore>
</CsoundSynthesizer>

```


## See also

* [cacheput](cacheput.md)

## Credits

Eduardo Moguillansky, 2019
