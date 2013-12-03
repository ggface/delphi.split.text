unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Grids;

type
  TMainForm = class(TForm)
    sgTextAfterSplit: TStringGrid;
    Label1: TLabel;
    UpDown1: TUpDown;
    eStringLength: TEdit;
    Label2: TLabel;
    Memo: TMemo;
    lbSmbCount: TLabel;
    procedure MemoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    private
    procedure UpdateState;
  end;

const
  PREFIX_SMB_COUNT = 'Длина текста (символы): ';
var
  MainForm: TMainForm;

implementation

{$R *.dfm} 

procedure TMainForm.FormShow(Sender: TObject);
begin
  UpdateState;
end;

procedure TMainForm.MemoChange(Sender: TObject);
begin
  UpdateState;
end;

procedure TMainForm.UpdateState;
begin
  lbSmbCount.Caption := PREFIX_SMB_COUNT + IntToStr(Length(Memo.Lines.Text));
end;

end.
