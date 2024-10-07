# lenny

Lenny - Ideapad Dust Cleaner for Linux

There are four available modes:
* 0 -> Super Silent Mode
* 1 -> Standard Mode
* 2 -> Dust Cleaning
* 4 -> Efficient Thermal Dissipation Mode

## Installation

```
$ git clone https://github.com/maximyurevich/lenny
$ cd lenny
$ sudo mv lenny.sh /bin/lenny
```
## Usage

```
$ sudo lenny 4
```

## Cron

If you want this script to run perriodically, you can use cron

```
sudo crontab -e
0 */8 * * * lenny 4
```
