unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    lb: TListBox;
    MainMenu1: TMainMenu;
    V: TMenuItem;
    mi: TMenuItem;
    od: TOpenDialog;
    procedure miClick(Sender: TObject);
    procedure VClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.miClick(Sender: TObject);
var s1,s2,s,fn,fn2:string; i,j,n,m:integer;
begin
   if od.execute then begin
                        fn2:=od.filename;
                         lb.items.LoadFromFile(fn2);
                       end;
m:=lb.Items.count;
for j:=0 to m-1 do
begin
  s1:=lb.items.strings[j];

  lb.items.strings[j]:=s1;
end;
end;

procedure TForm1.VClick(Sender: TObject);
begin
  lb.items.Clear;
end;


end.



