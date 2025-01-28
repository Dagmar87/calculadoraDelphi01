unit Calculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    btnAdd: TButton;
    btnSub: TButton;
    btnMult: TButton;
    btnDiv: TButton;
    btnClear: TButton;            
    procedure btnAddClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
    procedure btnMultClick(Sender: TObject);
    procedure btnSubClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    PrimeiroNumero, SegundoNumero: Double;
    Operacao: String;
    procedure ExecutarOperacao;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnAddClick(Sender: TObject);
begin
  PrimeiroNumero := StrToFloat(Edit1.Text);
  Edit1.Clear;
  Operacao := '+';
  Edit1.SetFocus;
end;

procedure TForm1.btnClearClick(Sender: TObject);
begin
  Edit1.Clear;
  Edit1.SetFocus;
end;

procedure TForm1.btnDivClick(Sender: TObject);
begin
  PrimeiroNumero := StrToFloat(Edit1.Text);
  Edit1.Clear;
  Operacao := '/';
  Edit1.SetFocus;
end;

procedure TForm1.btnMultClick(Sender: TObject);
begin
  PrimeiroNumero := StrToFloat(Edit1.Text);
  Edit1.Clear;
  Operacao := '*';
  Edit1.SetFocus;
end;

procedure TForm1.btnSubClick(Sender: TObject);
begin
  PrimeiroNumero := StrToFloat(Edit1.Text);
  Edit1.Clear;
  Operacao := '-';
  Edit1.SetFocus;
end;

procedure TForm1.ExecutarOperacao;
begin
  SegundoNumero := StrToFloat(Edit1.Text);
  if Operacao = '+' then
    Edit1.Text := FloatToStr(PrimeiroNumero + SegundoNumero)
  else
  if Operacao = '-' then
    Edit1.Text := FloatToStr(PrimeiroNumero - SegundoNumero)
  else
  if Operacao = '*' then
    Edit1.Text := FloatToStr(PrimeiroNumero * SegundoNumero)
  else
  if Operacao = '/' then
  begin
    if SegundoNumero = 0 then
      ShowMessage('Erro: Divisão por zero')
    else
      Edit1.Text := FloatToStr(PrimeiroNumero / SegundoNumero);
  end;                                       
end;    

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then 
  begin
    ExecutarOperacao;
    Key := #0;
  end;          
end;

end.
