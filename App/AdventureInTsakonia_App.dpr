//Description: AdventureInTsakonia App
//Source: https://github.com/Zoomicon/AdventureInTsakonia_App (based on READCOM_App - https://github.com/Zoomicon/READCOM_App)
//Author: George Birbilis (https://zoomicon.com)

//Dependencies: see <DEPENDENCIES.md>

program AdventureInTsakonia_App;

   //for Windows resources added via Resources and Images (includes 'Default.readcom' startup story document)

  {$region 'Used units' ---------------------------------------------------------} //Note: D12.3 can't fold/expand regions in .dpr files
  {$R *.dres}

uses
  System.StartUpCopy,
  READCOM.App.Main,
  Zoomicon.Media.FMX.ModalFrame in 'modules\zoomicon.media.fmx.delphi\Source\Zoomicon.Media.FMX.ModalFrame.pas' {ModalFrame: TFrame},
  READCOM.Resources.Icons in 'modules\readcom.core.delphi\Source\Resources\READCOM.Resources.Icons.pas' {Icons: TDataModule},
  AdventureInTsakonia.Views.Dialogs.About in 'Views\Dialogs\AdventureInTsakonia.Views.Dialogs.About.pas' {AboutFrame: TFrame},
  AdventureInTsakonia.App.Messages in 'AdventureInTsakonia.App.Messages.pas',
  AdventureInTsakonia.App.Events in 'AdventureInTsakonia.App.Events.pas';

{$endregion}

  {$R *.res} //for Windows App metadata defined via Project Options (App Icon, Versioning Info)

begin
  Main(TAboutFrame, EventHandlers.StoryFormReady, EventHandlers.StoryLoaded);
end.

