<p align="center"><img src="https://user-images.githubusercontent.com/12123721/160276449-891ac0fe-0034-45b0-b43f-0fcc81826dc0.png" /></p>

<p align="center">
  <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="cc by-nc-sa 4.0" src="https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-525252.svg?labelColor=292929&logo=creative%20commons&style=for-the-badge" /></a>
  <a href="https://github.com/Omega-Numworks/Omega/issues"><img alt="Issues" src="https://img.shields.io/github/issues/Omega-Numworks/Omega.svg?labelColor=292929&logo=git&style=for-the-badge" /></a>
  <br/>
  <a href="https://discord.gg/X2TWhh9"><img alt="Discord" src="https://img.shields.io/discord/663420259851567114?color=blue&labelColor=292929&label=chat%20-%20discord&logo=discord&style=for-the-badge" /></a>
</p>

> Vous ne comprenez pas l'anglais ? vous êtes francophone ? Regardez le [*LISEZ-MOI* français](./README.fr.md) !

## About

Omega is a fork of Numworks' Epsilon, the OS that runs on their calculator, which brings many features to it. Omega is for the people who want to add features to the calculator, but cannot because they have been rejected by Numworks (for reasons that are 100% understandable!). [Try it online](https://getomega.web.app/simulator).

### Some new features
- Adding symbolic calculation back into the calculator
- An app for RPN
- Exernal apps
- A theme engine
- New python features (os module, open method...)
- A periodic table app + all of the molar masses for the elements in the toolbox
- *And much more to discover...* [Complete changelog](https://github.com/Omega-Numworks/Omega/wiki/Changelog) | [Main new features + screenshots](https://github.com/Omega-Numworks/Omega/wiki/Main-features).

## Installation

### Automatic

You can install Omega automatically on our website [here](https://getomega.web.app/) in the "install" page.

<a href="https://getomega.web.app"><p align="center"><img alt="Omega Banner Discord" src="https://user-images.githubusercontent.com/12123721/86352956-e9000480-bc66-11ea-82b7-79fd7e56fa27.png" /></p></a>

### Manual

First of all, follow **step 1** [here](https://www.numworks.com/resources/engineering/software/build/). Then:

<details>
  <summary><b>Model n0100</b></summary>

(note: you can change the `EPSILON_I18N=en` flag to `fr`, `nl`, `pt`, `it`, `de`, `es` or `hu`).

```bash
git clone --recursive https://github.com/Omega-Numworks/Omega.git
cd Omega
git checkout omega-master
make MODEL=n0100 clean
make MODEL=n0100 EPSILON_I18N=en OMEGA_USERNAME="{Your name, max 15 characters}" -j$(nproc)
make MODEL=n0100 epsilon_flash
```

Important: Don't forget the `--recursive` tag, because Omega relies on submodules.
Also, you can change the number of processes that run in parallel during the build by changing the value of the `-j` flag.
  
</details>

<details>
  <summary><b>Model n0110</b></summary>

```bash
git clone --recursive https://github.com/Omega-Numworks/Omega.git
cd Omega
git checkout omega-master
make clean
make OMEGA_USERNAME="{Your name, max 15 characters}" -j$(nproc)
make epsilon_flash
```

Important: Don't forget the `--recursive` tag, because Omega relies on submodules.
Also, you can change the number of processes that run in parallel during the build by changing the value of the `-j` flag.
  
</details>

<details>
  <summary><b>Bin files</b></summary>
  
These can be used to distribute Omega (so that it can be flashed by anyone with [Webdfu_Numworks](https://ti-planet.github.io/webdfu_numworks/)).

```bash
git clone --recursive https://github.com/Omega-Numworks/Omega.git
cd Omega
git checkout omega-master
make clean
make MODEL=n0100 OMEGA_USERNAME="" -j$(nproc)
make MODEL=n0100 OMEGA_USERNAME="" binpack -j$(nproc)
make OMEGA_USERNAME="" -j8
make OMEGA_USERNAME="" binpack -j$(nproc)
```

Important: Don't forget the `--recursive` tag, because Omega relies on submodules.
Also, you can change the number of processes that run in parallel during the build by changing the value of the `-j` flag.
  
</details>

<details>
  <summary><b>Web simulator</b></summary>
  
First, install emsdk :

```bash
git clone https://github.com/emscripten-core/emsdk.git
cd emsdk
./emsdk install latest-fastcomp
./emsdk activate latest-fastcomp
source emsdk_env.sh
```

Then, compile Omega :

```bash
git clone --recursive https://github.com/Omega-Numworks/Omega.git
cd Omega
git checkout omega-master
make clean
make PLATFORM=simulator TARGET=web OMEGA_USERNAME="{Your name, max 15 characters}" -j$(nproc)
```

The simulator is now in `output/release/simulator/web/simulator.zip`

Important: Don't forget the `--recursive` tag, because Omega relies on submodules.
Also, you can change the number of processes that run in parallel during the build by changing the value of the `-j` flag.

</details>

<details>
  <summary><b>3DS Simulator</b></summary>
  
You need devkitPro and devkitARM installed and in your path (instructions [here](https://devkitpro.org/wiki/Getting_Started))

```bash
git clone --recursive https://github.com/Omega-Numworks/Omega.git
cd Omega
git checkout omega-master
make PLATFORM=simulator TARGET=3ds -j$(nproc)
```
You can then put epsilon.3dsx on a SD card to run it from the HBC or use 3dslink to launch it over the network:

```bash
3dslink output/release/simulator/3ds/epsilon.3dsx -a <3DS' IP ADDRESS>
```

</details>

<details>
  <summary><b>Casio fx-CG-series Port</b></summary>
  
First, install gint and fxsdk along with a cross compiler for the calculator. There are instructions for this (in French, but Google Translate works well enough) [here](https://www.planet-casio.com/Fr/forums/topic16614-last-giteapc-installer-et-mettre-a-jour-automatiquement-des-projets-gitea.html).

Next:
```bash
git clone --recursive https://github.com/Omega-Numworks/Omega.git
cd Omega
git checkout omega-master
make PLATFORM=simulator TARGET=prizm -j$(nproc)
```
Then copy the file at `./output/release/simulator/prizm/epsilon.g3a` to the calculator over USB.

</details>

If you need help, you can join our Discord server here : https://discord.gg/X2TWhh9

<a href="https://discord.gg/X2TWhh9"><p align="center"><img alt="Omega Banner Discord" src="https://user-images.githubusercontent.com/12123721/86287349-54ef5800-bbe8-11ea-80c1-34eb1f93eebd.png" /></p></a>
---

## Contributing

To contribute, please refer to the [Wiki](https://github.com/Omega-Numworks/Omega/wiki/Contributing)

## Related repositories

* [Omega Themes](https://github.com/Omega-Numworks/Omega-Themes)
* [Omega Website](https://github.com/Omega-Numworks/Omega-Website)
* [Omega RPN `APP`](https://github.com/Omega-Numworks/Omega-RPN)
* [Omega Atomic `APP`](https://github.com/Omega-Numworks/Omega-Atomic)
* [Omega Design](https://github.com/Omega-Numworks/Omega-Design)
* [Omega Discord Bot](https://github.com/Omega-Numworks/Omega-Discord-Bot)
* [Omega App Template `BETA`](https://github.com/Omega-Numworks/Omega-App-Template)
* [External Apps](https://github.com/Omega-Numworks/External-Apps)

## About Epsilon

Omega is a fork of Epsilon, a high-performance graphing calculator operating system. It includes eight apps that cover the high school mathematics curriculum.

You can try Epsilon straight from your browser in the [online simulator](https://www.numworks.com/simulator/).

## License

NumWorks is a registered trademark of NumWorks SAS, 24 Rue Godot de Mauroy, 75009 Paris, France.
Nintendo and Nintendo 3DS are registered trademarks of Nintendo of America Inc, 4600 150th Ave NE, Redmond, WA 98052, USA.
Casio is a registered trademark of Casio Computer Co., Ltd. CORPORATION JAPAN 6-2, Hon-machi 1-chome Shibuya-ku, Tokyo JAPAN 151-8543.
NumWorks SAS, Nintendo of America Inc and Casio aren't associated in any shape or form with this project.

* NumWorks Epsilon is released under a [CC BY-NC-SA License](https://creativecommons.org/licenses/by-nc-sa/4.0/legalcode).
* Omega is released under a [CC BY-NC-SA License](https://creativecommons.org/licenses/by-nc-sa/4.0/legalcode).
