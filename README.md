A quick demostration of cascading precompilation, e.g. try:

```
$ raku -I . -e'use MyProj' 2> /dev/null
$ echo ' ' >> lib/MyProj/B.rakumod; raku -I . -e'use MyProj
compile MyProj
compile MyProj::A
compile MyProj::B
```

Notice the cascading compilation of MyProj::A and MyProj following the update of MyProj::B

But if the compile-time `need MyProj::A` is changed to a run-time `require MyProj::A`, then:

```
$ raku -I . -e'use MyProj' 2> /dev/null
$ echo ' ' >> lib/MyProj/B.rakumod; raku -I . -e'use MyProj
compile MyProj::A
compile MyProj::B
```

Notice that MyProj is not recompiled.

If you are experiencing longer precompilation times with larger projects.
Use the run-time `require` over the compile time `need`, or `use` may help
to alleviate this.

