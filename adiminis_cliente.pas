unit adiminis_cliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, DBCtrls, Mask, ComCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ExtCtrls, ZAbstractTable;

type
  Tad_cliente = class(TForm)
    cliente: TPageControl;
    pesquisar: TTabSheet;
    cadastrar: TTabSheet;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    DBMemo1: TDBMemo;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label19: TLabel;
    SpeedButton6: TSpeedButton;
    Label20: TLabel;
    SpeedButton7: TSpeedButton;
    ZQ_Consulta: TZQuery;
    DataSource1: TDataSource;
    Label11: TLabel;
    Selecione: TDBComboBox;
    SpeedButton12: TSpeedButton;
    ComboBox1: TComboBox;
    DBComboBox3: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBComboBox4: TDBComboBox;
    DBNavigator2: TDBNavigator;
    zt_aux: TZTable;
    Label18: TLabel;
    DBEdit5: TDBEdit;
    zt_auxcodigo: TIntegerField;
    zt_auxnome: TStringField;
    zt_auxnumero: TLargeintField;
    zt_auxbairro: TStringField;
    zt_auxcidade: TStringField;
    zt_auxcep: TStringField;
    zt_auxuf: TStringField;
    zt_auxcpf: TStringField;
    zt_auxcnpj: TStringField;
    zt_auxpessoa: TStringField;
    zt_auxsituacao: TStringField;
    zt_auxrua: TStringField;
    zt_auxobs: TStringField;
    zt_auxcompl: TStringField;
    zt_auxtel1: TLargeintField;
    zt_auxtel2: TLargeintField;
    zt_auxemail: TStringField;
    zt_auxdata: TDateField;
    ZQ_Consultacodigo: TIntegerField;
    ZQ_Consultanome: TStringField;
    ZQ_Consultanumero: TLargeintField;
    ZQ_Consultabairro: TStringField;
    ZQ_Consultacidade: TStringField;
    ZQ_Consultacep: TStringField;
    ZQ_Consultauf: TStringField;
    ZQ_Consultacpf: TStringField;
    ZQ_Consultacnpj: TStringField;
    ZQ_Consultapessoa: TStringField;
    ZQ_Consultasituacao: TStringField;
    ZQ_Consultarua: TStringField;
    ZQ_Consultaobs: TStringField;
    ZQ_Consultacompl: TStringField;
    ZQ_Consultatel1: TLargeintField;
    ZQ_Consultatel2: TLargeintField;
    ZQ_Consultaemail: TStringField;
    ZQ_Consultadata: TDateField;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ad_cliente: Tad_cliente;

implementation

uses sede_de_coneccao, menu;

{$R *.dfm}

procedure Tad_cliente.SpeedButton7Click(Sender: TObject);
begin
ad_cliente.Hide;
menuu.Show;

end;

procedure Tad_cliente.SpeedButton5Click(Sender: TObject);
begin
ad_cliente.Hide;

end;

procedure Tad_cliente.SpeedButton10Click(Sender: TObject);
begin
ad_cliente.Hide;

end;

procedure Tad_cliente.SpeedButton1Click(Sender: TObject);
begin
sededeconeccao.zt_cliente.insert;
end;

procedure Tad_cliente.SpeedButton2Click(Sender: TObject);
begin
if
messagebox(handle,'Deseja Salvar?','Salvar',mb_iconquestion + mb_yesno + mb_defbutton1) = idno then
begin
sededeconeccao.zt_clientedata.asstring:= (formatdatetime('dd/mm/yyyy',now));
sededeconeccao.zt_cliente.insert;
end
else
begin
abort;
end;

end;

procedure Tad_cliente.SpeedButton3Click(Sender: TObject);
begin
if
messagebox(handle,'Deseja Realmete Cancelar o Cadastramento?','Aten��o',mb_iconquestion + mb_yesno + mb_defbutton1) = idno then
begin

cliente.Show;
end
else
begin
cliente.Hide;
menuu.showmodal;

end;

end;

procedure Tad_cliente.SpeedButton4Click(Sender: TObject);
begin
pesquisar.show;
ZQ_Consulta.Active:=false;
ZQ_Consulta.Active:=true;
end;

procedure Tad_cliente.SpeedButton8Click(Sender: TObject);
begin

sededeconeccao.zt_cliente.post;
ShowMessage('Edi��o feita com sucesso!');

end;

procedure Tad_cliente.SpeedButton9Click(Sender: TObject);
begin
if
messagebox(handle,'Deseja realmente Excluir?','Excluir',mb_iconquestion + mb_yesno + mb_defbutton1) = idno then
begin
abort;
end
else
begin
sededeconeccao.zt_cliente.Delete;
ShowMessage('Exclu��o feita com sucesso!');

end;

end;

procedure Tad_cliente.SpeedButton6Click(Sender: TObject);
begin
If (ComboBox1.Text <> '') and (Edit1.Text <> '') then
 begin
   ZQ_Consulta.Close;
   ZQ_Consulta.SQL.Clear;
   ZQ_Consulta.SQL.Add ('select * from cliente where '+ComboBox1.Text+' LIKE ' + quotedstr('%'+Edit1.Text+ '%'));
   ZQ_Consulta.Open;
 end
 else
 begin
   ShowMessage('Preencha todos os campos');
 end;

end;

procedure Tad_cliente.SpeedButton11Click(Sender: TObject);
begin
ZQ_Consulta.Close;
ZQ_Consulta.SQL.Clear;
ZQ_Consulta.SQL.Add('select * from cliente');
ZQ_Consulta.Open;
end;

procedure Tad_cliente.SpeedButton12Click(Sender: TObject);
begin
ZQ_Consulta.Active:= False;
ZQ_Consulta.SQL.Clear;
ZQ_Consulta.SQL.Add(' select * from cliente');
ZQ_Consulta.Active:=True;
end;

procedure Tad_cliente.DBNavigator2Click(Sender: TObject;
  Button: TNavigateBtn);
  var ultcod : Integer;
  begin
if sededeconeccao.Ds_cliente.State in [dsinsert] then
begin
zt_aux.Last;
ultcod:= zt_auxcodigo.Value + 1;
sededeconeccao.zt_clientecodigo.Value:= ultcod;
sededeconeccao.zt_clientedata.Value:= Date;

  end;

  end;
  procedure Tad_cliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
zt_aux.Close;
sededeconeccao.zt_cliente.Close;
cliente.Hide;
menuu.Show;

end;

procedure Tad_cliente.DBGrid1DblClick(Sender: TObject);
begin
if sededeconeccao.zt_cliente.locate( 'codigo' ,DBGrid1.DataSource.DataSet.FieldByName( 'codigo' ).AsString, []) then
begin
cadastrar.Show;
end;

end;

procedure Tad_cliente.FormShow(Sender: TObject);
begin
zt_aux.Open;
sededeconeccao.zt_cliente.Open;

end;

end.
