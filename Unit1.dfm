object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 301
  ClientWidth = 562
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
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 556
    Height = 295
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitLeft = 280
    ExplicitTop = 80
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Button2: TButton
      Left = 224
      Top = 208
      Width = 75
      Height = 25
      Caption = '< Back'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 305
      Top = 208
      Width = 75
      Height = 25
      Caption = 'Next >'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
end
