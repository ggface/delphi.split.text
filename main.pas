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
    procedure UpdateGrid;
    function GetList(text: string; length: integer):TStringList;
  end;

const
  PREFIX_SMB_COUNT = 'Длина текста (символы): ';
var
  MainForm: TMainForm;

implementation

uses glIteratorGrid;

{$R *.dfm}

procedure TMainForm.FormShow(Sender: TObject);
begin
  UpdateState;
end;

function TMainForm.GetList;
var
  s: string;
begin
  result := TStringList.Create;
  s := text;
  while s<>'' do
  begin
    result.Add(Copy(s, 1, length));
    Delete(s,1,length);
  end;
  s := '';
end;

procedure TMainForm.MemoChange(Sender: TObject);
begin
  UpdateState;
  UpdateGrid;
end;

procedure TMainForm.UpdateGrid;
var
  i: integer;
  sl: TStringList;
  ig: TglIteratorGrid;
begin
  // Запрещаем форме перерисовываться
  LockWindowUpdate(Handle);
  // Очистим грид
  with sgTextAfterSplit do
    for i:=0 to ColCount-1 do
      Cols[i].Clear;

  // Получим лист разбитый на стоки по N символов
  sl := GetList(Memo.Lines.Text, UpDown1.Position);
  // Подготовим итератор
  ig := TglIteratorGrid.Create(sgTextAfterSplit.ColCount - 1, 0, 0);
  for i := 0 to sl.Count - 1 do
  begin
    // Увеличим кол-во строк если нужно
    if (sgTextAfterSplit.RowCount < sgTextAfterSplit.RowCount + ig.CurrentY) then
      sgTextAfterSplit.RowCount := ig.CurrentY + 1;
    // Заполним ячейку
    sgTextAfterSplit.Cells[ig.CurrentX, ig.CurrentY] := sl[i];
    ig.Up;
  end;
  FreeAndNil(sl);
    // Возобновляем перерисовку формы
  LockWindowUpdate(0);
end;

procedure TMainForm.UpdateState;
begin
  lbSmbCount.Caption := PREFIX_SMB_COUNT + IntToStr(Length(Memo.Lines.Text));
end;

end.
