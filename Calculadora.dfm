object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 124
  ClientWidth = 283
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 269
    Height = 23
    TabOrder = 0
    Text = 'Edit1'
    OnKeyPress = Edit1KeyPress
  end
  object btnAdd: TButton
    Left = 8
    Top = 48
    Width = 75
    Height = 25
    Caption = '+'
    TabOrder = 1
    OnClick = btnAddClick
  end
  object btnSub: TButton
    Left = 102
    Top = 48
    Width = 75
    Height = 25
    Caption = '-'
    TabOrder = 2
    OnClick = btnSubClick
  end
  object btnMult: TButton
    Left = 8
    Top = 88
    Width = 75
    Height = 25
    Caption = '*'
    TabOrder = 3
    OnClick = btnMultClick
  end
  object btnDiv: TButton
    Left = 102
    Top = 88
    Width = 75
    Height = 25
    Caption = '/'
    TabOrder = 4
    OnClick = btnDivClick
  end
  object btnClear: TButton
    Left = 202
    Top = 48
    Width = 75
    Height = 65
    Caption = 'c'
    TabOrder = 5
    OnClick = btnClearClick
  end
end
