object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #1047#1072#1076#1072#1095#1072'. '#1056#1072#1079#1073#1080#1074#1072#1077#1084' '#1090#1077#1082#1089#1090'.'
  ClientHeight = 321
  ClientWidth = 550
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnShow = FormShow
  DesignSize = (
    550
    321)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 70
    Height = 13
    Caption = #1044#1083#1080#1085#1072' '#1089#1090#1088#1086#1082#1080
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 29
    Height = 13
    Caption = #1058#1077#1082#1089#1090
  end
  object lbSmbCount: TLabel
    Left = 539
    Top = 48
    Width = 3
    Height = 13
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
  end
  object MyGrid: TStringGrid
    Left = 8
    Top = 162
    Width = 534
    Height = 151
    Anchors = [akLeft, akTop, akRight, akBottom]
    DefaultColWidth = 100
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goThumbTracking]
    TabOrder = 0
  end
  object UpDown1: TUpDown
    Left = 129
    Top = 27
    Width = 16
    Height = 21
    Associate = eStringLength
    Position = 5
    TabOrder = 1
  end
  object eStringLength: TEdit
    Left = 8
    Top = 27
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 2
    Text = '5'
  end
  object Memo: TMemo
    Left = 8
    Top = 67
    Width = 534
    Height = 89
    Anchors = [akLeft, akTop, akRight]
    Lines.Strings = (
      #1057' '#1087#1086#1084#1086#1097#1100#1102' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1086#1074' Memo '#1080' String Grid '#1085#1072#1087#1080#1089#1072#1090#1100' '#1087#1088#1086#1075#1088#1072#1084#1084#1091'.'
      #1057#1084#1099#1089#1083' '#1090#1072#1082#1086#1074': '#1080#1084#1077#1077#1090#1089#1103' '#1090#1077#1082#1089#1090' '#1089' '#1079#1072#1076#1072#1085#1085#1086#1081' '#1076#1083#1080#1085#1085#1086#1081' '#1089#1090#1088#1086#1082#1080'. '
      #1045#1089#1083#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1080#1084#1074#1086#1083#1086#1074' '#1087#1088#1077#1074#1099#1096#1072#1077#1090' '#1079#1072#1076#1072#1085#1085#1091#1102' '#1076#1083#1080#1085#1091' '#1089#1090#1088#1086#1082#1080', '
      
        #1090#1086' '#1087#1077#1088#1074#1091#1102' '#1095#1072#1089#1090#1100' '#1079#1072#1076#1072#1085#1085#1091#1102' '#1076#1083#1080#1085#1091' '#1089#1090#1088#1086#1082#1080' '#1101#1090#1086#1090' '#1090#1077#1082#1089#1090' '#1079#1072#1085#1086#1089#1103#1090' '#1074' '#1087#1077#1088#1074#1091 +
        #1102' '#1103#1095#1077#1081#1082#1091' '#1089#1090#1088#1080#1085#1075' '#1075#1088#1080#1076)
    TabOrder = 3
    OnChange = MemoChange
  end
end
