unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Grids;

type
  TMainForm = class(TForm)
    MyGrid: TStringGrid;
    Label1: TLabel;
    UpDown1: TUpDown;
    eStringLength: TEdit;
    Label2: TLabel;
    Memo: TMemo;
    lbSmbCount: TLabel;
    procedure MemoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

// Событие при появлении формы
procedure TMainForm.FormShow(Sender: TObject);
begin
// обновим вывод кол-ва символов в поле для текста
  lbSmbCount.Caption := 'Длина текста (символы): ' +
  IntToStr(Length(Memo.Lines.Text));
end;

// Событие при любом изменении текста в поле
procedure TMainForm.MemoChange(Sender: TObject);
var
i, col,row: integer;
  s:string;
    sl: TStringList;
begin
  // обновим вывод кол-ва символов в поле для текста
  lbSmbCount.Caption := 'Длина текста (символы): ' +
  IntToStr(Length(Memo.Lines.Text));

    // Очистим все поля грида
    for i:=0 to MyGrid.ColCount-1 do
      MyGrid.Cols[i].Clear;

      // Получим лист разбитый на стоки по N символов
      // N будет равно UpDown1.Position
         sl := TStringList.Create; // создадим лист
  s := Memo.Lines.Text; // поместим в переменную s текст из Мемо
  while s<>'' do // пока s не станет пустой
  begin
      sl.Add(Copy(s, 1, UpDown1.Position)); // копируем N символов и добавляем в лист
    Delete(s,1,UpDown1.Position);// удаляем из s что скопировали
  end;

  col := 0; //номер поля в гриде
  row:=0; //номер строки в гриде

  // заполним грид элементами из нашего листа
   for i := 0 to sl.Count - 1 do
  begin
  // заполним ячейку
  MyGrid.Cells[col, row] := sl[i];

  // если колонка последняя то добавим строку и обнулим col
  if col = MyGrid.ColCount - 1 then
  begin
      MyGrid.RowCount := MyGrid.RowCount +1;
      row := row+1;
      col := 0;
  end
  else // если не последняя колонка, то сдиваемся вправо
  col := col + 1;
  end;

end;

end.
