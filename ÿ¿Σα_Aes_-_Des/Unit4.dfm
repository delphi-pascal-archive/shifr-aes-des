object Form11: TForm11
  Left = 262
  Top = 114
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '1'
  ClientHeight = 347
  ClientWidth = 512
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object XLabel: TLabel
    Left = 82
    Top = 37
    Width = 6
    Height = 13
    Caption = 'X'
  end
  object MaxLabel: TLabel
    Left = 486
    Top = 266
    Width = 6
    Height = 13
    Alignment = taCenter
    Caption = '*'
  end
  object XSizeEdit: TEdit
    Left = 151
    Top = 227
    Width = 41
    Height = 21
    TabOrder = 0
    Text = '10'
  end
  object TextEdit: TEdit
    Left = 8
    Top = 227
    Width = 137
    Height = 21
    TabOrder = 1
    Text = #1087#1088#1080#1074#1077#1090
  end
  object Cliche: TStringGrid
    Left = 8
    Top = 8
    Width = 243
    Height = 213
    ColCount = 10
    DefaultColWidth = 23
    DefaultRowHeight = 20
    DefaultDrawing = False
    FixedCols = 0
    RowCount = 10
    FixedRows = 0
    TabOrder = 2
    OnDrawCell = ClicheDrawCell
  end
  object Table: TStringGrid
    Left = 257
    Top = 8
    Width = 243
    Height = 213
    ColCount = 10
    DefaultColWidth = 23
    DefaultRowHeight = 20
    DefaultDrawing = False
    FixedCols = 0
    RowCount = 10
    FixedRows = 0
    TabOrder = 3
    OnDrawCell = TableDrawCell
  end
  object XUpDown: TUpDown
    Left = 192
    Top = 227
    Width = 16
    Height = 21
    Associate = XSizeEdit
    Min = 4
    Max = 10
    Increment = 2
    Position = 10
    TabOrder = 4
  end
  object DecryptText: TEdit
    Left = 8
    Top = 254
    Width = 137
    Height = 21
    Cursor = crArrow
    ReadOnly = True
    TabOrder = 5
  end
  object YSizeEdit: TEdit
    Left = 151
    Top = 254
    Width = 41
    Height = 21
    TabOrder = 6
    Text = '10'
  end
  object YUpDown: TUpDown
    Left = 192
    Top = 254
    Width = 16
    Height = 21
    Associate = YSizeEdit
    Min = 4
    Max = 10
    Increment = 2
    Position = 10
    TabOrder = 7
    OnClick = YUpDownClick
  end
  object Button1: TButton
    Left = 8
    Top = 304
    Width = 33
    Height = 25
    Caption = '1'
    TabOrder = 8
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 47
    Top = 304
    Width = 33
    Height = 25
    Caption = '2'
    TabOrder = 9
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 86
    Top = 304
    Width = 33
    Height = 25
    Caption = '3'
    TabOrder = 10
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 125
    Top = 304
    Width = 33
    Height = 25
    Caption = '4'
    TabOrder = 11
    OnClick = Button4Click
  end
  object ScrollBar1: TScrollBar
    Left = 8
    Top = 281
    Width = 121
    Height = 17
    PageSize = 0
    TabOrder = 12
  end
end
