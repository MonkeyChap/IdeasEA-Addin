object Form13: TForm13
  Left = 0
  Top = 0
  Caption = 'Export Example PES XML'
  ClientHeight = 243
  ClientWidth = 432
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 258
    Height = 13
    Caption = 'PES XSD Tag Definitions are bound to NamingScheme:'
  end
  object Label2: TLabel
    Left = 8
    Top = 54
    Width = 62
    Height = 13
    Caption = 'Model Name:'
  end
  object Label3: TLabel
    Left = 255
    Top = 54
    Width = 70
    Height = 13
    Caption = 'XML NS Prefix:'
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 27
    Width = 412
    Height = 21
    TabOrder = 0
    OnChange = ComboBox1Change
  end
  object Button1: TButton
    Left = 265
    Top = 210
    Width = 75
    Height = 25
    Caption = 'Go'
    Enabled = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 80
    Width = 412
    Height = 124
    Color = clBtnFace
    Lines.Strings = (
      'Memo1')
    ReadOnly = True
    TabOrder = 2
  end
  object Button2: TButton
    Left = 346
    Top = 210
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 76
    Top = 53
    Width = 173
    Height = 21
    TabOrder = 4
    Text = 'MODEM'
  end
  object Edit2: TEdit
    Left = 331
    Top = 53
    Width = 90
    Height = 21
    TabOrder = 5
    Text = 'modem:'
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.pes'
    Filter = 'PES Files|*.pes|XML Files|*.xml|All Files|*.*'
    Left = 72
    Top = 136
  end
end
