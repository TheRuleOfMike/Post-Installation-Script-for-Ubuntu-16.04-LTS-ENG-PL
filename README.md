# Post-Installation-Script-for-Ubuntu-16.04-LTS-ENG-PL

#ENGLISH VERSION:

<b>Attention! Use the scripts at your own risk.</b>

<b>Choose the version of the script based on the GPU you are using and your preferred language.</b>

The scripts are written for individual users that have just installed Ubuntu 16.04 and don't want to go through the whole boring process of installing every single needed program one by one, are not familiar enough with the command line to make the process faster and/or just want to find a ready script that does all that. Also some useful configuration is done during execution. The scripts are designed to need MINIMAL ATTENTION from the user. They will need confirmation only while installing the Ubuntu Restricted Extras with Microsoft Core Fonts and while cleaning up the system.

I advise to run a full system update before running the script.

The scripts were tested on a MSI CR61 laptop (with Intel Core i3 4000M procesor, 4GB of RAM and an Intel HD 4600 integrated GPU) and on a 64bit Virtual Machine (Virtual Box - 768 MB RAM, 128 video memory, 3d acceleration enabled, 1 virtual CPU, 30GB virtual Hard Drive). No problems occured after the full execution of both scripts (in fact, I've written them to save some time while installing Ubuntu 16.04 LTS).

-----

The process is divided into to two separate scripts:
<ol>
<li>The basic install script that mostly requires superuser permissions which mean it should be run with "sudo bash script_name.sh"
<li>The second, "config", script that will prompt you for the sudo password at the beginning and should be run with bash script_name.sh
</ol>
-----

The first script ("Script_PostInstall_Ubuntu1604_XXX.sh"):
<ul>
<li>Changes swappiness from 60 to 10 ("10" is perfectly suitable for desktop use which means that the system will write less data to SWAP which is more healthy for SSD drives and also will shorten the process of "waking up" applications that are left idle in the background)

<li>Installs Ubuntu Restricted Extras (without Flash - it's a security risk on all operating systems and I advise to just skip it)

<li>Installs Microsoft Core Fonts (they're not available on Ubuntu out of the box)

<li>Installs the following applications:
<ul>	
<li>Asunder - creating copies of music recorder on audio CD's
<li>Audacious - a superior (in my opinion) audio player
<li>Audacity - sound editing software
<li>Bleachbit - system cleaning software
<li>Calibre – e-book collection managment + e-book reading
<li>Comix - the best (in my opinion) software for reading comic books
<li>Converseen - graphic format converter
<li>Dosbox - MSDos emulator
<li>FBreader - an alternative e-book reader
<li>Gimp (with additional plug-ins and UFRaw) - image editing software with extra plug-ins and UFRaw (ability to open RAW images pictures)
<li>Inkscape - vector graphics editing software
<li>ufw with gufw - a graphical user interface for the system firewall
<li>Geany - a powerful text editor/IDE for programmers
<li>Pyroom - distraction free writing software
<li>Stellarium - astronomy software
<li>Synaptic Package Manager - a superior package manager 
<li>VLC Media Player - a superior media player
</ul>

<li>Installs(and deletes the downloaded install packages after):
<ul>
<li>Wine - Windows compatibility Layer (in latest version available in the repository)
<li>Steam - digital distribution platform, social network and a communicator 
<li>Skype - VOIP software
<li>Spotify - a client for the popular music streaming service
<li>PlayOnLinux - wine version management for installing Windows games and software on Linux
<li>Google Chrome - an alternative for Firefox that comes pre-installed in Ubuntu 16.04
</ul>
<br/><br/>
<b>(if you're having problems while using, or due to using, the above applications I advise contacting the official support of those applications, search the forums for the user applications or the official Ubuntu forums)</b>
<br/><br/>
<li>Adds a repository for the latest GPU drivers (run the version of the script based on which GPU you are using)

<li>Completes the language pack installation which is usually lacking on a fresh install

<li>Installs the latest upgrades if needed

<li>Activates the firewall with default settings

<li>Reboots the computer after completing all above tasks.
</ul>

The second script ("Script_PostInstall_Config_And_Cleanup.sh"):
<ul>
<li>Cleans the cache of the package manager and removes leftovers from the installation.

<li>Adds the gdiplus package to Wine (useful when installing GOG.com games).
<br/><br/>
<b>(The following settings are - naturally - my preferences. Feel free to modify the script for your own liking while using it.)</b>
<br/><br/>
<li>Turns 'record file and application usage' option off
<li>Turns on workspaces
<li>Sets that the computer won't go to sleep when plugged in.
<li>Sets the time in which the computer will go to sleep (while on battery) to 10 minutes.
<li>When the Lid is closed the computer will go to sleep (plugged in)
<li>When the Lid is closed the computer will go to sleep (battery)
<li>Turns off sending software usage stats to Canonical
<li>Enables locking screen when idle for 1 hour
<li>Disables turning of the screen when idle completely
</ul>
<br/><br/>
<b>The scripts can be used separately and are not bound together to work.</b>
<br/><br/>

<br/><br/>
<b>USAGE:</b>

(The first script)Type in the terminal:
<ol>
<li>wget (the path to the .sh file in this repository)
<li>sudo bash downloaded_file_name.sh
</ol>

(The second script)Type in the terminal:
<ol>
<li>wget (the path to the .sh file in this repository)
<li>bash downloaded_file_name.sh
</ol>
<br/><br/>

# WERSJA POLSKA

<b>Uwaga! Użytkowanie skryptów na własne ryzyko.</b>

<b>Należy wybrać wersję skryptu na bazie używanej przez siebie karty graficznej oraz preferowanego języka.</b>

<b>Wersja polska isntaluje dodatkowo program Qnapi, który pobiera napisy do filmów z serwisów będących bazamo takowych</b>


Skrypty napisane zostały dla użytkowników komputerów osobistych, którzy właśnie zainstalowali Ubuntu 16.04 i nie chcą przechodzić przez cały nudny proces instalowania każdego przydatnego programy pojedynczo, jednak nie są na tyle zaznajomieni z linią komend aby przyspieszyć ten proces i/lub potrzebują po prostu gotowego skryptu który wykona niezbędne czynności. W czasie działania skryptu wykonywana jest także przydatna konfiguracja. Skrypty są zaprojektowane aby egzekwować MINIMALNE ILOŚCI UWAGI ze strony użytkownika. Będą potrzebowały potwierdzania tylko w czasie instalacji Ograniczonych Dodatków Ubuntu, czcionek Microsoft oraz w czasie sprzątania systemu.


Radzę wykonać pełną aktualizację systemu przed uruchomieniem skryptu.

Skrypty testowane były na laptopie MSI CR61 (z procesorem Intel Core i3 4000M procesor, 4GB RAM i zintegrowaną kartą graficzną Intel HD 4600) oraz na 64bit Wirtualnej Maszynie (Virtual Box - 768 MB RAM, 128 pamięci wideo, akceleracja 3D włączona, jeden wirtualny CPU, 30GB wirtualny dysk twardy). Nie pojawiły się żadne problemy w czasie pełnej egzekucji skryptów (zostały one z resztą napisane w celu zaoszczędzenia czasu po instalacji Ubuntu 16.04 LTS).

----

Proces jest podzielony na dwa osobne skrypty:

<ol>
<li>Skrypt podstawowej instalacji wymagający przywilejów super-użytkownika, co oznacza że powinien być uruchamiany przez "sudo bash <nazwa_skryptu>.sh"</li>
<li>Drugi, "konfiguracyjny", skrypt który poprosi o hasło sudo na samym początku a powinien być uruchomiony przez "bash <nazwa_skryptu>.sh"</li>
</ol>
----

Pierwszy skrypt ("Skrypt_PostInstalacyjny_XXX_qnapi_dla_Polskich_Użytkowników"):
<ul>
<li>Zmienia swappiness z 60 na 10("10" jest wystarczające dla typowego użytkowania i oznacza, że system będzie zapisywał mniej danych w przestrzeni wymiany co jest bardziej "zdrowe" dla dysków SSD i skróci okres "rozbudzania" włączonych w tle, ale nie używanych aktualnie przez użytkownika)

<li>Instaluje Ograniczone Dodatki Ubuntu (z pominięciem Flasha - stanowi on aktualnie zagrożenie bezpieczeństwa na dowolnym systemie operacyjnym i lepiej go po prostu pominąć)

<li>Instaluje czcionki Microsoft Core Fonts (nie są dostępne domyślnie w Ubuntu)

<li>Instaluje następujące aplikacje:
<ul>
<li>Asunder - zgrywanie i archiwizowanie utworów z płyt CD-Audio
<li>Audacious - najlepszy (moim zdaniem) odtwarzacz muzyki na Linuksie
<li>Audacity - program do edycji dźwięku
<li>Bleachbit - aplikacja do sprzątania systemu
<li>Calibre - zarządzanie kolekcjami ebooków + czytanie ebooków
<li>Comix - najlepszy (moim zdaniem) program do czytania komiksów
<li>Converseen - program do konwersji formatów graficznych
<li>Dosbox - emulator MSDos
<li>FBreader - alternatywny czytnik ebook'ów
<li>Gimp (z dodatkowymi wtyczkami i UFRaw) - oprogramowanie do obróbki obrazów z dodatkowymi wtyczkami i UFRaw (możliwość otwierania zdjęć RAW)
<li>Inkscape - obróbka grafiki wektorowej
<li>ufw with gufw - interfejs graficzny dla Linuksowego firewalla
<li>Geany - potężny edytor tekstu/IDE dla programistów
<li>Pyroom - pozbawiające rozpraszających bodźców narzędzie dla pisarzy
<li>Qnapi - aplikacja umożliwiająca ściąganie napisów do filmów z popularnych serwisów
<li>Stellarium - program astronomiczny
<li>Synaptic Package Menager - lepszy menadżer pakietów 
<li>VLC Media Player - lepszy odtwarzacz wideo
</ul>
<li>Instaluje (i usuwa pobrane pakiety po instalacji):
<ul>
<li>Wine - powłoka kompatybilności z systemem Windows (w najnowszej wersji dostępnej w repozytoriach)
<li>Steam - platforma dystrybucji cyfrowej gier komputerowych, sieć społecznościowa i komunikator
<li>Skype - oprogramowanie VOIP
<li>Spotify - klient dla popularnego serwisu streamującego muzykę
<li>PlayOnLinux - zarządzenie wersjami Wine do instalowania gier komputerowych i aplikacji z systemu Windows na Linuksie
<li>Google Chrome - alternatywa dla instalowanego domyślnie w Ubuntu Firefoksa
</ul>
<br/><br/>
<b>(jeśli występują problemy z powyższymi programami, lub w trakcie ich użytkowania, proponuję kontakt z oficjalnym wsparciem technicznym tych aplikacji, przeszukanie forów dla użytkowników tych aplikacji albo przeszukanie oficjalnych forów Ubuntu)</b>
<br/><br/>
<li>Dodaje repozytoria dla najnowszych sterowników dla kart graficznych (należy uruchomić wersje skryptu zależnie od używanej karty graficznej)

<li>Kończy instalację pakietów językowych, która zwykle jest wybrakowana na świeżej instalacji

<li>Instaluje aktualizacje jeśli zachodzi taka potrzeba

<li>Aktywuje firewalla z domyślnymi ustawieniami

<li>Restartuje komputer po wykonaniu powyższych zadań

</ul>

Drugi skrypt("Script_PostInstall_Konfiguracja_I_Sprzątanie.sh"):
<ul>
<li>Czyści pamięć cache menadżera pakietów i usuwa zbędne pozostałości po instalacji.
<li>Dodaje pakiet dla Wine o nazwie gdiplus, który przydaje się przy instalacji gier kupionych na stronie GOG.com.
<br/><br/>
<b>(Poniższe ustawienia to - rzecz jasna - moje preferencje. Zachęcam do zmodyfikowania skryptu, wedle własnego uznania, przed użyciem).</b>
<br/><br/>
<li>Wyłącza "Nagrywanie plików i użytkowania aplikacji"
<li>Udostępnia obszary robocze.
<li>Wyłącza usypianie komputera przy podłączonym zasilaniu sieciowym.
<li>Ustawia czas uśpienia na 10 minut braku aktywności, gdy komputer jest na zasilaniu akumulatorowym.
<li>Ustala, że po zamknięciu pokrywy, niezależnie czy na zasilaniu sieciowym czy akumulatorowym, komputer przechodzi w stan uśpienia.
<li>Wyłącza wysyłanie statystyk włączonych programów do Canonical.
<li>Włącza blokowanie ekranu po godzinie.
<li>Wyłącza wygaszanie ekranu w czasie nieaktywności.
</ul>
<br/><br/>
<b>Skrypty mogą być niezależnie użytkowane i nie są ze sobą powiązane bezpośrednio.</b>
<br/><br/>

<br/><br/>
<b>UŻYTKOWANIE:</b>

(Pierwszy skrypt)Wpisać w terminalu:
<ol>
<li>wget (adres pliku .sh w tym repozytorium)
<li>sudo bash nazwa_pobranego_pliku.sh
</ol>

(Drugi skrypt)Wpisać w terminalu:
<ol>
<li>wget (adres pliku .sh w tym repozytorium)
<li>bash nazwa_pobranego_pliku.sh
</ol>
