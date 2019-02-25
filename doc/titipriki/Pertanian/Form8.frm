VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form frmDPermohonan 
   BackColor       =   &H00C0FFC0&
   Caption         =   "Daftar Permohonan"
   ClientHeight    =   9210
   ClientLeft      =   60
   ClientTop       =   480
   ClientWidth     =   15105
   Icon            =   "Form8.frx":0000
   LinkTopic       =   "Form8"
   MDIChild        =   -1  'True
   ScaleHeight     =   9210
   ScaleWidth      =   15105
   WindowState     =   2  'Maximized
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   5760
      Top             =   3720
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
      RecordSource    =   "SELECT * FROM permohonan ORDER BY id_Permohonan DESC"
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
   Begin VB.Frame Frame1 
      BackColor       =   &H00FF8080&
      BorderStyle     =   0  'None
      Caption         =   "LIHAT"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5415
      Left            =   12600
      TabIndex        =   5
      Top             =   3240
      Width           =   2415
      Begin VB.CommandButton Command4 
         BackColor       =   &H00FFFFC0&
         Caption         =   "TANDA TERIMA LAPORAN"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   240
         Style           =   1  'Graphical
         TabIndex        =   10
         Top             =   4200
         Width           =   1935
      End
      Begin MSAdodcLib.Adodc Adodc3 
         Height          =   330
         Left            =   600
         Top             =   5040
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
         RecordSource    =   "SELECT * FROM kuitansi ORDER BY id_Kuitansi DESC;"
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
         BackColor       =   &H00C0FFFF&
         Caption         =   "PERMOHONAN PENGUJIAN"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   240
         Style           =   1  'Graphical
         TabIndex        =   2
         Top             =   360
         Width           =   1935
      End
      Begin VB.CommandButton Command2 
         BackColor       =   &H00C0E0FF&
         Caption         =   "KONTRAK KERJA PENGUJIAN"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   240
         Style           =   1  'Graphical
         TabIndex        =   3
         Top             =   1320
         Width           =   1935
      End
      Begin VB.CommandButton Command3 
         BackColor       =   &H00C0C0FF&
         Caption         =   "BUAT KUITANSI"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   240
         Style           =   1  'Graphical
         TabIndex        =   7
         Top             =   3240
         Width           =   1935
      End
      Begin VB.CommandButton Command8 
         BackColor       =   &H00C0FFC0&
         Caption         =   "LAPORAN HASIL PENGUJIAN"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   240
         Style           =   1  'Graphical
         TabIndex        =   6
         Top             =   2280
         Width           =   1935
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00FF8080&
      BorderStyle     =   0  'None
      Caption         =   "DATA"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1935
      Left            =   12600
      TabIndex        =   4
      Top             =   960
      Width           =   2415
      Begin MSAdodcLib.Adodc Adodc2 
         Height          =   330
         Left            =   600
         Top             =   1680
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
         RecordSource    =   ""
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
      Begin VB.CommandButton Command5 
         BackColor       =   &H00FFFFC0&
         Caption         =   "BARU"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   360
         Style           =   1  'Graphical
         TabIndex        =   0
         Top             =   240
         Width           =   1695
      End
      Begin VB.CommandButton Command6 
         BackColor       =   &H00C0C0FF&
         Caption         =   "HAPUS"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   360
         Style           =   1  'Graphical
         TabIndex        =   1
         Top             =   1080
         Width           =   1695
      End
   End
   Begin MSDataGridLib.DataGrid DataGrid1 
      Bindings        =   "Form8.frx":0442
      Height          =   7575
      Left            =   240
      TabIndex        =   8
      Top             =   1080
      Width           =   12135
      _ExtentX        =   21405
      _ExtentY        =   13361
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
      ColumnCount     =   14
      BeginProperty Column00 
         DataField       =   "id_Permohonan"
         Caption         =   "id_Permohonan"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   "dd/MM/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   "Tgl_Penerimaan"
         Caption         =   "Tgl_Penerimaan"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   1
            Format          =   "dd/MM/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
      EndProperty
      BeginProperty Column02 
         DataField       =   "Tgl_Pengambilan"
         Caption         =   "Tgl_Pengambilan"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   1
            Format          =   "dd/MM/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
      EndProperty
      BeginProperty Column03 
         DataField       =   "Tgl_Pengujian"
         Caption         =   "Tgl_Pengujian"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   1
            Format          =   "dd/MM/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
      EndProperty
      BeginProperty Column04 
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
      BeginProperty Column05 
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
      BeginProperty Column06 
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
      BeginProperty Column07 
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
      BeginProperty Column08 
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
      BeginProperty Column09 
         DataField       =   "Total_Biaya"
         Caption         =   "Total_Biaya"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   1
            Format          =   "#,##0"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
      EndProperty
      BeginProperty Column10 
         DataField       =   "Uang_Muka"
         Caption         =   "Uang_Muka"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   1
            Format          =   "#,##0"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
      EndProperty
      BeginProperty Column11 
         DataField       =   "Pelunasan"
         Caption         =   "Kekurangan"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   1
            Format          =   "#,##0"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
      EndProperty
      BeginProperty Column12 
         DataField       =   "Penerima"
         Caption         =   "Penerima"
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
      BeginProperty Column13 
         DataField       =   "Hasil_Kaji_Ulang"
         Caption         =   "Hasil_Kaji_Ulang"
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
            ColumnWidth     =   1244.976
         EndProperty
         BeginProperty Column02 
            ColumnWidth     =   1305.071
         EndProperty
         BeginProperty Column03 
            Object.Visible         =   0   'False
            ColumnWidth     =   1739.906
         EndProperty
         BeginProperty Column04 
            ColumnWidth     =   1500.095
         EndProperty
         BeginProperty Column05 
            ColumnWidth     =   1755.213
         EndProperty
         BeginProperty Column06 
            ColumnWidth     =   1995.024
         EndProperty
         BeginProperty Column07 
            Object.Visible         =   0   'False
            ColumnWidth     =   1739.906
         EndProperty
         BeginProperty Column08 
            Object.Visible         =   0   'False
            ColumnWidth     =   1739.906
         EndProperty
         BeginProperty Column09 
            ColumnWidth     =   945.071
         EndProperty
         BeginProperty Column10 
            ColumnWidth     =   945.071
         EndProperty
         BeginProperty Column11 
            ColumnWidth     =   900.284
         EndProperty
         BeginProperty Column12 
            ColumnWidth     =   854.929
         EndProperty
         BeginProperty Column13 
            Object.Visible         =   0   'False
            ColumnWidth     =   1739.906
         EndProperty
      EndProperty
   End
   Begin VB.Image Image1 
      Height          =   600
      Left            =   240
      Picture         =   "Form8.frx":0457
      Stretch         =   -1  'True
      Top             =   240
      Width           =   600
   End
   Begin VB.Label Label7 
      BackStyle       =   0  'Transparent
      Caption         =   "Daftar Permohonan Pengujian"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   30
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1080
      TabIndex        =   9
      Top             =   240
      Width           =   8655
   End
End
Attribute VB_Name = "frmDPermohonan"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
On Error Resume Next
id_Permohonan = Adodc1.Recordset!id_Permohonan
frmPermohonan.Show
frmPermohonan.DataGrid1.Enabled = True
Unload Me
End Sub

Private Sub Command2_Click()
On Error Resume Next
Command2.Enabled = False
id_Permohonan = Adodc1.Recordset!id_Permohonan
frmPenerimaan.Show
Unload Me
End Sub

Private Sub Command3_Click()
On Error Resume Next

Adodc3.RecordSource = "SELECT * FROM kuitansi ORDER BY id_Kuitansi DESC"
Adodc3.Refresh

'berikan nomor kuitansi
On Error Resume Next

'berikan nomor kuitansi
no_max = 0
bln_now = Format(Date, "Mm")
If Len(bln_now) = 1 Then bln_now = "0" & bln_now
thn_now = Format(Date, "Yy")

Adodc3.Recordset.MoveFirst
While Not Adodc3.Recordset.EOF
    garing1 = InStr(1, Adodc3.Recordset!No, "/")
    If garing1 > 0 Then garing2 = InStr(garing1 + 1, Adodc3.Recordset!No, "/")
    If garing2 > 0 Then garing3 = InStr(garing2 + 1, Adodc3.Recordset!No, "/")
    thn = Mid(Adodc3.Recordset!No, garing3 + 1, 2)
    If thn = thn_now Then
        No = Val(Mid(Adodc3.Recordset!No, 1, garing1 - 1))
        If No > no_max Then no_max = No
    End If
    Adodc3.Recordset.MoveNext
Wend
no_max = no_max + 1
no_kuitansi = LTrim(Str(no_max)) & "/BPMSHPHH/" & bln_now & "/" & thn_now

Adodc3.Refresh
Adodc3.Recordset.AddNew
Adodc3.Recordset!id_Permohonan = Adodc1.Recordset!id_Permohonan
Adodc3.Recordset!No = no_kuitansi
Adodc3.Recordset!Nama = Adodc1.Recordset!Nama
Adodc3.Recordset!Instansi_Perusahaan = Adodc1.Recordset!Instansi_Perusahaan
Adodc3.Recordset!Alamat = Adodc1.Recordset!Alamat
Adodc3.Recordset!Tanggal = Date
Adodc3.Recordset!Pembuat = MDIForm1.StatusBar1.Panels(2).Text
Adodc3.Recordset.Update
Adodc3.Refresh
id_Kuitansi = Adodc3.Recordset!id_Kuitansi
Buat_Lain = False
frmKuitansi.Show
Unload Me
End Sub

Private Sub Command4_Click()
On Error Resume Next
id_Permohonan = Adodc1.Recordset!id_Permohonan
Instansi_Perusahaan = Adodc1.Recordset!Instansi_Perusahaan
Nama_Pembawa = Adodc1.Recordset!Nama
frmTandaTerima.Show
Unload Me
End Sub

Private Sub Command5_Click()
On Error Resume Next
Adodc1.Recordset.AddNew
Adodc1.Recordset!Tgl_Penerimaan = Date
Adodc1.Recordset!Penerima = MDIForm1.StatusBar1.Panels(2).Text
Adodc1.Recordset.Update
Adodc1.Refresh
DataGrid1.Refresh
id_Permohonan = Adodc1.Recordset!id_Permohonan
frmPermohonan.Show
frmPermohonan.DataGrid1.Enabled = False
Unload Me
End Sub

Private Sub Command6_Click()
On Error Resume Next
x = MsgBox("Apakah Anda benar-benar ingin menghapus data ini?", vbCritical + vbYesNo, "Hapus Data")
If x = vbYes Then
    Adodc2.RecordSource = "SELECT * FROM contoh WHERE id_Permohonan=" & Adodc1.Recordset!id_Permohonan
    Adodc2.Refresh
    While (Not Adodc2.Recordset.EOF) And (Not Adodc2.Recordset.BOF)
        Adodc2.Recordset.Delete
        Adodc2.Recordset.MoveNext
    Wend
    Adodc1.Recordset.Delete
    Adodc1.Recordset.MoveFirst
End If
End Sub

Private Sub Command8_Click()
On Error Resume Next
frmDLaporan.Show
frmDLaporan.Adodc1.Refresh
frmDLaporan.Adodc1.Recordset.Find "id_Permohonan=" & Adodc1.Recordset!id_Permohonan
Unload Me
End Sub

Private Sub DataGrid1_Click()
On Error Resume Next
id_Permohonan = Adodc1.Recordset!id_Permohonan
End Sub

Private Sub Form_Activate()
On Error Resume Next
Command2.Enabled = True
Adodc1.Refresh
DataGrid1.Refresh
End Sub

Private Sub Form_Deactivate()
On Error Resume Next
Unload Me
End Sub
