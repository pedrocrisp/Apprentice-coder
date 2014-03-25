How to clone a program from Git
=====================

Got to local build folder, clone the repo and compile

```
cd build/
git clone https://github.com/najoshi/sickle.git
cd sickle/
make -j 8
```

Check it worked by calling the prog

```
./sickle
```

Copy binary into path, ie ~/bin

```
cp sickle ~/bin/
```
