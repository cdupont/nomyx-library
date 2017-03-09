
Introduction
============

Nomyx is a game where you can change the rules: http://www.nomyx.net

This package defines a set of rule examples to be played in Nomyx, that you can modify.
Just fork this package to create your own rule and play them in Nomyx!
To push your rules to Nomyx, use [nomyx-client](https://github.com/cdupont/nomyx-client).


Usage
=====

Fork this package:
```
git clone git@github.com:cdupont/nomyx-library.git
```

Get Haskell Stack:
```
curl -sSL https://get.haskellstack.org/ | sh
```

You can now compile it:
```
cd nomyx-library
stack install
```

Feel free to modify existing rules, or create new ones!
The rule list is in [templates.yaml](src/templates.yaml).

Once done, you can push your rules to Nomyx with [nomyx-client](https://github.com/cdupont/nomyx-client).

Contact
=======

Bug-reports, questions, suggestions and patches are all welcome.
