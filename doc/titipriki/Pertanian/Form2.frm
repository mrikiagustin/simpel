VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmInduk 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Buku Induk"
   ClientHeight    =   9165
   ClientLeft      =   60
   ClientTop       =   480
   ClientWidth     =   15210
   Icon            =   "Form2.frx":0000
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   9165
   ScaleWidth      =   15210
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command3 
      BackColor       =   &H00FFC0FF&
      Caption         =   "Buatkan Laporan"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   10200
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   8160
      Width           =   1935
   End
   Begin MSAdodcLib.Adodc Adodc4 
      Height          =   330
      Left            =   8520
      Top             =   8280
      Visible         =   0   'False
      Width           =   1200
      _ExtentX        =   2117
      _ExtentY        =   582
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   1
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Program Files\Pertanian\database.mdb;Persist Security Info=False"
      OLEDBString     =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Program Files\Pertanian\database.mdb;Persist Security Info=False"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "SELECT * FROM pengantar ORDER BY id_Pengantar DESC"
      Caption         =   "Adodc4"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Buatkan Pengantar Contoh"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   12360
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   8160
      Width           =   2775
   End
   Begin MSAdodcLib.Adodc Adodc3 
      Height          =   330
      Left            =   1800
      Top             =   4080
      Visible         =   0   'False
      Width           =   1200
      _ExtentX        =   2117
      _ExtentY        =   582
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   1
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Program Files\Pertanian\database.mdb;Persist Security Info=False"
      OLEDBString     =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Program Files\Pertanian\database.mdb;Persist Security Info=False"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "SELECT No_Contoh, No_Laboratorium FROM contoh WHERE No_Laboratorium LIKE '%Bu%' ORDER BY id_Uji DESC"
      Caption         =   "Adodc3"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H0000FFFF&
      Caption         =   "<-  Masukkan Contoh ke Bu"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4920
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   8160
      Width           =   2775
   End
   Begin MSDataGridLib.DataGrid DataGrid2 
      Bindings        =   "Form2.frx":57E2
      Height          =   6975
      Left            =   360
      TabIndex        =   3
      Top             =   1440
      Width           =   4215
      _ExtentX        =   7435
      _ExtentY        =   12303
      _Version        =   393216
      AllowUpdate     =   0   'False
      HeadLines       =   1
      RowHeight       =   15
      FormatLocked    =   -1  'True
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ColumnCount     =   2
      BeginProperty Column00 
         DataField       =   "No_Contoh"
         Caption         =   "No_Contoh"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   "No_Laboratorium"
         Caption         =   "No_Laboratorium"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      SplitCount      =   1
      BeginProperty Split0 
         BeginProperty Column00 
            ColumnWidth     =   1739.906
         EndProperty
         BeginProperty Column01 
            ColumnWidth     =   1739.906
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.TabStrip TabStrip1 
      Height          =   7695
      Left            =   120
      TabIndex        =   2
      Top             =   960
      Width           =   4695
      _ExtentX        =   8281
      _ExtentY        =   13573
      MultiRow        =   -1  'True
      _Version        =   393216
      BeginProperty Tabs {1EFB6598-857C-11D1-B16A-00C0F0283628} 
         NumTabs         =   8
         BeginProperty Tab1 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "Bu"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab2 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "Bn.P"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab3 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "Bn.S"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab4 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "Ol"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab5 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "Sy"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab6 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "UP"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab7 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "FP"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab8 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "Kh"
            ImageVarType    =   2
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin MSAdodcLib.Adodc Adodc2 
      Height          =   330
      Left            =   6600
      Top             =   3240
      Visible         =   0   'False
      Width           =   1200
      _ExtentX        =   2117
      _ExtentY        =   582
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   2
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Program Files\Pertanian\database.mdb;Persist Security Info=False"
      OLEDBString     =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Program Files\Pertanian\database.mdb;Persist Security Info=False"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "contoh"
      Caption         =   "Adodc2"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   6600
      Top             =   2760
      Visible         =   0   'False
      Width           =   1200
      _ExtentX        =   2117
      _ExtentY        =   582
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   1
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Program Files\Pertanian\database.mdb;Persist Security Info=False"
      OLEDBString     =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Program Files\Pertanian\database.mdb;Persist Security Info=False"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   $"Form2.frx":57F7
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin MSDataGridLib.DataGrid DataGrid1 
      Bindings        =   "Form2.frx":59AE
      Height          =   7095
      Left            =   4920
      TabIndex        =   1
      Top             =   960
      Width           =   10215
      _ExtentX        =   18018
      _ExtentY        =   12515
      _Version        =   393216
      AllowUpdate     =   0   'False
      AllowArrows     =   -1  'True
      HeadLines       =   1
      RowHeight       =   15
      TabAction       =   2
      FormatLocked    =   -1  'True
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Caption         =   "CONTOH"
      ColumnCount     =   13
      BeginProperty Column00 
         DataField       =   "id_Permohonan"
         Caption         =   "id_Permohonan"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   "Tgl_Penerimaan"
         Caption         =   "Tanggal"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column02 
         DataField       =   "Nama"
         Caption         =   "Nama"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column03 
         DataField       =   "Alamat"
         Caption         =   "Alamat"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column04 
         DataField       =   "Instansi_Perusahaan"
         Caption         =   "Instansi_Perusahaan"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column05 
         DataField       =   "Telepon_Fax"
         Caption         =   "Telepon_Fax"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column06 
         DataField       =   "Kontak_Person"
         Caption         =   "Kontak_Person"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column07 
         DataField       =   "id_Uji"
         Caption         =   "id_Uji"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column08 
         DataField       =   "Jenis_Varietas"
         Caption         =   "Jenis_Varietas"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column09 
         DataField       =   "Jumlah"
         Caption         =   "Jumlah"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column10 
         DataField       =   "Kemasan"
         Caption         =   "Kemasan"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column11 
         DataField       =   "No_Contoh"
         Caption         =   "No_Contoh"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column12 
         DataField       =   "No_Laboratorium"
         Caption         =   "No_Laboratorium"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      SplitCount      =   1
      BeginProperty Split0 
         BeginProperty Column00 
            Object.Visible         =   0   'False
            ColumnWidth     =   1184.882
         EndProperty
         BeginProperty Column01 
            ColumnWidth     =   1005.165
         EndProperty
         BeginProperty Column02 
            ColumnWidth     =   1349.858
         EndProperty
         BeginProperty Column03 
            ColumnWidth     =   1995.024
         EndProperty
         BeginProperty Column04 
            Object.Visible         =   0   'False
            ColumnWidth     =   1739.906
         EndProperty
         BeginProperty Column05 
            Object.Visible         =   0   'False
            ColumnWidth     =   1739.906
         EndProperty
         BeginProperty Column06 
            Object.Visible         =   0   'False
            ColumnWidth     =   1739.906
         EndProperty
         BeginProperty Column07 
            Object.Visible         =   0   'False
            ColumnWidth     =   915.024
         EndProperty
         BeginProperty Column08 
            ColumnWidth     =   1200.189
         EndProperty
         BeginProperty Column09 
            ColumnWidth     =   705.26
         EndProperty
         BeginProperty Column10 
            ColumnWidth     =   750.047
         EndProperty
         BeginProperty Column11 
            Button          =   -1  'True
            ColumnWidth     =   1154.835
         EndProperty
         BeginProperty Column12 
            Button          =   -1  'True
            ColumnWidth     =   1395.213
         EndProperty
      EndProperty
   End
   Begin VB.Image Image1 
      Height          =   720
      Left            =   240
      Picture         =   "Form2.frx":59C3
      Top             =   120
      Width           =   720
   End
   Begin VB.Label Label7 
      BackStyle       =   0  'Transparent
      Caption         =   "Buku Induk"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   30
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1320
      TabIndex        =   0
      Top             =   120
      Width           =   4215
   End
End
Attribute VB_Name = "frmInduk"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
On Error Resume Next

'berikan nomor lab
no_max = 0
bln_now = Format(Date, "Mm")
If Len(bln_now) = 1 Then bln_now = "0" & bln_now
thn_now = Format(Date, "Yy")

Adodc3.Recordset.MoveFirst
While Not Adodc3.Recordset.EOF
    garing1 = InStr(1, Adodc3.Recordset!No_Laboratorium, "/")
    If garing1 > 0 Then garing2 = InStr(garing1 + 1, Adodc3.Recordset!No_Laboratorium, "/")
    If garing2 > 0 Then garing3 = InStr(garing2 + 1, Adodc3.Recordset!No_Laboratorium, "/")
    thn = Mid(Adodc3.Recordset!No_Laboratorium, garing3 + 1, 2)
    If thn = thn_now Then
        No = Val(Mid(Adodc3.Recordset!No_Laboratorium, 1, garing1 - 1))
        If No > no_max Then no_max = No
    End If
    Adodc3.Recordset.MoveNext
Wend

Adodc2.Refresh
Adodc2.Recordset.MoveFirst
Adodc2.Recordset.Find "id_uji=" & Adodc1.Recordset!id_Uji
If Not Adodc2.Recordset.EOF Then
    no_max = no_max + 1
    no_lab = LTrim(Str(no_max)) & "/" & TabStrip1.SelectedItem.Caption & "/" & bln_now & "/" & thn_now
    Adodc2.Recordset!No_Laboratorium = no_lab
    Adodc2.Recordset.Update
End If
Adodc2.Refresh

Adodc1.Refresh
Adodc1.Recordset.Find "No_Laboratorium='" & no_lab & "'"
Adodc3.Refresh

End Sub

Private Sub Command2_Click()
On Error Resume Next
Adodc4.Refresh
Adodc4.Recordset.AddNew
Adodc4.Recordset!Tgl_Penerimaan = Adodc1.Recordset!Tgl_Penerimaan
Adodc4.Recordset!Tgl_Pengantar = Date
Adodc4.Recordset!id_Permohonan = Adodc1.Recordset!id_Permohonan
Adodc4.Recordset!Nama = Adodc1.Recordset!Nama
Adodc4.Recordset!Alamat = Adodc1.Recordset!Alamat
Adodc4.Recordset!Instansi_Perusahaan = Adodc1.Recordset!Instansi_Perusahaan
Adodc4.Recordset!Telepon_Fax = Adodc1.Recordset!Telepon_Fax
Adodc4.Recordset!Kontak_Person = Adodc1.Recordset!Kontak_Person
Adodc4.Recordset!Pengirim = MDIForm1.StatusBar1.Panels(2).Text
Adodc4.Recordset.Update
Adodc4.Refresh
DataGrid1.Refresh
id_Pengantar = Adodc4.Recordset!id_Pengantar
id_Permohonan = Adodc1.Recordset!id_Permohonan
Buat_Pengantar = True
frmPengantar.Show
Unload Me
End Sub

Private Sub Command3_Click()
On Error Resume Next
frmMenuLap.Show vbModal
End Sub

Private Sub DataGrid1_ButtonClick(ByVal ColIndex As Integer)
On Error Resume Next
If ColIndex = 11 Then
    x = InputBox("Masukkan Nomor Contoh :", "Ubah No Contoh")
    If Len(x) > 0 Then
        Adodc2.Refresh
        Adodc2.Recordset.MoveFirst
        Adodc2.Recordset.Find "id_uji=" & Adodc1.Recordset!id_Uji
        Adodc2.Recordset!No_Contoh = x
        Adodc2.Recordset.Update
        Adodc2.Refresh
        Adodc1.Refresh
        Adodc3.Refresh
    End If
End If
If ColIndex = 12 Then
    x = InputBox("Masukkan Nomor Laboratorium :", "Ubah No Laboratorium")
    If Len(x) > 0 Then
        Adodc2.Refresh
        Adodc2.Recordset.MoveFirst
        Adodc2.Recordset.Find "id_uji=" & Adodc1.Recordset!id_Uji
        Adodc2.Recordset!No_Laboratorium = x
        Adodc2.Recordset.Update
        Adodc2.Refresh
        Adodc1.Refresh
        Adodc3.Refresh
    End If
End If
End Sub

Private Sub DataGrid2_Click()
On Error Resume Next
Adodc1.Recordset.MoveFirst
Adodc1.Recordset.Find "No_Contoh='" & Adodc3.Recordset!No_Contoh & "'"
End Sub

Private Sub Form_Deactivate()
On Error Resume Next
Unload Me
End Sub

Private Sub TabStrip1_Click()
On Error Resume Next
tabname = TabStrip1.SelectedItem.Caption
If tabname = "Bn.P" Or tabname = "Bn.S" Then
    tabname = "Bn"
End If
Adodc3.RecordSource = "SELECT No_Contoh, No_Laboratorium FROM contoh WHERE No_Laboratorium LIKE '%" & tabname & "%' ORDER BY id_Uji DESC"
Adodc3.Refresh
DataGrid2.Refresh
Command1.Caption = "<-  Masukkan contoh ke " & TabStrip1.SelectedItem.Caption
End Sub
