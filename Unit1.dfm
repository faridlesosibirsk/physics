object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 311
  ClientWidth = 643
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
    Height = 311
    Align = alLeft
    DataSource = DataSource1
    PanelHeight = 103
    TabOrder = 0
    ExplicitLeft = 80
    ExplicitTop = 16
    ExplicitHeight = 216
    object DBText1: TDBText
      Left = 8
      Top = 40
      Width = 185
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
    Left = 416
    Top = 48
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 528
    Top = 96
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT title FROM Mechanics;')
    Left = 472
    Top = 64
  end
end
