VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form frmMenuLap 
   BackColor       =   &H00C0FFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Buat Laporan"
   ClientHeight    =   4980
   ClientLeft      =   45
   ClientTop       =   465
   ClientWidth     =   4245
   Icon            =   "frmMenuLap.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4980
   ScaleWidth      =   4245
   StartUpPosition =   1  'CenterOwner
   Begin MSAdodcLib.Adodc Adodc2 
      Height          =   375
      Left            =   720
      Top             =   4680
      Visible         =   0   'False
      Width           =   1200
      _ExtentX        =   2117
      _ExtentY        =   661
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
      RecordSource    =   "SELECT * FROM contoh"
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
      Left            =   2520
      Top             =   4680
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
      RecordSource    =   "SELECT * FROM pelaporan ORDER BY id_Laporan DESC"
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
   Begin VB.CommandButton Command2 
      BackColor       =   &H00FFC0FF&
      Caption         =   "Cancel"
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
      Left            =   360
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   4200
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00FFFFC0&
      Caption         =   "OK"
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
      Left            =   2280
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   4200
      Width           =   1575
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Hasil Pengujian"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3735
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   3495
      Begin VB.OptionButton Option1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Formulasi Pestisida"
         Height          =   375
         Index           =   8
         Left            =   240
         TabIndex        =   11
         Top             =   3240
         Width           =   3015
      End
      Begin VB.OptionButton Option1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Komposisi Nutrisi"
         Height          =   375
         Index           =   3
         Left            =   240
         TabIndex        =   10
         Top             =   1440
         Width           =   3015
      End
      Begin VB.OptionButton Option1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Residu (Piretroid)"
         Height          =   375
         Index           =   7
         Left            =   240
         TabIndex        =   9
         Top             =   2880
         Width           =   3015
      End
      Begin VB.OptionButton Option1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Residu (Organoklor)"
         Height          =   375
         Index           =   6
         Left            =   240
         TabIndex        =   8
         Top             =   2520
         Width           =   3015
      End
      Begin VB.OptionButton Option1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Residu (Karbamat)"
         Height          =   375
         Index           =   5
         Left            =   240
         TabIndex        =   7
         Top             =   2160
         Width           =   3015
      End
      Begin VB.OptionButton Option1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Residu (Organofosfat)"
         Height          =   375
         Index           =   4
         Left            =   240
         TabIndex        =   6
         Top             =   1800
         Width           =   3015
      End
      Begin VB.OptionButton Option1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Organoleptik"
         Height          =   375
         Index           =   2
         Left            =   240
         TabIndex        =   5
         Top             =   1080
         Width           =   3015
      End
      Begin VB.OptionButton Option1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Mikrobiologi"
         Height          =   375
         Index           =   1
         Left            =   240
         TabIndex        =   4
         Top             =   720
         Width           =   3015
      End
      Begin VB.OptionButton Option1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Benih"
         Height          =   375
         Index           =   0
         Left            =   240
         TabIndex        =   3
         Top             =   360
         Value           =   -1  'True
         Width           =   3015
      End
   End
End
Attribute VB_Name = "frmMenuLap"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim pilihan As Integer

Private Sub Command1_Click()
On Error Resume Next

'berikan nomor lab
no_max = 0
thn_now = Format(Date, "Yy")

Adodc1.Refresh
'Adodc1.Recordset.MoveFirst
While Not Adodc1.Recordset.EOF
    thn = Mid(Adodc1.Recordset!no_seri, 1, 2)
    If thn = thn_now Then
        No = Val(Mid(Adodc1.Recordset!no_seri, 3, 5))
        If No > no_max Then no_max = No
    End If
    Adodc1.Recordset.MoveNext
Wend

Adodc1.Refresh
Adodc1.Recordset.AddNew
no_max = no_max + 1
no_seri = LTrim(Str(no_max))
While Len(no_seri) < 5
    no_seri = "0" & no_seri
Wend
no_seri = thn_now & no_seri
Adodc1.Recordset!no_seri = no_seri
Adodc1.Recordset!Tgl_Penerimaan = frmInduk.Adodc1.Recordset!Tgl_Penerimaan
Adodc1.Recordset!id_Permohonan = frmInduk.Adodc1.Recordset!id_Permohonan
Adodc1.Recordset!Nama = frmInduk.Adodc1.Recordset!Nama
Adodc1.Recordset!Alamat = frmInduk.Adodc1.Recordset!Alamat
Adodc1.Recordset!Instansi_Perusahaan = frmInduk.Adodc1.Recordset!Instansi_Perusahaan
Adodc1.Recordset!Telepon_Fax = frmInduk.Adodc1.Recordset!Telepon_Fax
Adodc1.Recordset!Kontak_Person = frmInduk.Adodc1.Recordset!Kontak_Person
Adodc1.Recordset!Jenis_Laporan = Option1(pilihan).Caption
Adodc1.Recordset!Pembuat = MDIForm1.StatusBar1.Panels(2).Text
Adodc1.Recordset!No_Contoh = frmInduk.Adodc1.Recordset!No_Contoh

Adodc2.RecordSource = "SELECT * FROM contoh WHERE id_Permohonan=" & frmInduk.Adodc1.Recordset!id_Permohonan & " ORDER BY id_Uji ASC"
Adodc2.Refresh
Jenis_Varietas = frmInduk.Adodc1.Recordset!Jenis_Varietas
Adodc2.Recordset.Find "id_Uji=" & frmInduk.Adodc1.Recordset!id_Uji
Adodc2.Recordset.MoveNext
While Not Adodc2.Recordset.EOF
    y = Len(Adodc2.Recordset!Komoditas)
    If y < 0 Then
        
    ElseIf y > 0 Then
        GoTo selesai
    Else
        Jenis_Varietas = Jenis_Varietas & Adodc2.Recordset!Jenis_Varietas
    End If
    Adodc2.Recordset.MoveNext
Wend
selesai:
Adodc1.Recordset!Komoditas = Jenis_Varietas
Adodc1.Recordset!Jenis = pilihan

If pilihan = 8 Then
    frmLaporan.Label1.Caption = "LAPORAN HASIL PENGUJIAN LABORATORIUM KIMIA"
    frmLaporan.Label2.Caption = "FORMULASI PESTISIDA"
    Adodc1.Recordset!Judul1 = "LAPORAN HASIL PENGUJIAN LABORATORIUM KIMIA"
    Adodc1.Recordset!Judul2 = "TEST REPORT OF CHEMICAL ANALYSIS LABORATORY"
    Adodc1.Recordset!Judul3 = "FORMULASI PESTISIDA"
    Adodc1.Recordset!Judul4 = "PESTICIDE FORMULATION"
    Adodc1.Recordset.Update
    Adodc1.Refresh
    id_Laporan = Adodc1.Recordset!id_Laporan
    Buat_Laporan = True
    Unload Me
    Unload frmInduk
    frmLaporanF.Show
ElseIf pilihan <= 3 Then
    Select Case pilihan
    Case 0:
        frmLaporan.Label1.Caption = "LAPORAN HASIL PENGUJIAN LABORATORIUM BENIH"
        frmLaporan.Label2.Caption = ""
        Adodc1.Recordset!Judul1 = "LAPORAN HASIL PENGUJIAN LABORATORIUM BENIH"
        Adodc1.Recordset!Judul2 = "TEST REPORT OF SEED ANALYSIS LABORATORY"
        Adodc1.Recordset!Judul3 = ""
        Adodc1.Recordset!Judul4 = ""
    Case 1:
        frmLaporan.Label1.Caption = "LAPORAN HASIL PENGUJIAN LABORATORIUM MIKROBIOLOGI"
        frmLaporan.Label2.Caption = ""
        Adodc1.Recordset!Judul1 = "LAPORAN HASIL PENGUJIAN LABORATORIUM MIKROBIOLOGI"
        Adodc1.Recordset!Judul2 = "TEST REPORT OF MICROBIOLOGY ANALYSIS LABORATORY"
        Adodc1.Recordset!Judul3 = ""
        Adodc1.Recordset!Judul4 = ""
    Case 2:
        frmLaporan.Label1.Caption = "LAPORAN HASIL PENGUJIAN LABORATORIUM ORGANOLEPTIK"
        frmLaporan.Label2.Caption = ""
        Adodc1.Recordset!Judul1 = "LAPORAN HASIL PENGUJIAN LABORATORIUM ORGANOLEPTIK"
        Adodc1.Recordset!Judul2 = "TEST REPORT OF ORGANOLEPTIC ANALYSIS LABORATORY"
        Adodc1.Recordset!Judul3 = ""
        Adodc1.Recordset!Judul4 = ""
    Case 3:
        frmLaporan.Label1.Caption = "LAPORAN HASIL PENGUJIAN LABORATORIUM KIMIA"
        frmLaporan.Label2.Caption = "KOMPOSISI NUTRISI"
        Adodc1.Recordset!Judul1 = "LAPORAN HASIL PENGUJIAN LABORATORIUM KIMIA"
        Adodc1.Recordset!Judul2 = "TEST REPORT OF CHEMICAL ANALYSIS LABORATORY"
        Adodc1.Recordset!Judul3 = "KOMPOSISI NUTRISI"
        Adodc1.Recordset!Judul4 = "NUTRITION COMPOSITION"
    End Select
    Adodc1.Recordset.Update
    Adodc1.Refresh
    id_Laporan = Adodc1.Recordset!id_Laporan
    Buat_Laporan = True
    Unload Me
    Unload frmInduk
    frmLaporan.Show
    frmLaporan.DataGrid1.Enabled = False
Else
    Select Case pilihan
    Case 4:
        frmLaporanR.Label1.Caption = "LAPORAN HASIL PENGUJIAN LABORATORIUM KIMIA (RESIDU PESTISIDA)"
        frmLaporanR.Label2.Caption = "GOLONGAN ORGANOFOSFAT"
        Adodc1.Recordset!Judul1 = "LAPORAN HASIL PENGUJIAN LABORATORIUM KIMIA (RESIDU PESTISIDA)"
        Adodc1.Recordset!Judul2 = "TEST REPORT OF CHEMICAL ANALYSIS LABORATORY (PESTICIDE RESIDUE)"
        Adodc1.Recordset!Judul3 = "GOLONGAN ORGANOFOSFAT"
        Adodc1.Recordset!Judul4 = "ORGANOPHOSPHORUS GROUP"
    Case 5:
        frmLaporanR.Label1.Caption = "LAPORAN HASIL PENGUJIAN LABORATORIUM KIMIA (RESIDU PESTISIDA)"
        frmLaporanR.Label2.Caption = "GOLONGAN KARBAMAT"
        Adodc1.Recordset!Judul1 = "LAPORAN HASIL PENGUJIAN LABORATORIUM KIMIA (RESIDU PESTISIDA)"
        Adodc1.Recordset!Judul2 = "TEST REPORT OF CHEMICAL ANALYSIS LABORATORY (PESTICIDE RESIDUE)"
        Adodc1.Recordset!Judul3 = "GOLONGAN KARBAMAT"
        Adodc1.Recordset!Judul4 = "CARBAMATE GROUP"
    Case 6:
        frmLaporanR.Label1.Caption = "LAPORAN HASIL PENGUJIAN LABORATORIUM KIMIA (RESIDU PESTISIDA)"
        frmLaporanR.Label2.Caption = "GOLONGAN ORGANOKLOR"
        Adodc1.Recordset!Judul1 = "LAPORAN HASIL PENGUJIAN LABORATORIUM KIMIA (RESIDU PESTISIDA)"
        Adodc1.Recordset!Judul2 = "TEST REPORT OF CHEMICAL ANALYSIS LABORATORY (PESTICIDE RESIDUE)"
        Adodc1.Recordset!Judul3 = "GOLONGAN ORGANOKLOR"
        Adodc1.Recordset!Judul4 = "ORGANOCHLOR GROUP"
    Case 7:
        frmLaporanR.Label1.Caption = "LAPORAN HASIL PENGUJIAN LABORATORIUM KIMIA (RESIDU PESTISIDA)"
        frmLaporanR.Label2.Caption = "GOLONGAN PIRETROID"
        Adodc1.Recordset!Judul1 = "LAPORAN HASIL PENGUJIAN LABORATORIUM KIMIA (RESIDU PESTISIDA)"
        Adodc1.Recordset!Judul2 = "TEST REPORT OF CHEMICAL ANALYSIS LABORATORY (PESTICIDE RESIDUE)"
        Adodc1.Recordset!Judul3 = "GOLONGAN PIRETROID"
        Adodc1.Recordset!Judul4 = "PYRETHROID GROUP"
    End Select
    Adodc1.Recordset.Update
    Adodc1.Refresh
    id_Laporan = Adodc1.Recordset!id_Laporan
    Buat_Laporan = True
    Unload Me
    Unload frmInduk
    frmLaporanR.Show
End If


End Sub

Private Sub Command2_Click()
On Error Resume Next
Unload Me
End Sub

Private Sub Option1_Click(Index As Integer)
On Error Resume Next
pilihan = Index
End Sub
