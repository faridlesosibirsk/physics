object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 348
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
    Height = 342
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = -2
    ExplicitHeight = 295
    object Panel2: TPanel
      Left = 0
      Top = 282
      Width = 556
      Height = 60
      Align = alBottom
      BevelEdges = [beTop]
      BevelKind = bkTile
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 0
      ExplicitTop = 235
      object Button1: TButton
        Left = 313
        Top = 19
        Width = 75
        Height = 25
        Caption = 'Next >'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 232
        Top = 19
        Width = 75
        Height = 25
        Caption = '< Back'
        TabOrder = 1
        OnClick = Button2Click
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 556
      Height = 60
      Align = alTop
      BevelEdges = [beBottom]
      BevelKind = bkTile
      BevelOuter = bvNone
      Color = clCream
      ParentBackground = False
      TabOrder = 1
    end
  end
end
