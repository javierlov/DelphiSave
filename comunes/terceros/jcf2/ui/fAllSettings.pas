unit fAllSettings;

{ AFS 7 Sept 2K
  All settings on one form at once
}

{(*}
(*------------------------------------------------------------------------------
 Delphi Code formatter source code 

The Original Code is fAllSettings, released May 2003.
The Initial Developer of the Original Code is Anthony Steele. 
Portions created by Anthony Steele are Copyright (C) 1999-2000 Anthony Steele.
All Rights Reserved. 
Contributor(s): Anthony Steele. 

The contents of this file are subject to the Mozilla Public License Version 1.1
(the "License"). you may not use this file except in compliance with the License.
You may obtain a copy of the License at http://www.mozilla.org/NPL/

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either express or implied.
See the License for the specific language governing rights and limitations 
under the License.
------------------------------------------------------------------------------*)
{*)}

interface

uses
  { delphi }
  Windows, SysUtils, Classes, Controls, Forms,
  StdCtrls, Buttons, ExtCtrls, ComCtrls,
  { local }
  JCFSettings, frmBaseSettingsFrame;

type
  TFormAllSettings = class(TForm)
    tvFrames: TTreeView;
    pnlSet: TPanel;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    BitBtn1: TBitBtn;
    procedure tvFramesChange(Sender: TObject; Node: TTreeNode);
    procedure FormCreate(Sender: TObject);
    procedure bbOKClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbHelpClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
  private
    frLastFrame: TfrSettingsFrame;

    function GetTreeNodeByName(const psName: string): TTreeNode;

    procedure GetFrameForNode(const pcNode: TTreeNode);
    function GetCurrentFrame: TfrSettingsFrame;

    procedure RemoveAll(const pbSave: boolean);

  protected
    function GetFrameType(const psName: string): TSettingsFrameClass; virtual;

  public
    procedure Execute;
  end;


implementation

{$R *.DFM}

uses
  JcfRegistrySettings, JcfHelp,
  { contained frames }
  frFiles, frObfuscateSettings,
  frClarify, frClarifySpaces, frClarifyIndent,
  frClarifyReturns, frBlankLines,
  frClarifyLongLineBreaker, frClarifyBlocks, frClarifyAlign,
  frReplace,
  frReservedCapsSettings, frAnyCapsSettings, frUnitCaps,
  frUses, frBasicSettings, frPreProcessor, frComments;


type
  TFrameMapRecord = record
    FrameName: string;
    FrameClass: TsettingsFrameClass;
  end;

const
  FrameMap: array[0..17] of TFrameMapRecord = (
    (FrameName: 'Format file'; FrameClass: TfFiles),
    (FrameName: 'Obfuscate'; FrameClass: TfObfuscateSettings),
    (FrameName: 'Clarify'; FrameClass: TfClarify),
    (FrameName: 'Spaces'; FrameClass: TfClarifySpaces),
    (FrameName: 'Indentation'; FrameClass: TfClarifyIndent),
    (FrameName: 'Long lines'; FrameClass: TfClarifyLongLineBreaker),
    (FrameName: 'Returns'; FrameClass: TfClarifyReturns),
    (FrameName: 'Blank lines'; FrameClass: TfBlankLines),
    (FrameName: 'Blocks'; FrameClass: TfClarifyBlocks),
    (FrameName: 'Align'; FrameClass: TfClarifyAlign),
    (FrameName: 'Object Pascal'; FrameClass: TfrReservedCapsSettings),
    (FrameName: 'Any Word'; FrameClass: TfrAnyCapsSettings),
    (FrameName: 'Unit Name'; FrameClass: TfrUnitNameCaps),
    (FrameName: 'Find and replace'; FrameClass: TfReplace),
    (FrameName: 'Uses'; FrameClass: TfUses),
    (FrameName: 'Basic'; FrameClass: TfrBasic),
    (FrameName: 'PreProcessor'; FrameClass: TfPreProcessor),
    (FrameName: 'Comments'; FrameClass: TfComments)
    );

{ TFormAllSettings }

procedure TFormAllSettings.Execute;
var
  lcNode: TTreeNode;
begin
  tvFrames.FullExpand;

  lcNode := GetTreeNodeByName(GetRegSettings.LastSettingsPage);
  if lcNode <> nil then
    lcNode.Selected := True;

  ShowModal;
end;

procedure TFormAllSettings.GetFrameForNode(const pcNode: TTreeNode);
var
  lcType: TSettingsFrameClass;
  lf:     TfrSettingsFrame;
begin
  if pcNode.Data <> nil then
    exit;

  lcType := GetFrameType(pcNode.Text);
  if lcType = nil then
    exit;

  lf := lcType.Create(self);

  { read }
  lf.Read;

  { show }
  lf.Parent := pnlSet;
  lf.Left   := 0;
  lf.Top    := 0;
  lf.Width  := pnlSet.ClientWidth;
  lf.Height := pnlSet.ClientHeight;

  pcNode.Data := lf;
end;

function TFormAllSettings.GetFrameType(const psName: string): TsettingsFrameClass;
var
  liLoop: integer;
begin
  Result := nil;

  // find the frame is the data?
  for liLoop := Low(FrameMap) to High(FrameMap) do
  begin
    if AnsiSameText(psName, FrameMap[liLoop].FrameName) then
    begin
      Result := FrameMap[liLoop].FrameClass;
      break;
    end;
  end;
end;

procedure TFormAllSettings.tvFramesChange(Sender: TObject; Node: TTreeNode);
var
  lf: TfrSettingsFrame;
begin
  GetFrameForNode(Node);

  if frLastFrame <> nil then
    frLastFrame.Visible := False;

  if Node.Data = nil then
    exit;

  lf := TfrSettingsFrame(Node.Data);
  lf.Visible := True;
  frLastFrame := lf;
end;

procedure TFormAllSettings.FormCreate(Sender: TObject);
begin
  frLastFrame := nil;
end;

procedure TFormAllSettings.bbOKClick(Sender: TObject);
begin
  { save settings }
  RemoveAll(True);

  { settings are now in need of saving }
  FormatSettings.Dirty := True;
  { check consistency of settings }
  FormatSettings.MakeConsistent;

  Close;
end;

procedure TFormAllSettings.bbCancelClick(Sender: TObject);
begin
  RemoveAll(False);
  Close;
end;

procedure TFormAllSettings.RemoveAll(const pbSave: boolean);
var
  liLoop: integer;
  lcItem: TTreeNode;
  lf:     TfrSettingsFrame;
begin
  { retrieve frames from the tree nodes and save them }
  for liLoop := 0 to tvFrames.Items.Count - 1 do
  begin
    lcItem := tvFrames.Items[liLoop];
    if lcItem.Data <> nil then
    begin
      lf := lcItem.Data;
      lcItem.Data := nil;

      if pbSave then
        lf.Write;

      lf.Free;
    end;
  end;
end;

function TFormAllSettings.GetTreeNodeByName(const psName: string): TTreeNode;
var
  liLoop: integer;
  lcNode: TTreeNode;
begin
  Result := nil;
  if psName = '' then
    exit;

  for liLoop := 0 to tvFrames.Items.Count - 1 do
  begin
    lcNode := tvFrames.Items[liLoop];
    if AnsiSameText(lcNode.Text, psName) then
    begin
      Result := lcNode;
      break;
    end;
  end;
end;

function TFormAllSettings.GetCurrentFrame: TfrSettingsFrame;
begin
  Result := nil;

  if tvFrames.Selected = nil then
    exit;

  Result := tvFrames.Selected.Data;
end;


procedure TFormAllSettings.bbHelpClick(Sender: TObject);
var
  lcFrame: TfrSettingsFrame;
begin
  lcFrame := GetCurrentFrame;
  if lcFrame = nil then
  begin
    Application.HelpContext(HELP_MAIN);
  end
  else
    lcFrame.ShowContextHelp;
end;

procedure TFormAllSettings.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  { save the last selected node }
  if tvFrames.Selected <> nil then
    GetRegSettings.LastSettingsPage := tvFrames.Selected.Text;
end;

procedure TFormAllSettings.FormKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    bbHelpClick(nil);
end;

end.
