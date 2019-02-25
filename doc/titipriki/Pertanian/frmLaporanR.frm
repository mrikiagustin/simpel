VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frmLaporanR 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Laporan"
   ClientHeight    =   9135
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   15210
   Icon            =   "frmLaporanR.frx":0000
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   9135
   ScaleWidth      =   15210
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command5 
      BackColor       =   &H00FFC0C0&
      Caption         =   "KELUAR"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   13560
      Style           =   1  'Graphical
      TabIndex        =   25
      Top             =   8160
      Width           =   1335
   End
   Begin MSAdodcLib.Adodc AdoResidu 
      Height          =   330
      Left            =   1080
      Top             =   5280
      Visible         =   0   'False
      Width           =   1215
      _ExtentX        =   2143
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
      RecordSource    =   "SELECT * FROM residu;"
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
   Begin MSAdodcLib.Adodc AdoMetode 
      Height          =   330
      Left            =   11760
      Top             =   5280
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
      RecordSource    =   "metode"
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
   Begin MSDataListLib.DataList DataList1 
      Bindings        =   "frmLaporanR.frx":08CA
      Height          =   255
      Index           =   8
      Left            =   10920
      TabIndex        =   24
      Top             =   4800
      Visible         =   0   'False
      Width           =   2655
      _ExtentX        =   4683
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   0
      ListField       =   "Metode"
   End
   Begin MSAdodcLib.Adodc Adodc2 
      Height          =   330
      Left            =   7080
      Top             =   6000
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
      RecordSource    =   "SELECT * FROM contoh_lap ORDER BY id_Ujilap ASC"
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
   Begin MSDataGridLib.DataGrid DataGrid1 
      Bindings        =   "frmLaporanR.frx":08E2
      Height          =   3615
      Left            =   240
      TabIndex        =   23
      Top             =   4320
      Width           =   14655
      _ExtentX        =   25850
      _ExtentY        =   6376
      _Version        =   393216
      AllowArrows     =   -1  'True
      HeadLines       =   1
      RowHeight       =   15
      TabAction       =   2
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
      ColumnCount     =   10
      BeginProperty Column00 
         DataField       =   "id_Laporan"
         Caption         =   "id_Laporan"
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
         DataField       =   "No"
         Caption         =   "No"
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
         DataField       =   "Parameter_Uji"
         Caption         =   "Standar"
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
         DataField       =   "Hasil_Pengujian"
         Caption         =   "Hasil_Pengujian"
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
         DataField       =   "Kadar_Residu"
         Caption         =   "Kadar_Residu (mg/kg)"
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
         DataField       =   "Batas_Deteksi"
         Caption         =   "Batas_Deteksi (mg/kg)"
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
         DataField       =   "Batas_Penetapan"
         Caption         =   "Batas_Penetapan (mg/kg)"
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
         DataField       =   "Recovery"
         Caption         =   "Recovery"
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
         DataField       =   "Metode_Uji"
         Caption         =   "Metode_Uji"
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
         DataField       =   "id_Ujilap"
         Caption         =   "id_Ujilap"
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
            ColumnWidth     =   915.024
         EndProperty
         BeginProperty Column01 
            ColumnWidth     =   494.929
         EndProperty
         BeginProperty Column02 
            ColumnWidth     =   1739.906
         EndProperty
         BeginProperty Column03 
            Object.Visible         =   0   'False
            ColumnWidth     =   1739.906
         EndProperty
         BeginProperty Column04 
            ColumnWidth     =   1995.024
         EndProperty
         BeginProperty Column05 
            ColumnWidth     =   1995.024
         EndProperty
         BeginProperty Column06 
            ColumnWidth     =   2204.788
         EndProperty
         BeginProperty Column07 
            ColumnWidth     =   1995.024
         EndProperty
         BeginProperty Column08 
            Button          =   -1  'True
            ColumnWidth     =   2505.26
         EndProperty
         BeginProperty Column09 
            Object.Visible         =   0   'False
            ColumnWidth     =   915.024
         EndProperty
      EndProperty
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00FFFFFF&
      DataField       =   "No_Seri"
      DataSource      =   "Adodc1"
      Height          =   285
      Left            =   1440
      TabIndex        =   11
      Top             =   120
      Width           =   1095
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H00FFFFFF&
      DataField       =   "Instansi_Perusahaan"
      DataSource      =   "Adodc1"
      Height          =   285
      Left            =   5280
      TabIndex        =   10
      Top             =   1440
      Width           =   6015
   End
   Begin VB.TextBox Text3 
      BackColor       =   &H00FFFFFF&
      DataField       =   "Alamat"
      DataSource      =   "Adodc1"
      Height          =   285
      Left            =   5280
      TabIndex        =   9
      Top             =   1800
      Width           =   6015
   End
   Begin VB.TextBox Text4 
      BackColor       =   &H00FFFFFF&
      DataField       =   "No_Contoh"
      DataSource      =   "Adodc1"
      Height          =   285
      Left            =   5280
      TabIndex        =   7
      Top             =   3120
      Width           =   1815
   End
   Begin VB.TextBox Text5 
      BackColor       =   &H00FFFFFF&
      DataField       =   "Komoditas"
      DataSource      =   "Adodc1"
      Height          =   285
      Left            =   5280
      TabIndex        =   6
      Top             =   3480
      Width           =   6015
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00C0FFC0&
      Caption         =   "CETAK "
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   10320
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   8160
      Width           =   1455
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00FFC0FF&
      Caption         =   "SIMPAN"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   12000
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   8160
      Width           =   1335
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "+"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   14520
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   3840
      Width           =   375
   End
   Begin VB.CommandButton Command4 
      BackColor       =   &H00C0C0FF&
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   14040
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   3840
      Width           =   375
   End
   Begin VB.OptionButton Option1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Hasil Pengujian hanya berlaku untuk contoh yang diuji"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   1
      Top             =   8040
      Value           =   -1  'True
      Width           =   5895
   End
   Begin VB.OptionButton Option2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Hasil Pengujian berlaku untuk kelompok (Lot)"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   8400
      Width           =   6015
   End
   Begin MSComCtl2.DTPicker DTPicker1 
      DataField       =   "Tgl_Penerimaan"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   5280
      TabIndex        =   8
      Top             =   2160
      Width           =   1815
      _ExtentX        =   3201
      _ExtentY        =   661
      _Version        =   393216
      CheckBox        =   -1  'True
      Format          =   21889025
      CurrentDate     =   39525
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   120
      Top             =   720
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
      RecordSource    =   "SELECT * FROM pelaporan"
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
   Begin MSComCtl2.DTPicker DTPicker2 
      DataField       =   "Tgl_Pengujian"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   5280
      TabIndex        =   12
      Top             =   2640
      Width           =   1815
      _ExtentX        =   3201
      _ExtentY        =   661
      _Version        =   393216
      CheckBox        =   -1  'True
      Format          =   21889025
      CurrentDate     =   39525
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "LAPORAN HASIL PENGUJIAN LABORATORIUM KIMIA"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      TabIndex        =   22
      Top             =   480
      Width           =   14775
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Nomor Seri"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   21
      Top             =   120
      Width           =   1335
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "GOLONGAN ORGANOFOSFAT"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      TabIndex        =   20
      Top             =   960
      Width           =   14775
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Kepada Yth / To"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   0
      Left            =   240
      TabIndex        =   19
      Top             =   1440
      Width           =   4935
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "Alamat / Address"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   18
      Top             =   1800
      Width           =   4935
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "Tanggal Penerimaan Contoh / Date of Sample Received"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   17
      Top             =   2280
      Width           =   4935
   End
   Begin VB.Label Label7 
      BackStyle       =   0  'Transparent
      Caption         =   "Tanggal Selesai Pengujian / Date of Finished"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   16
      Top             =   2760
      Width           =   4935
   End
   Begin VB.Label Label8 
      BackStyle       =   0  'Transparent
      Caption         =   "Nomor Contoh / Sample Number"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   15
      Top             =   3120
      Width           =   4935
   End
   Begin VB.Label Label9 
      BackStyle       =   0  'Transparent
      Caption         =   "Komoditas / Comodity"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   14
      Top             =   3480
      Width           =   3855
   End
   Begin VB.Label Label10 
      BackStyle       =   0  'Transparent
      Caption         =   "Hasil Pengujian / Test Result"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   13
      Top             =   3840
      Width           =   4935
   End
End
Attribute VB_Name = "frmLaporanR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim ListIndex As Integer

Private Sub Command1_Click()
On Error Resume Next
frmKopLap.Show vbModal
Dim prvLaporanR As New rptLaporanR
prvLaporanR.Show vbModal
End Sub

Private Sub Command2_Click()
On Error Resume Next
Adodc2.Recordset.Update
Adodc1.Recordset!Tgl_Penerimaan = DTPicker1.Value
Adodc1.Recordset!Tgl_Pengujian = DTPicker2.Value
If Option1.Value = True Then
    Adodc1.Recordset!Berlaku_untuk_contoh = "V"
    Adodc1.Recordset!Berlaku_untuk_kelompok = ""
Else
    Adodc1.Recordset!Berlaku_untuk_contoh = ""
    Adodc1.Recordset!Berlaku_untuk_kelompok = "V"
End If
Adodc1.Recordset.Update
End Sub

Private Sub Command3_Click()
On Error Resume Next
DataGrid1.Enabled = True
Adodc2.Recordset.AddNew
Adodc2.Recordset!id_Laporan = id_Laporan
Adodc2.Recordset.Update
Adodc2.Refresh
DataGrid1.Refresh
End Sub

Private Sub Command4_Click()
On Error Resume Next
If (Not Adodc2.Recordset.EOF) And (Not Adodc2.Recordset.BOF) Then
    Adodc2.Recordset.Delete
End If
End Sub

Private Sub Command5_Click()
On Error Resume Next
frmDLaporan.Show
frmDLaporan.Adodc1.Refresh
frmDLaporan.DataGrid1.Refresh
Unload Me
End Sub

Private Sub DataGrid1_ButtonClick(ByVal ColIndex As Integer)
On Error Resume Next
ListIndex = ColIndex
DataList1(ListIndex).Top = DataGrid1.Top + DataGrid1.RowTop(DataGrid1.Row) + DataGrid1.RowHeight
DataList1(ListIndex).Left = DataGrid1.Left + DataGrid1.Columns(ColIndex).Left

DataList1(ListIndex).Width = DataGrid1.Columns(ColIndex).Width
DataList1(ListIndex).Height = 2880
DataList1(ListIndex).Visible = Not DataList1(ListIndex).Visible
If DataList1(ListIndex).Visible Then
   DataList1(ListIndex).Text = DataGrid1.Text
   DataList1(ListIndex).ZOrder
End If
End Sub

Private Sub DataGrid1_Click()
On Error Resume Next
DataList1(ListIndex).Visible = False
End Sub

Private Sub DataList1_Click(Index As Integer)
On Error Resume Next
DataGrid1.Text = DataList1(ListIndex).Text
DataList1(ListIndex).Visible = False
End Sub

Private Sub DataList1_LostFocus(Index As Integer)
On Error Resume Next
DataList1(ListIndex).Visible = False
End Sub

Private Sub DataGrid1_Scroll(Cancel As Integer)
On Error Resume Next
DataList1(ListIndex).Visible = False
End Sub

Private Sub Form_Activate()
On Error Resume Next
Adodc1.RecordSource = "SELECT * FROM pelaporan WHERE id_Laporan=" & id_Laporan
Adodc1.Refresh
Adodc2.RecordSource = "SELECT * FROM contoh_lap WHERE id_Laporan=" & id_Laporan & " ORDER BY id_Ujilap ASC"
Adodc2.Refresh
If Buat_Laporan = True Then
    Select Case Label2.Caption
    Case "GOLONGAN ORGANOFOSFAT":
        Jenis = "4"
    Case "GOLONGAN KARBAMAT":
        Jenis = "5"
    Case "GOLONGAN ORGANOKLOR":
        Jenis = "6"
    Case "GOLONGAN PIRETROID":
        Jenis = "7"
    End Select
    AdoResidu.RecordSource = "SELECT * FROM residu WHERE Jenis=" & Jenis
    AdoResidu.Refresh
    No = 1
    While Not AdoResidu.Recordset.EOF
        Adodc2.Recordset.AddNew
        Adodc2.Recordset!id_Laporan = id_Laporan
        Adodc2.Recordset!No = LTrim(Str(No))
        Adodc2.Recordset!Parameter_Uji = AdoResidu.Recordset!Standar
        Adodc2.Recordset.Update
        No = No + 1
        AdoResidu.Recordset.MoveNext
    Wend
    'delay (1)
    Adodc2.Refresh
End If
If Adodc1.Recordset!Berlaku_untuk_contoh = "V" Then
    Option1.Value = True
    Option2.Value = False
End If
If Adodc1.Recordset!Berlaku_untuk_kelompok = "V" Then
    Option2.Value = True
    Option1.Value = False
End If
DataGrid1.Refresh
ListIndex = 2
End Sub

Private Sub Form_Deactivate()
On Error Resume Next
Unload Me
End Sub
