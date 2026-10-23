[Setup]
AppId={{D8682CB0-C142-4674-8669-861D25D2185D}
AppName=Fibonachi
AppVersion=1.0.0
AppPublisher=qokisst

; Установка только для текущего пользователя (без запроса прав администратора)
DefaultDirName={localappdata}\Fibonachi
PrivilegesRequired=lowest

; Имя итогового файла установщика
OutputBaseFilename=Fibonacci-Setup
OutputDir=Output

Compression=lzma
SolidCompression=yes
WizardStyle=modern

; Иконка установщика (файл должен лежать рядом с .iss)
SetupIconFile=NUuDi3xV9Tk.ico

[Languages]
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"

[Tasks]
Name: "desktopicon"; Description: "Создать ярлык на рабочем столе"; GroupDescription: "Дополнительные ярлыки:"; Flags: unchecked

[Files]
Source: "fibonachi.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\Fibonachi";           Filename: "{app}\fibonachi.exe"
Name: "{group}\Удалить Fibonachi";   Filename: "{uninstallexe}"
Name: "{autodesktop}\Fibonachi";     Filename: "{app}\fibonachi.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\fibonachi.exe"; Description: "Запустить Fibonachi"; Flags: nowait postinstall skipifsilent