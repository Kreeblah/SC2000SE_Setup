#define MyAppName "SimCity 2000 Special Edition"
#define MyAppVersion "1.0.0.1"
#define MyAppPublisher "Maxis"
#define MyAppURL "https://www.ea.com/games/simcity/simcity-2000"

[Setup]
AppId={{7D8E893D-69BD-438B-A8EE-865A664834AB}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={userpf}\{#MyAppName}
DefaultGroupName={#MyAppName}
PrivilegesRequired=lowest
OutputDir=C:\
OutputBaseFilename=SimCity2000SpecialEdition
SetupIconFile=C:\MAXIS.ICO
SolidCompression=yes
UninstallDisplayIcon={app}\SIMCITY.EXE,0
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Types]
Name: "sc2kcompletefix"; Description: "SimCity 2000 Special Edition Complete Installation with Latest Fixes"
Name: "sc2kcompleteonly"; Description: "SimCity 2000 Special Edition Complete Installation Only"
Name: "sc2knoscurkfix"; Description: "SimCity 2000 Special Edition Installation with Latest Fixes"
Name: "sc2knoscurkonly"; Description: "SimCity 2000 Special Edition Installation Only"
Name: "scurkfix"; Description: "SimCity 2000 Urban Renewal Kit Installation with Latest Fixes"
Name: "scurkonly"; Description: "SimCity 2000 Urban Renewal Kit Installation Only"
Name: "custom"; Description: "Custom Installation"; Flags: iscustom

[Components]
Name: "sc2k"; Description: "SimCity 2000 Special Edition Files"; Types: sc2kcompletefix sc2kcompleteonly sc2knoscurkfix sc2knoscurkonly custom
Name: "scurk"; Description: "SimCity 2000 Urban Renewal Kit"; Types: sc2kcompletefix sc2kcompleteonly scurkfix scurkonly custom
Name: "goodies"; Description: "SimCity 2000 Special Edition Goodies"; Types: sc2kcompletefix sc2kcompleteonly sc2knoscurkfix sc2knoscurkonly scurkfix scurkonly custom
Name: "fixes"; Description: "SimCity 2000 Special Edition Fixes"; Types: sc2kcompletefix sc2knoscurkfix scurkfix custom

[Files]
Source: "{code:GetFileSource}\WIN95\SC2K\D2HTOOLS.DLL"; DestDir: "{app}"; Flags:external; Components: sc2k;
Source: "{code:GetFileSource}\WIN95\SC2K\DEFAULT.SC2"; DestDir: "{app}"; Flags:external; Components: sc2k;
Source: "{code:GetFileSource}\WIN95\SC2K\README.WRI"; DestDir: "{app}"; Flags:external; Components: sc2k;
Source: "{code:GetFileSource}\WIN95\SC2K\SC2USA.GID"; DestDir: "{app}"; Flags:external; Components: sc2k;
Source: "{code:GetFileSource}\WIN95\SC2K\SC2USA.HLP"; DestDir: "{app}"; Flags:external; Components: sc2k;
Source: "{code:GetFileSource}\WIN95\SC2K\SIMCITY.EXE"; DestDir: "{app}"; Flags:external; Components: sc2k;
Source: "{code:GetFileSource}\WIN95\SC2K\SMACKW32.DLL"; DestDir: "{app}"; Flags:external; Components: sc2k;
Source: "{code:GetFileSource}\WIN95\SC2K\VERSION.INF"; DestDir: "{app}"; Flags:external; Components: sc2k;

Source: "{code:GetFileSource}\WIN95\SC2K\SCENARIO\*"; DestDir: "{app}\Scenario\"; Flags:external; Components: sc2k;
Source: "{code:GetFileSource}\DATA\*"; DestDir: "{app}\Movies\"; Flags:external; Components: sc2k;

Source: "{code:GetFileSource}\WIN95\SC2K\SCURK.HLP"; DestDir: "{app}"; Flags:external; Components: scurk;
Source: "{code:GetFileSource}\WIN95\SC2K\SCURKUSA.DLL"; DestDir: "{app}"; Flags:external; Components: scurk;
Source: "{code:GetFileSource}\WIN95\SC2K\SVERSION.INF"; DestDir: "{app}"; Flags:external; Components: scurk;
Source: "{code:GetFileSource}\WIN95\SC2K\WINSCURK.EXE"; DestDir: "{app}"; Flags:external; Components: scurk;

Source: "{code:GetFileSource}\WIN95\SC2K\SCURKART\*"; DestDir: "{userdocs}\SimCity 2000 Special Edition\SCURK Art\"; Flags:external uninsneveruninstall; Components: scurk;

Source: "{code:GetFileSource}\WIN95\SC2K\TILES.DB"; DestDir: "{app}"; Flags:external; Components: sc2k scurk;
Source: "{code:GetFileSource}\WIN95\SC2K\BITMAPS\*"; DestDir: "{app}\Bitmaps\"; Flags:external; Components: sc2k scurk;
Source: "{code:GetFileSource}\WIN95\SC2K\DATA\*"; DestDir: "{app}\Data\"; Flags:external; Components: sc2k scurk;
Source: "{code:GetFileSource}\WIN95\SC2K\SOUNDS\*"; DestDir: "{app}\Sounds\"; Flags:external; Components: sc2k scurk;

Source: "{code:GetFileSource}\WIN95\SC2K\CITIES\*"; DestDir: "{userdocs}\SimCity 2000 Special Edition\Cities\"; Flags:external uninsneveruninstall; Components: sc2k scurk;

Source: "{code:GetFileSource}\WIN95\GOODIES\*"; DestDir: "{app}\Goodies\"; Flags: external recursesubdirs; Components: goodies;

Source: "{tmp}\winmm.dll"; DestDir: "{app}"; Flags: external; Components: fixes;

[Registry]
Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\Registration"; ValueType: string; ValueName: "Mayor Name"; ValueData: "{code:GetUserInfo|UserName}"; Flags: uninsdeletekey; Components: sc2k scurk
Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\Registration"; ValueType: string; ValueName: "Company Name"; ValueData: "{code:GetUserInfo|UserCompany}"; Flags: uninsdeletekey; Components: sc2k scurk

Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\Version"; ValueType: dword; ValueName: "SimCity 2000"; ValueData: "$00000100"; Flags: uninsdeletekey; Components: sc2k
Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\Version"; ValueType: dword; ValueName: "SCURK"; ValueData: "$00000100"; Flags: uninsdeletekey; Components: scurk

Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\Paths"; ValueType: string; ValueName: "Home"; ValueData: "{app}"; Flags: uninsdeletekey; Components: sc2k scurk
Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\Paths"; ValueType: string; ValueName: "Graphics"; ValueData: "{app}\Bitmaps"; Flags: uninsdeletekey; Components: sc2k scurk
Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\Paths"; ValueType: string; ValueName: "Music"; ValueData: "{app}\Sounds"; Flags: uninsdeletekey; Components: sc2k scurk
Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\Paths"; ValueType: string; ValueName: "Data"; ValueData: "{app}\Data"; Flags: uninsdeletekey; Components: sc2k scurk
Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\Paths"; ValueType: string; ValueName: "Goodies"; ValueData: "{app}\Goodies"; Flags: uninsdeletekey; Components: sc2k scurk
Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\Paths"; ValueType: string; ValueName: "Scenarios"; ValueData: "{app}\Scenario"; Flags: uninsdeletekey; Components: sc2k scurk

Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\Paths"; ValueType: string; ValueName: "Cities"; ValueData: "{userdocs}\SimCity 2000 Special Edition\Cities"; Flags: uninsdeletekey; Components: sc2k scurk
Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\Paths"; ValueType: string; ValueName: "SaveGame"; ValueData: "{userdocs}\SimCity 2000 Special Edition\Cities"; Flags: uninsdeletekey; Components: sc2k scurk
Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\Paths"; ValueType: string; ValueName: "TileSets"; ValueData: "{userdocs}\SimCity 2000 Special Edition\SCURK Art"; Flags: uninsdeletekey; Components: scurk

Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\Localize"; ValueType: string; ValueName: "Language"; ValueData: "USA"; Flags: uninsdeletekey; Components: sc2k scurk

Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\Windows"; ValueType: string; ValueName: "Display"; ValueData: "8 1"; Flags: uninsdeletekey; Components: sc2k scurk
Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\Windows"; ValueType: dword; ValueName: "Color Check"; ValueData: "$00000000"; Flags: uninsdeletekey; Components: sc2k scurk

Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\Paths"; ValueType: string; ValueName: "Movies"; ValueData: "{app}\Movies"; Flags: uninsdeletekey; Components: sc2k
Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\Options"; ValueType: dword; ValueName: "Speed"; ValueData: "$00000001"; Flags: uninsdeletekey; Components: sc2k
Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\Options"; ValueType: dword; ValueName: "Sound"; ValueData: "$00000001"; Flags: uninsdeletekey; Components: sc2k
Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\Options"; ValueType: dword; ValueName: "Music"; ValueData: "$00000001"; Flags: uninsdeletekey; Components: sc2k
Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\Options"; ValueType: dword; ValueName: "AutoGoto"; ValueData: "$00000001"; Flags: uninsdeletekey; Components: sc2k
Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\Options"; ValueType: dword; ValueName: "AutoBudget"; ValueData: "$00000000"; Flags: uninsdeletekey; Components: sc2k
Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\Options"; ValueType: dword; ValueName: "Disasters"; ValueData: "$00000001"; Flags: uninsdeletekey; Components: sc2k
Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\Options"; ValueType: dword; ValueName: "AutoSave"; ValueData: "$00000000"; Flags: uninsdeletekey; Components: sc2k

Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\SCURK"; ValueType: dword; ValueName: "CycleColors"; ValueData: "$00000001"; Flags: uninsdeletekey; Components: scurk
Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\SCURK"; ValueType: dword; ValueName: "GridHeight"; ValueData: "$00000002"; Flags: uninsdeletekey; Components: scurk
Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\SCURK"; ValueType: dword; ValueName: "GridWidth"; ValueData: "$00000002"; Flags: uninsdeletekey; Components: scurk
Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\SCURK"; ValueType: dword; ValueName: "ShowClipRegion"; ValueData: "$00000000"; Flags: uninsdeletekey; Components: scurk
Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\SCURK"; ValueType: dword; ValueName: "ShowDrawGrid"; ValueData: "$00000000"; Flags: uninsdeletekey; Components: scurk
Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\SCURK"; ValueType: dword; ValueName: "SnapToGrid"; ValueData: "$00000000"; Flags: uninsdeletekey; Components: scurk
Root: HKCU; Subkey: "Software\Maxis\SimCity 2000\SCURK"; ValueType: dword; ValueName: "Sound"; ValueData: "$00000001"; Flags: uninsdeletekey; Components: scurk

Root: HKCU; Subkey: "Software\Classes\.sc2"; ValueType: string; ValueName: ""; ValueData: "SimCity2000.Document.City"; Flags: uninsdeletekey; Components: sc2k
Root: HKCU; Subkey: "Software\Classes\.sc2"; ValueType: string; ValueName: "Content Type"; ValueData: "SimCity2000.Document.City"; Flags: uninsdeletekey; Components: sc2k
Root: HKCU; Subkey: "Software\Classes\SimCity2000.Document.City"; ValueType: string; ValueName: ""; ValueData: "SimCity2000.Document.City"; Flags: uninsdeletekey; Components: sc2k
Root: HKCU; Subkey: "Software\Classes\SimCity2000.Document.City"; ValueType: string; ValueName: "FriendlyTypeName"; ValueData: "SimCity 2000 City"; Flags: uninsdeletekey; Components: sc2k
Root: HKCU; Subkey: "Software\Classes\SimCity2000.Document.City\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\SIMCITY.EXE,1"; Flags: uninsdeletekey; Components: sc2k
Root: HKCU; Subkey: "Software\Classes\SimCity2000.Document.City\shell"; ValueType: string; ValueName: ""; ValueData: "open"; Flags: uninsdeletekey; Components: sc2k
Root: HKCU; Subkey: "Software\Classes\SimCity2000.Document.City\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\SIMCITY.EXE"" %1"; Flags: uninsdeletekey; Components: sc2k

Root: HKCU; Subkey: "Software\Classes\.scn"; ValueType: string; ValueName: ""; ValueData: "SimCity2000.Document.Scenario"; Flags: uninsdeletekey; Components: sc2k
Root: HKCU; Subkey: "Software\Classes\.scn"; ValueType: string; ValueName: "Content Type"; ValueData: "SimCity2000.Document.Scenario"; Flags: uninsdeletekey; Components: sc2k
Root: HKCU; Subkey: "Software\Classes\SimCity2000.Document.Scenario"; ValueType: string; ValueName: ""; ValueData: "SimCity2000.Document.Scenario"; Flags: uninsdeletekey; Components: sc2k
Root: HKCU; Subkey: "Software\Classes\SimCity2000.Document.Scenario"; ValueType: string; ValueName: "FriendlyTypeName"; ValueData: "SimCity 2000 Scenario"; Flags: uninsdeletekey; Components: sc2k
Root: HKCU; Subkey: "Software\Classes\SimCity2000.Document.Scenario\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\SIMCITY.EXE,2"; Flags: uninsdeletekey; Components: sc2k
Root: HKCU; Subkey: "Software\Classes\SimCity2000.Document.Scenario\shell"; ValueType: string; ValueName: ""; ValueData: "open"; Flags: uninsdeletekey; Components: sc2k
Root: HKCU; Subkey: "Software\Classes\SimCity2000.Document.Scenario\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\SIMCITY.EXE"" %1"; Flags: uninsdeletekey; Components: sc2k

Root: HKCU; Subkey: "Software\Classes\.mif"; ValueType: string; ValueName: ""; ValueData: "SimCity2000.Document.TileSet"; Flags: uninsdeletekey; Components: scurk
Root: HKCU; Subkey: "Software\Classes\.mif"; ValueType: string; ValueName: "Content Type"; ValueData: "SimCity2000.Document.TileSet"; Flags: uninsdeletekey; Components: scurk
Root: HKCU; Subkey: "Software\Classes\SimCity2000.Document.TileSet"; ValueType: string; ValueName: ""; ValueData: "SimCity2000.Document.TileSet"; Flags: uninsdeletekey; Components: scurk
Root: HKCU; Subkey: "Software\Classes\SimCity2000.Document.TileSet"; ValueType: string; ValueName: "FriendlyTypeName"; ValueData: "SimCity 2000 Tile Set"; Flags: uninsdeletekey; Components: scurk
Root: HKCU; Subkey: "Software\Classes\SimCity2000.Document.TileSet\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\WINSCURK.EXE,1"; Flags: uninsdeletekey; Components: scurk
Root: HKCU; Subkey: "Software\Classes\SimCity2000.Document.TileSet\shell"; ValueType: string; ValueName: ""; ValueData: "open"; Flags: uninsdeletekey; Components: scurk
Root: HKCU; Subkey: "Software\Classes\SimCity2000.Document.TileSet\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\WINSCURK.EXE"" %1"; Flags: uninsdeletekey; Components: scurk

[Icons]
Name: "{group}\SimCity 2000 Special Edition"; Filename: "{app}\SIMCITY.EXE"; WorkingDir: "{app}"; Components: sc2k
Name: "{group}\SimCity Urban Renewal Kit"; Filename: "{app}\WINSCURK.EXE"; WorkingDir: "{app}"; Components: scurk
Name: "{group}\Uninstall SimCity 2000 Special Edition"; Filename: "{uninstallexe}"

[UninstallDelete]
Type: files; Name: "{app}\D2HTOOLS.DLL"
Type: files; Name: "{app}\DEFAULT.SC2"
Type: files; Name: "{app}\README.WRI"
Type: files; Name: "{app}\SC2USA.GID"
Type: files; Name: "{app}\SC2USA.HLP"
Type: files; Name: "{app}\SIMCITY.EXE"
Type: files; Name: "{app}\SMACKW32.DLL"
Type: files; Name: "{app}\VERSION.INF"
Type: files; Name: "{app}\SCURK.HLP"
Type: files; Name: "{app}\SCURKUSA.DLL"
Type: files; Name: "{app}\SVERSION.INF"
Type: files; Name: "{app}\WINSCURK.EXE"
Type: files; Name: "{app}\TILES.DB"
Type: files; Name: "{app}\winmm.dll"
Type: files; Name: "{app}\SC2Kfix.log"

Type: filesandordirs; Name: "{app}\Scenario"
Type: filesandordirs; Name: "{app}\Bitmaps"
Type: filesandordirs; Name: "{app}\Data"
Type: filesandordirs; Name: "{app}\Sounds"
Type: filesandordirs; Name: "{app}\Goodies"
Type: filesandordirs; Name: "{app}\Movies"

[Code]
var
  UserInfoPage: TInputQueryWizardPage;
  DownloadPage: TDownloadWizardPage;
  UserName, UserCompany: String;
  FileSource: String;

procedure ExitProcess(uExitCode: Integer);
  external 'ExitProcess@kernel32.dll stdcall';

function GetFileSource(Value: string): string;
begin
  Result := FileSource;
end;

function GetUserInfo(Value: string): string;
begin
  case Value of
    'UserName': Result := UserName;
    'UserCompany': Result := UserCompany;
  end;
end;

procedure AddUserInfoPage;
begin
  UserInfoPage := CreateInputQueryPage(wpWelcome,
    'Enter Your Name', 'You may enter up to 22 characters per field.',
    'In SimCity 2000, you will become the fearless leader of many living sims.');

  UserInfoPage.Add('&Name:', False);
  UserInfoPage.Add('&Company:', False);

  UserInfoPage.Values[0] := ExpandConstant('Sim Mayor');
  UserInfoPage.Values[1] := ExpandConstant('Sim Company');
end;

function OnDownloadProgress(const Url, FileName: String; const Progress, ProgressMax: Int64): Boolean;
begin
  Result := True;
end;

function CheckFileExistanceInDirectory(DirPath: string): Boolean;
begin
  Result := FileExists(DirPath + '\WIN95\SC2K\D2HTOOLS.DLL') and
            FileExists(DirPath + '\WIN95\SC2K\DEFAULT.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\README.WRI') and
            FileExists(DirPath + '\WIN95\SC2K\SC2USA.GID') and
            FileExists(DirPath + '\WIN95\SC2K\SC2USA.HLP') and
            FileExists(DirPath + '\WIN95\SC2K\SCURK.HLP') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKUSA.DLL') and
            FileExists(DirPath + '\WIN95\SC2K\SIMCITY.EXE') and
            FileExists(DirPath + '\WIN95\SC2K\SMACKW32.DLL') and
            FileExists(DirPath + '\WIN95\SC2K\SVERSION.INF') and
            FileExists(DirPath + '\WIN95\SC2K\TILES.DB') and
            FileExists(DirPath + '\WIN95\SC2K\VERSION.INF') and
            FileExists(DirPath + '\WIN95\SC2K\WINSCURK.EXE') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\128.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\2000WIN.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\400.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\401.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\402.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\403.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\404.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\405.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\406.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\407.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\408.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\409.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\410.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\411.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\ABOUT.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\ADVISBTN.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\BOOKBTN.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\NEIGHBOR.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\PAL_LOAD.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\PAL_MAC.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\PAL_MSTR.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\PAL_STTC.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\PRESNTS.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\TERRAIN.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\TITLESCR.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\WILL0D.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\WILL0U.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\WILL1D.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\WILL1U.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\WILL2D.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\WILL2U.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\WILL3D.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\WILL3U.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\WILL4D.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\BITMAPS\WILL4U.BMP') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\349ARCO.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\AMAZINGC.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\ARCOONE.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\BABAR.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\BAYVIEW.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\BIGGESTC.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\BRIDGEPO.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\CAPE.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\CAPEQUES.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\CENTERVL.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\CERES.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\CITIES.WRI') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\EGYPTFAL.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\EM.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\FLARANGE.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\FLOATING.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\FOURCITI.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\GREENLAN.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\HALENAPT.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\HAPPYGUY.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\HAPPYLND.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\HAWAII.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\HERMAN.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\HILTON.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\HIPPIVIL.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\HI_LOH2O.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\ISLAND.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\JUNETOWN.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\KATVILLE.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\KEENLAND.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\KEITH.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\LAKELAND.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\LAKEVIEW.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\LASVEGAS.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\LINCOLN.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\LOKEVILL.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\LONDON.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\MALTRON.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\MAXISLND.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\MUNS_ISL.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\MXBURG.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\NEWMONRO.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\NEWORLEA.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\NYC.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\PARADE.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\PARIS.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\PETER2.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\PETER3.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\RETREAT.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\RIO.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\RIVER5.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\ROME.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\SAM_STOW.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\SIMCITY.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\SPIRALOP.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\STARTER.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\STCHRISC.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\SYDNEY.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\SYMCITY.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\THEBAHAM.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\TOKYO.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\TOMG_B1.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\TOMG_B2.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\TOMG_B3.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\TOMG_B4.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\TOMG_C1.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\TOMG_C2.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\TOMG_C3.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\TOMG_C4.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\TORONTO.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\UTOPIA.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\VENICE.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\VIRTUALV.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\VOLCANO.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\CITIES\ZUTHERLA.SC2') and
            FileExists(DirPath + '\WIN95\SC2K\DATA\DATA_USA.DAT') and
            FileExists(DirPath + '\WIN95\SC2K\DATA\DATA_USA.IDX') and
            FileExists(DirPath + '\WIN95\SC2K\DATA\LARGE.DAT') and
            FileExists(DirPath + '\WIN95\SC2K\DATA\SMALLMED.DAT') and
            FileExists(DirPath + '\WIN95\SC2K\DATA\SPECIAL.DAT') and
            FileExists(DirPath + '\WIN95\SC2K\DATA\TEXT_USA.DAT') and
            FileExists(DirPath + '\WIN95\SC2K\DATA\TEXT_USA.IDX') and
            FileExists(DirPath + '\WIN95\SC2K\SCENARIO\ATLANTA.SCN') and
            FileExists(DirPath + '\WIN95\SC2K\SCENARIO\BARCELON.SCN') and
            FileExists(DirPath + '\WIN95\SC2K\SCENARIO\CHARLEST.SCN') and
            FileExists(DirPath + '\WIN95\SC2K\SCENARIO\CHICAGO.SCN') and
            FileExists(DirPath + '\WIN95\SC2K\SCENARIO\DAVENPOR.SCN') and
            FileExists(DirPath + '\WIN95\SC2K\SCENARIO\DULLSVIL.SCN') and
            FileExists(DirPath + '\WIN95\SC2K\SCENARIO\FLINT.SCN') and
            FileExists(DirPath + '\WIN95\SC2K\SCENARIO\HOLLYWOO.SCN') and
            FileExists(DirPath + '\WIN95\SC2K\SCENARIO\HOMESTEA.SCN') and
            FileExists(DirPath + '\WIN95\SC2K\SCENARIO\LASVEGAS.SCN') and
            FileExists(DirPath + '\WIN95\SC2K\SCENARIO\MALIBU.SCN') and
            FileExists(DirPath + '\WIN95\SC2K\SCENARIO\MANHATTA.SCN') and
            FileExists(DirPath + '\WIN95\SC2K\SCENARIO\OAKLAND.SCN') and
            FileExists(DirPath + '\WIN95\SC2K\SCENARIO\PARIS.SCN') and
            FileExists(DirPath + '\WIN95\SC2K\SCENARIO\PORTLAND.SCN') and
            FileExists(DirPath + '\WIN95\SC2K\SCENARIO\SANFRANC.SCN') and
            FileExists(DirPath + '\WIN95\SC2K\SCENARIO\SILICONV.SCN') and
            FileExists(DirPath + '\WIN95\SC2K\SCENARIO\WASHINGT.SCN') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\1900.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\2050.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\ARCOLB1.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\BARCELON.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\BIGBEN.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\BIGBEN.PCX') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\CITYHAL.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\COLLEGE.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\CONTEST.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\CTYHALL.PCX') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\DINOPARK.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\EIFFLE.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\ELECLINE.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\FLAGCHOP.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\FUTURE.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\GOLFGOOD.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\HYDRO.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\HYDRO1.PCX') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\HYDRO2.PCX') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\LONDON.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\MCONDO1.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\MCONDO2.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\ORIGINAL.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\PARIS.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\POLICE2.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\PWRTREE.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\RIO.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\ROME.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\SAMPLE1.PCX') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\SAMPLE2.PCX') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\SMHOUSE.PCX') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\SYDNEY.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\THINGIG.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\TILESET1.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\TOKYO.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\TORONTO.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\UNVIR.PCX') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\VEGAS.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SCURKART\VENICE.MIF') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\10000.MID') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\10001.MID') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\10002.MID') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\10003.MID') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\10004.MID') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\10005.MID') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\10006.MID') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\10007.MID') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\10008.MID') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\10009.MID') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\10010.MID') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\10011.MID') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\10012.MID') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\10013.MID') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\10014.MID') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\10015.MID') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\10016.MID') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\10017.MID') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\10018.MID') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\500.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\501.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\502.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\503.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\504.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\505.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\506.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\507.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\508.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\509.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\510.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\511.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\512.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\513.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\514.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\515.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\516.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\517.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\518.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\519.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\520.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\521.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\522.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\523.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\524.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\525.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\526.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\527.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\528.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\529.WAV') and
            FileExists(DirPath + '\WIN95\SC2K\SOUNDS\530.WAV') and
            FileExists(DirPath + '\DATA\INTROA.SMK') and
            FileExists(DirPath + '\DATA\INTROB.SMK') and
            FileExists(DirPath + '\DATA\WILL1A.SMK') and
            FileExists(DirPath + '\DATA\WILL1B.SMK') and
            FileExists(DirPath + '\DATA\WILL2A.SMK') and
            FileExists(DirPath + '\DATA\WILL2B.SMK') and
            FileExists(DirPath + '\DATA\WILL3A.SMK') and
            FileExists(DirPath + '\DATA\WILL3B.SMK') and
            FileExists(DirPath + '\DATA\WILL4A.SMK') and
            FileExists(DirPath + '\DATA\WILL4B.SMK');
end;

function CheckSha1SumsOfDirectory(DirPath: string): Boolean;
begin
  Result := (GetSHA1OfFile(DirPath + '\WIN95\SC2K\D2HTOOLS.DLL') = '11c50069846d9e03c3d3fcf13f438da44f4efe3d') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\DEFAULT.SC2') = 'c6f06305426029dcc85d7f55d507302181038f41') and
            ((GetSHA1OfFile(DirPath + '\WIN95\SC2K\README.WRI') = 'c537926d04eb81e0411c944594358f24996322c5')
              or ((GetSHA1OfFile(DirPath + '\WIN95\SC2K\README.WRI') = 'c2e52f9b091440516c88878dabaad18f72ab94d7'))) and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SC2USA.GID') = 'af5f290b2f3ac501ec77a4c8709005e7f465eed5') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SC2USA.HLP') = 'bbd46c14f9303f6422d02c47a149cdbe23b2a1aa') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURK.HLP') = '12969f406178af224313b15aa5263a69c84858b9') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKUSA.DLL') = 'e9fe25023cd889d4cc3e2f7dd2be699a0e3f9bb2') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SIMCITY.EXE') = 'e012421687c5d2bbde5de432afd0729bf0dcb2cb') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SMACKW32.DLL') = 'bf1d1f6185b5ea51d0956b34feb5c1c509a2c59a') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SVERSION.INF') = 'a43dba890484bf2f6ac9c978f7fb47ebd7027028') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\TILES.DB') = '351985362da6f6464852ea80ed4cfd73c2d0e89f') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\VERSION.INF') = '432ef80037c5ae9944e844a7dae574274a00b543') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\WINSCURK.EXE') = '0769ec27ce6f23905e298d94a45ab4a85153cedb') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\128.BMP') = 'bb538a3b7405d0ed283f1807769b64dc8737ac90') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\400.BMP') = 'b5329889822d6ce364d2e843f53be5ca5fe3acdd') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\401.BMP') = '8c15ea96a60d340e1b0d329b8e06db285be82857') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\402.BMP') = '917b0e464ad99e88737b0210c84246412922a311') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\403.BMP') = '20858f7b2f14eb97f5656ed8f97014b19e466fac') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\404.BMP') = '1233a3671efeddf387665d4a29313fd0abe75285') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\405.BMP') = 'aeca7a38e31739dfc81610b58ab168fe443ac4b8') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\406.BMP') = '9cebec5290072de55d5953b375127c4c9959c2fc') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\407.BMP') = '8d41ba220642e266499f4af18a0ce10be87876f4') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\408.BMP') = 'c4b979640b659cb25c94bf776895dd779c699ee3') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\409.BMP') = '609561d1e1e9193f679a6863a35a4ef05a56499b') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\410.BMP') = '235b5c77c0b80dd3740557fd6f29f6dc4e0defb8') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\411.BMP') = '1a164116c454baa37260256c228d16c1fbf5e902') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\2000WIN.BMP') = '396f6d90b7e426ce47ace6f1d64e8d00fe236cb1') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\ABOUT.BMP') = '89e7c3378bd570d1d292e4fbe1d664c90c51797a') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\ADVISBTN.BMP') = '43f76877ba9d6ea3ae0c1ece0e38fbcd69ad2dd9') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\BOOKBTN.BMP') = '97302af378a131a0c2cb01c46a6805a8e435fbf5') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\NEIGHBOR.BMP') = '22286f672cb98131dba313e603a4073f05e836e4') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\PAL_LOAD.BMP') = '792faf738244c94d480b5292e400bba49bf164f0') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\PAL_MAC.BMP') = '2a5cc37ef16060c55db845cfa4895c976edb8425') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\PAL_MSTR.BMP') = 'fb9aae33789179015b4a7f5e777061616072df03') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\PAL_STTC.BMP') = 'b8acc72d12548947cdecf279da8ec19dfce978ad') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\PRESNTS.BMP') = '9bf7bad7e10f99dec6890585773397ca94f874db') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\TERRAIN.BMP') = 'd7530b3d7eb6e73140a069d2ba68bb9ef82a1925') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\WILL0D.BMP') = 'e946661a5c6962cc722b467997fc6aa927e5792e') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\WILL0U.BMP') = 'd12843df2f77ef829b5c2848e60ab7258f7d58ed') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\WILL1D.BMP') = '04b13e0e6f373a5e9f6e88aef001580a1e8af40c') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\WILL1U.BMP') = '6a999905c1f7cb442daca735bf156b10641efded') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\WILL2D.BMP') = '0a818f7867714d1b8cc998bed86f9db3ae8aafb2') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\WILL2U.BMP') = 'e7a678141c7e782dbe74f9e28011cbebeb944184') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\WILL3D.BMP') = 'c3ed7451c6ba0c58fe9c5f02bad5d8cb7f8909f3') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\WILL3U.BMP') = '766bd3277dde66266ef25056299afd41069c7e51') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\WILL4D.BMP') = '2295a47c8dfe51fb956e91bdf52dff5afead5586') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\BITMAPS\WILL4U.BMP') = '8d363e61de08924e7ab8601dd26b0c1aaf6a02f0') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\349ARCO.SC2') = '539b43716e2e4b4be9b25d432739da8744a94fba') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\AMAZINGC.SC2') = 'c9d84b0c34aa07a42f96fdd8994456a11ef50e29') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\ARCOONE.SC2') = 'e7f0e2f95ed8e9ea09a1bda0b64e428909377417') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\BABAR.SC2') = '6411342cda7dbaa28fb4faf0a5a05f28bb77bf0d') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\BAYVIEW.SC2') = '071d9a0ca68ca66b54a5cb2132b93982995d5868') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\BIGGESTC.SC2') = 'ab5c809695f09faa654dabd1a1768b1ff3812beb') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\BRIDGEPO.SC2') = '9fee723a128e2ca6c5938acb1019779801645c77') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\CAPE.SC2') = '8851748ced4d7503b681470620a35ee3e3a0a83e') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\CAPEQUES.SC2') = '3c32e02a88f268cdefd4bd7171c5f343736fd42c') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\CENTERVL.SC2') = '6d8445b06ec16f43ed6eded7bc8406b14d426db1') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\CERES.SC2') = '29271d821aa1c39b9cf1218f4f01e08ed6264723') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\CITIES.WRI') = '894969e574539eb690cecbd6d4caa69d66d8b1e7') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\EGYPTFAL.SC2') = 'cba629e822e612ad3fb46cac2f4a0b5a6b853c9c') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\EM.SC2') = '6f06549ec48a69d23f99e8f5a8a084bd8e9e5f13') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\FLARANGE.SC2') = '51df2d7e191356382c7cd9f64efc293bfeb634fb') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\FLOATING.SC2') = '11560083856677ab63c8837f97cd45c0c3e03de7') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\FOURCITI.SC2') = 'd68d1859bb44895e1fefc5b9abdd6c55f5191fd7') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\GREENLAN.SC2') = '39c8de811fd0c6c464c58128f69456975d909ead') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\HALENAPT.SC2') = '15a71fe5542e6be4c9ddf93fcc3ca274b7e6b467') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\HAPPYGUY.SC2') = 'ed8b66261afa7b33dc545af768d00abdd83f6729') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\HAPPYLND.SC2') = '16d95d45b8d902f030bdc3dc1856f10d45288b6b') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\HAWAII.SC2') = 'de709f046fd69e64a3a43aea0c60b5dbd85a1968') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\HERMAN.SC2') = 'acc0fa0bebfea9fd4c1a81039d6114da34a7c1da') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\HI_LOH2O.SC2') = '5d41ffd000fc020f7c2f53fffc86562730ef370f') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\HILTON.SC2') = 'b617943af2f21197a7508d2e4c0fb29c5e8a6ec2') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\HIPPIVIL.SC2') = '83278618915e13a9ca77b05829bd02270b381ba0') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\ISLAND.SC2') = '8f38feded992dacffd9896263216eae65bc148b6') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\JUNETOWN.SC2') = '6091dda66336eeb829de3ba586654854c90bf775') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\KATVILLE.SC2') = '635a3427389358c93a5af021b3200a4cd4e9572a') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\KEENLAND.SC2') = '3cc26f6ee591d1ca8794c4b6e94f6ca77c0c91d0') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\KEITH.SC2') = '497564e1757b435917396bf922db4370b7c17848') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\LAKELAND.SC2') = '3096e4045626889bfa50dd510761680d5b4f6777') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\LAKEVIEW.SC2') = 'b8bb2d154a33a4678b8c778787407f12ae4d223c') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\LASVEGAS.SC2') = '7b8d9e44cc0049e87008dc57c1b7f12abf525942') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\LINCOLN.SC2') = '1bc8835671a1bcc0e4dd2f63bf120da239806add') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\LOKEVILL.SC2') = '03fbba7bfac13cff3c05e0ca188c702f20bf3ee7') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\LONDON.SC2') = '5bb2b63ba9659c2e6c57dacc7ae7e9915d7a0125') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\MALTRON.SC2') = 'bf809760adb01b38c9e1b7075d2809effcbc2cef') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\MAXISLND.SC2') = '2044f978ed2e75f71f652041e36c443b666cb21a') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\MUNS_ISL.SC2') = '24552d5e9f0a20c9279e7c7880f8d5e93d4861be') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\MXBURG.SC2') = 'ac18f35e1677182ca03f97f6292d413e4e8b37a6') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\NEWMONRO.SC2') = '09b02c2c981fabcd45a0c245959c63d1f594ad1e') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\NEWORLEA.SC2') = '869c63822b0334d287280b575a8e57af511566f2') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\NYC.SC2') = 'd746714c80db9828df3b3c891f69855b23541149') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\PARADE.SC2') = '138fd23a19706605d0977d86437017ecb2c12d65') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\PARIS.SC2') = '9d8f53aaf77294b4d8251321277c4843c7e9c4f0') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\PETER2.SC2') = '15b730f2c534805be8587fc5c82ea6aa0e0957c1') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\PETER3.SC2') = '4cf2acbb3b04d33e77fd818c6c0830791a453657') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\RETREAT.SC2') = '743c8f2aaccce4bc2105a6a4d7e1c38e4bcde25a') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\RIO.SC2') = '23aa1a1adb3b3ecf40d916c6bccf402ff88301cd') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\RIVER5.SC2') = '5dd583445e43b69d24da5add2132cda9b115407e') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\ROME.SC2') = '2654c051474d2583ec28dfe4d9aa233776e52995') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\SAM_STOW.SC2') = '7690dfdb0f7c1df6c9b3be532daebe014dc4fb6e') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\SIMCITY.SC2') = '4c59d7ec3db08c606a324fc2222ad44e62913d23') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\SPIRALOP.SC2') = 'a20407c27252980c44fb3ba4894891a7a2bc7f39') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\STARTER.SC2') = '8160e7f873aa095648f8a8fe830ef58a9bf59416') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\STCHRISC.SC2') = '23ef6f81f7ba88a87028643ddcb7e7fb3b826abb') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\SYDNEY.SC2') = '076e2c8c9375218a772c2644d24291daaf2304df') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\SYMCITY.SC2') = '229b2be7120e4073ba2ecbeea0d0d466eeac346d') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\THEBAHAM.SC2') = '36cf3f9c4fd830211c3d6a366024661346b16102') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\TOKYO.SC2') = 'b081242bd993a88fc63b98b92d6cf7f0a1d6ee8f') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\TOMG_B1.SC2') = 'cc126b6c97c1a8d3d26828980c6c97f67ab0678a') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\TOMG_B2.SC2') = '46abef179c2be7ff1b55fc642242db4d716e396e') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\TOMG_B3.SC2') = 'c4febf8659fc23a95ad42cf2f2d783104c490475') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\TOMG_B4.SC2') = 'eb88c528de4d77e7211af27aecb4277e30337f9c') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\TOMG_C1.SC2') = 'a3e352b18f93f31a618971d2530a4369f057cb56') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\TOMG_C2.SC2') = '53645691658ba85e10ec2dbfb4de009ca692af6c') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\TOMG_C3.SC2') = '14a12eeff9e7b73dae813a43849d3618aa5fdef6') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\TOMG_C4.SC2') = '5d9ff4fe832e0d5aad5a65d7226b1f904d3a47f7') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\TORONTO.SC2') = '53beed7aaf08bfc21df6582af5735d8f193e1811') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\UTOPIA.SC2') = '9d42f1cb5d5fb6a6008b137eaf7e5af9cb95680e') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\VENICE.SC2') = '6b7c31b6f2e00cee5259d4d3c64b5f4ff8ff4d07') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\VIRTUALV.SC2') = '974025e693c782a108e40a0cde78ad87b79e91a2') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\VOLCANO.SC2') = '5af4b6d64fb76e8b46ecc9cfc9d5da719000cfec') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\CITIES\ZUTHERLA.SC2') = '19737f9c3ce3751ad5d09e6888a077877cd544d5') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\DATA\DATA_USA.DAT') = '8f0983fb5d4ce1fb0dfcafc1a0ff1197ba72a399') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\DATA\DATA_USA.IDX') = '708cae5e8fc8310ec5f1e3c8a06980d26fdbd085') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\DATA\LARGE.DAT') = 'e1ad2897ced03a3cc07fe56752fc5a12f2329872') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\DATA\SMALLMED.DAT') = '91e5e202aebb52d0ae637b405885bb430ad81b68') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\DATA\SPECIAL.DAT') = '5f08275d1e9091ba640a8fd03187c3434c54566b') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\DATA\TEXT_USA.DAT') = '3034bed8f6d06078c88c902ae98b52de24ea7846') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\DATA\TEXT_USA.IDX') = '9043333c4da84d71bbf548e2495423fb259c6ae6') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCENARIO\ATLANTA.SCN') = '5d3b8fe6ec51f9831afec01d876dc4e52a8ac3ad') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCENARIO\BARCELON.SCN') = 'd26c4e9724a82b4f29f0d420c8e2f82642cad664') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCENARIO\CHARLEST.SCN') = '54d1709cea3c9dd80cd6c44114bf4f972fdb89cf') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCENARIO\CHICAGO.SCN') = '3c3e0da7a8f8f7db39b594ad62003d431c197437') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCENARIO\DAVENPOR.SCN') = '8eec41ce2e08ad00eaaf75e289d732a0f3557253') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCENARIO\DULLSVIL.SCN') = '476041a8cd34db6a225560ce2d94d3ff691bd6c3') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCENARIO\FLINT.SCN') = '999fbf4cf36072b63c142a55150b59fc5b943491') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCENARIO\HOLLYWOO.SCN') = 'cf209021ab499c7b1ee6f19338aaa3adb24fd2cd') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCENARIO\HOMESTEA.SCN') = '5841690b65e6ba8eb6262c99d93ac318e665b0cd') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCENARIO\LASVEGAS.SCN') = '91cd141b141daba976901ba3c9f3a54d879ba685') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCENARIO\MALIBU.SCN') = '68919d7b3dfbf9d4263944fae200d6c4963bd258') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCENARIO\MANHATTA.SCN') = '085727d722b9693dcd4123ddafb7d834c7eef7b5') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCENARIO\OAKLAND.SCN') = 'f633586ae1c55d56a410f3fd875344ff4fcdc24a') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCENARIO\PARIS.SCN') = '508841507413c98374d2de864e9699a0a58a5f73') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCENARIO\PORTLAND.SCN') = '6e940d7ea438e20868465fe3b36b73f15a1391af') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCENARIO\SANFRANC.SCN') = '7b6407e4f1a67e1d996a0692d37b3e11b41536b7') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCENARIO\SILICONV.SCN') = 'b7aca636b77b963da81eded9987f8fff2a2fdf13') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCENARIO\WASHINGT.SCN') = '3d2bb50270ca2aa5dc59c6c011abc4e02cd50e6a') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\1900.MIF') = '49b9fdd9b0e8ba616212231900975576dc187364') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\2050.MIF') = 'c850e30ad8de15e070e112bdc912990573c26459') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\ARCOLB1.MIF') = '5520b0556dc2d194fdf327bc5269aee6698ec368') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\BARCELON.MIF') = 'b13dd543041af9d744acc2bdae950bd19914ee98') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\BIGBEN.MIF') = '48d909a6cf4fd3cb7badeaab82b6b30d8715b8e0') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\BIGBEN.PCX') = '86ce2e965f55fd035d630a5f61fe96d251ad1952') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\CITYHAL.MIF') = '8306f31cbf7b01f42c68cc2313b9199c5b314ce5') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\COLLEGE.MIF') = '073b053b0d0ae6af2251439eebae581ad784ce60') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\CONTEST.MIF') = '5414b0d7284205f428194a63aab9764144ab720d') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\CTYHALL.PCX') = '87601066bb8d2b5ce67be4dd0bd01835ade08a97') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\DINOPARK.MIF') = '38a7fb037da79b9039b69f86447789942e4953f3') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\EIFFLE.MIF') = '2c57f252906891087faa44adfe466c90373ea136') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\ELECLINE.MIF') = '866ddaf3af7ef8112a2b7f394b1700c238993874') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\FLAGCHOP.MIF') = '79b738d60065619d637aac5d69dcaec61435d926') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\FUTURE.MIF') = 'f44aa242b5d05c89142a7d89747b434371a8d11a') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\GOLFGOOD.MIF') = 'fc278ac4ce4d13e1610aaa3afeefcf4bbd2e6130') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\HYDRO.MIF') = '2c0f4170b82ad8200741b9182d89f1ab8d137698') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\HYDRO1.PCX') = '09f65c716a5963bd1e5eb565f323050526f74724') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\HYDRO2.PCX') = '56c99e6b761d8cac90d2d3b9185134979739ef86') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\LONDON.MIF') = '90945179e51d01a5bf2467005225a6a197d2a94a') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\MCONDO1.MIF') = 'ebe7ca6b1aa26d8497758b856650fd083fd5a70f') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\MCONDO2.MIF') = 'dd77241c619b46cfe3fc763d85fa5fb234df059a') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\ORIGINAL.MIF') = 'bd411491501931f60dc481c5ef67faab58d2c3b8') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\PARIS.MIF') = 'e6f841e8c117ad9d367a63e0ecdaf08544b96ecd') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\POLICE2.MIF') = '2a44fc191f6c1bc597ecba25c7fa0b69b610563d') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\PWRTREE.MIF') = '88d0b6752e107d67c9274db8e1ea9909392426f7') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\RIO.MIF') = 'b3e3a50f5fabcabafaa4b6f9d8890343d105985e') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\ROME.MIF') = '5a6e9718706adaff4a97108d2665b8059765933c') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\SAMPLE1.PCX') = '6184a901bc37dc52cc33ef36e9a85c386f3370ce') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\SAMPLE2.PCX') = 'f2864e39134986d5a0934508988032baea492a65') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\SMHOUSE.PCX') = 'b89d4e00c4751608eaf78c7a7f7cd3f98daa50e4') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\SYDNEY.MIF') = '677130d193198ca8f6e8def611280594678ea889') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\THINGIG.MIF') = 'b3899ca4ec5892adf8f5265c8dc139b63740ecd9') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\TILESET1.MIF') = 'e0b400153a7b4a89a12c83fe360421fd1339fc92') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\TOKYO.MIF') = '2cf49ac01d6dedd2b6c146367e4d9cc8ad687787') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\TORONTO.MIF') = '262f2af3680843d2bf67b68dfadfd33efa44a9ec') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\UNVIR.PCX') = 'ec7e4b694cb7119ec41a06372cee38a4061782d6') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\VEGAS.MIF') = '4407212bd5fedb7cccc09e26557658cd88030634') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SCURKART\VENICE.MIF') = '266ebb9fb1220f3f78ef00cf43ff40238ed56f32') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\10000.MID') = 'ee635d51de7c99237acef8fd3001f0038546d3e4') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\10001.MID') = '14400746cddd980ae6d5ff0487b98a7bf53a7603') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\10002.MID') = '579a775f7f0135e7e96877ca18fe660959667115') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\10003.MID') = '90aec2bcbb7d6d8544266478bb9a108edebe466d') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\10004.MID') = 'c34fa82657d6486175d6eda104095905414bfd2c') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\10005.MID') = '4890f078212e13734c85b98276946c72c88ab8e6') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\10006.MID') = '930a68099fbab3f1213876d8d1fefda96f34522c') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\10007.MID') = '27fab9e57a439e58691830d388acc5ff6241fead') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\10008.MID') = 'c8ed3bc7f9cd33e590986144d911bcfed561b24a') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\10009.MID') = 'c18225ef668a057ce587d000c45294b970499dee') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\10010.MID') = 'eef18540ed245e1e0112ce303b626bf804a0f307') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\10011.MID') = 'd9ecf7d108323217806c79669b705bb9e8e763c0') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\10012.MID') = 'dc6a931445b92eaf020c76c3a9d3cb1b9b333981') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\10013.MID') = '7e9cd29b5c7b9b4f0bf43851f1759abb9a1084db') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\10014.MID') = '724d59c5586c659b6f3fbb9de9c7fd5d70462211') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\10015.MID') = '6b94a5ee71af6208ed7b69a3f4626f9d5f6b6291') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\10016.MID') = '4cb500b3a9740574b3b7c9fa4a9b6a20a55bae83') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\10017.MID') = '80cbc66e9bfa53dba760d4c80de880602da4577b') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\10018.MID') = 'c6819f398fbd149552b2e35f403dc26c8cd0318f') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\500.WAV') = '44ab066433383c4a62fc9f9ea82012b5ab0ec2f5') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\501.WAV') = '9ac476dc1bf5b773e8661ab7cbe47fa8f9c246bd') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\502.WAV') = '7eb906dfa70ab23e628d617374a1c1ea224add42') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\503.WAV') = '1d9c42b83cf3ca99610bed65cfe0b8a3182a1a03') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\504.WAV') = '99bd8defcbc3e65f8c637452a57f422bb3820516') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\505.WAV') = '7be1325ad70a3ab66bdcc9d45ad66ca2e26b908b') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\506.WAV') = '8a5547b0f937ab904039166e03ec616f4afcdd80') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\507.WAV') = '534aad0aca1de44f29afef2198f1e71869c71865') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\508.WAV') = '9aabf874a30912d4ffa92fa167b43ba0a480742d') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\509.WAV') = 'd8972ef94328163926842f2da8a0c0163e718017') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\510.WAV') = '2fadd67a8c4abec0fd24bbb85e30bd0ff0fba2b2') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\511.WAV') = '56843a6f0cee9109b8dd6249e37d5ed523e0f2c6') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\512.WAV') = '1b80fe6a3587a0cef4cf02300c508e9a03d7941d') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\513.WAV') = '0a23cc756fce1c00826b6bf401b274a87927a920') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\514.WAV') = '46d57df5d4a1564976f69dbc451f220b47dcd7fd') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\515.WAV') = '482f7dcd0018ce21b410eca2aab2d951e5b0f164') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\516.WAV') = '645196100cef9ced462e4a433e600503e32bf798') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\517.WAV') = '786f47f8a11f5e33db9dfcd6c33b4c1d2f7bd2eb') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\518.WAV') = '8c1412280c7d4402202ec784dee8f69465564eb9') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\519.WAV') = '98269e359293d5f707177101574b442a8ab96485') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\520.WAV') = '6154313872c63a3f19232c26a9309fe139908f70') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\521.WAV') = '4c7b5611113d0c81111d16259e6b33a996f10fcd') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\522.WAV') = '3ce1cb2300559cf70b896561f405f171d69c5ba9') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\523.WAV') = 'd05c04fc86fc9f35146a29b42f54dcc73dde1dcf') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\524.WAV') = '3f47d99f861451811e33870b2cbc9f0520a1ddf7') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\525.WAV') = 'e9f96694eabb0767962d875b3ee929e6a62ed879') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\526.WAV') = 'b6b950bfc5b2a9ecfe5872bb384364ad475fe1cc') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\527.WAV') = '864b9d963416bcce4d4cdf4d2226ece3e45a4e08') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\528.WAV') = '9aabf874a30912d4ffa92fa167b43ba0a480742d') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\529.WAV') = 'd46682510961ae3cd68b424d0837dcec79433560') and
            (GetSHA1OfFile(DirPath + '\WIN95\SC2K\SOUNDS\530.WAV') = '065916e89376383032be8a129b8461979dd14972') and
            (GetSHA1OfFile(DirPath + '\DATA\INTROA.SMK') = 'f89961012b8d793394eca9ce907a2b14082c25f0') and
            (GetSHA1OfFile(DirPath + '\DATA\INTROB.SMK') = 'e9230b230054e5eccf192fefc3da707bab188b02') and
            (GetSHA1OfFile(DirPath + '\DATA\WILL1A.SMK') = 'df98e5957a43dcd645569a0ba7ee49af99dd3bd3') and
            (GetSHA1OfFile(DirPath + '\DATA\WILL1B.SMK') = '76a14afd999714a2b866cc963f1da068875b2006') and
            (GetSHA1OfFile(DirPath + '\DATA\WILL2A.SMK') = '143ba9809688f4713595775a9a0e27e803cb9fc6') and
            (GetSHA1OfFile(DirPath + '\DATA\WILL2B.SMK') = 'a5c691d9223d2f1540c8fa0ef2c89fe9256cff92') and
            (GetSHA1OfFile(DirPath + '\DATA\WILL3A.SMK') = '10078224ea37fdf0dbf19dcaaaf628915bd68cec') and
            (GetSHA1OfFile(DirPath + '\DATA\WILL3B.SMK') = '76b84e1c4ba8f883cce9dedcabec2be02417ac90') and
            (GetSHA1OfFile(DirPath + '\DATA\WILL4A.SMK') = '94fa7d0d6c1dcc6eab3819c38c4608e91687fc56') and
            (GetSHA1OfFile(DirPath + '\DATA\WILL4B.SMK') = '5d2bce2c2a557490582a9d3a10e6615339290920');
end;

function CheckDiscStructureForFiles(DirPath: string): Boolean;
begin
  Result := CheckFileExistanceInDirectory(DirPath) and CheckSha1SumsOfDirectory(DirPath);
end;

procedure SetFileSource;
begin
  if not CheckDiscStructureForFiles('A:') xor
         CheckDiscStructureForFiles('B:') xor
         CheckDiscStructureForFiles('C:') xor
         CheckDiscStructureForFiles('D:') xor
         CheckDiscStructureForFiles('E:') xor
         CheckDiscStructureForFiles('F:') xor
         CheckDiscStructureForFiles('G:') xor
         CheckDiscStructureForFiles('H:') xor
         CheckDiscStructureForFiles('I:') xor
         CheckDiscStructureForFiles('J:') xor
         CheckDiscStructureForFiles('K:') xor
         CheckDiscStructureForFiles('L:') xor
         CheckDiscStructureForFiles('M:') xor
         CheckDiscStructureForFiles('N:') xor
         CheckDiscStructureForFiles('O:') xor
         CheckDiscStructureForFiles('P:') xor
         CheckDiscStructureForFiles('Q:') xor
         CheckDiscStructureForFiles('R:') xor
         CheckDiscStructureForFiles('S:') xor
         CheckDiscStructureForFiles('T:') xor
         CheckDiscStructureForFiles('U:') xor
         CheckDiscStructureForFiles('V:') xor
         CheckDiscStructureForFiles('W:') xor
         CheckDiscStructureForFiles('X:') xor
         CheckDiscStructureForFiles('Y:') xor
         CheckDiscStructureForFiles('Z:') xor
         CheckDiscStructureForFiles('Z:\Volumes\SC2KSEPC') then
         Repeat
           if MsgBox('Please insert the Sim City 2000 Special Edition CD.', mbInformation, MB_OKCANCEL) = IDCANCEL then
           ExitProcess(0);
         Until  CheckDiscStructureForFiles('A:') xor
                CheckDiscStructureForFiles('B:') xor
                CheckDiscStructureForFiles('C:') xor
                CheckDiscStructureForFiles('D:') xor
                CheckDiscStructureForFiles('E:') xor
                CheckDiscStructureForFiles('F:') xor
                CheckDiscStructureForFiles('G:') xor
                CheckDiscStructureForFiles('H:') xor
                CheckDiscStructureForFiles('I:') xor
                CheckDiscStructureForFiles('J:') xor
                CheckDiscStructureForFiles('K:') xor
                CheckDiscStructureForFiles('L:') xor
                CheckDiscStructureForFiles('M:') xor
                CheckDiscStructureForFiles('N:') xor
                CheckDiscStructureForFiles('O:') xor
                CheckDiscStructureForFiles('P:') xor
                CheckDiscStructureForFiles('Q:') xor
                CheckDiscStructureForFiles('R:') xor
                CheckDiscStructureForFiles('S:') xor
                CheckDiscStructureForFiles('T:') xor
                CheckDiscStructureForFiles('U:') xor
                CheckDiscStructureForFiles('V:') xor
                CheckDiscStructureForFiles('W:') xor
                CheckDiscStructureForFiles('X:') xor
                CheckDiscStructureForFiles('Y:') xor
                CheckDiscStructureForFiles('Z:') xor
                CheckDiscStructureForFiles('Z:\Volumes\SC2KSEPC') = true;

  if CheckDiscStructureForFiles('A:') then
  begin
    FileSource := 'A:';
    Exit;
  end;

  if CheckDiscStructureForFiles('B:') then
  begin
    FileSource := 'B:';
    Exit;
  end;

  if CheckDiscStructureForFiles('C:') then
  begin
    FileSource := 'C:';
    Exit;
  end;

  if CheckDiscStructureForFiles('D:') then
  begin
    FileSource := 'D:';
    Exit;
  end;

  if CheckDiscStructureForFiles('E:') then
  begin
    FileSource := 'E:';
    Exit;
  end;

  if CheckDiscStructureForFiles('F:') then
  begin
    FileSource := 'F:';
    Exit;
  end;

  if CheckDiscStructureForFiles('G:') then
  begin
    FileSource := 'G:';
    Exit;
  end;

  if CheckDiscStructureForFiles('H:') then
  begin
    FileSource := 'H:';
    Exit;
  end;

  if CheckDiscStructureForFiles('I:') then
  begin
    FileSource := 'I:';
    Exit;
  end;

  if CheckDiscStructureForFiles('J:') then
  begin
    FileSource := 'J:';
    Exit;
  end;

  if CheckDiscStructureForFiles('K:') then
  begin
    FileSource := 'K:';
    Exit;
  end;

  if CheckDiscStructureForFiles('L:') then
  begin
    FileSource := 'L:';
    Exit;
  end;

  if CheckDiscStructureForFiles('M:') then
  begin
    FileSource := 'M:';
    Exit;
  end;

  if CheckDiscStructureForFiles('N:') then
  begin
    FileSource := 'N:';
    Exit;
  end;

  if CheckDiscStructureForFiles('O:') then
  begin
    FileSource := 'O:';
    Exit;
  end;

  if CheckDiscStructureForFiles('P:') then
  begin
    FileSource := 'P:';
    Exit;
  end;

  if CheckDiscStructureForFiles('Q:') then
  begin
    FileSource := 'Q:';
    Exit;
  end;

  if CheckDiscStructureForFiles('R:') then
  begin
    FileSource := 'R:';
    Exit;
  end;

  if CheckDiscStructureForFiles('S:') then
  begin
    FileSource := 'S:';
    Exit;
  end;

  if CheckDiscStructureForFiles('T:') then
  begin
    FileSource := 'T:';
    Exit;
  end;

  if CheckDiscStructureForFiles('U:') then
  begin
    FileSource := 'U:';
    Exit;
  end;

  if CheckDiscStructureForFiles('V:') then
  begin
    FileSource := 'V:';
    Exit;
  end;

  if CheckDiscStructureForFiles('W:') then
  begin
    FileSource := 'W:';
    Exit;
  end;

  if CheckDiscStructureForFiles('X:') then
  begin
    FileSource := 'X:';
    Exit;
  end;

  if CheckDiscStructureForFiles('Y:') then
  begin
    FileSource := 'Y:';
    Exit;
  end;

  if CheckDiscStructureForFiles('Z:') then
  begin
    FileSource := 'Z:';
    Exit;
  end;
end;

procedure InitializeWizard;
begin
  AddUserInfoPage;
  DownloadPage := CreateDownloadPage(SetupMessage(msgWizardPreparing), SetupMessage(msgPreparingDesc), @OnDownloadProgress);
  SetFileSource;
end;

function NextButtonClick(CurPageID: Integer): Boolean;
begin
  if (CurPageID = wpReady) then
  begin
    if (pos('fixes', WizardSelectedComponents(False)) <> 0) then
    begin
      DownloadPage.Clear;
      DownloadPage.Add('https://github.com/sc2kfix/sc2kfix/releases/latest/download/winmm.dll', 'winmm.dll', '');
      DownloadPage.Show;
      try
        try
          DownloadPage.Download;
          Result := True;
        except
          SuppressibleMsgBox(AddPeriod(GetExceptionMessage), mbCriticalError, MB_OK, IDOK);
          Result := False;
        end;
      finally
        DownloadPage.Hide;
      end;
    end;
      
    UserName := Copy(Trim(UserInfoPage.Values[0]), 1, 22);
    UserCompany := Copy(Trim(UserInfoPage.Values[1]), 1, 22);
  end else
  begin
      Result := True;
  end;
end;

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
  if CurUninstallStep = usPostUninstall then
  begin
    if RegKeyExists(HKEY_CURRENT_USER, 'Software\Maxis\SimCity 2000\WIN95\SC2Kfix') then
    begin
      RegDeleteKeyIncludingSubkeys(HKEY_CURRENT_USER, 'Software\Maxis\SimCity 2000\WIN95\SC2Kfix');
    end;

    if RegKeyExists(HKEY_CURRENT_USER, 'Software\Maxis\SimCity 2000') then
    begin
      RegDeleteKeyIfEmpty(HKEY_CURRENT_USER, 'Software\Maxis\SimCity 2000');
    end;
    
    if RegKeyExists(HKEY_CURRENT_USER, 'Software\Maxis') then
    begin
      RegDeleteKeyIfEmpty(HKEY_CURRENT_USER, 'Software\Maxis');
    end;
    
    if MsgBox('Do you want to delete your cities and SCURK data?', mbConfirmation, MB_YESNO or MB_DEFBUTTON2) = IDYES then
    begin
      DelTree(ExpandConstant('{userdocs}\SimCity 2000 Special Edition'), True, True, True);
    end;
  end;
end;