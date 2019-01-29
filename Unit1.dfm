object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 0
    Width = 216
    Height = 299
    Align = alLeft
    DataSource = DataSource1
    PanelHeight = 74
    TabOrder = 0
    RowCount = 4
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitHeight = 264
    object DBText1: TDBText
      Left = 32
      Top = 24
      Width = 145
      Height = 17
      DataField = 'title'
      DataSource = DataSource1
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\_data\accessDB.' +
      'accdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 408
    Top = 40
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT title FROM Mechanics;')
    Left = 312
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 264
    Top = 24
  end
end
