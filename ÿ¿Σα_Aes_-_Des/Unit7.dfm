object Form14: TForm14
  Left = 0
  Top = 0
  Caption = '1'
  ClientHeight = 424
  ClientWidth = 315
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
  object MText: TMemo
    Left = 10
    Top = 8
    Width = 297
    Height = 111
    TabOrder = 0
  end
  object KText: TEdit
    Left = 8
    Top = 125
    Width = 297
    Height = 21
    TabOrder = 1
  end
  object CText: TMemo
    Left = 8
    Top = 152
    Width = 297
    Height = 111
    TabOrder = 2
  end
  object PText: TMemo
    Left = 8
    Top = 269
    Width = 297
    Height = 111
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 386
    Width = 181
    Height = 21
    TabOrder = 4
    Items.Strings = (
      '128'
      '192'
      '256')
  end
  object Button1: TButton
    Left = 195
    Top = 386
    Width = 34
    Height = 28
    Caption = '1'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 235
    Top = 386
    Width = 34
    Height = 28
    Caption = '2'
    TabOrder = 6
    OnClick = Button2Click
  end
end
