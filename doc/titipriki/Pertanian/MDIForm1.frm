VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.MDIForm MDIForm1 
   BackColor       =   &H8000000C&
   Caption         =   "Aplikasi Pengujian"
   ClientHeight    =   8835
   ClientLeft      =   165
   ClientTop       =   855
   ClientWidth     =   15210
   Icon            =   "MDIForm1.frx":0000
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   375
      Left            =   0
      TabIndex        =   1
      Top             =   8460
      Width           =   15210
      _ExtentX        =   26829
      _ExtentY        =   661
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   2
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            AutoSize        =   2
            Bevel           =   0
            Text            =   "Nama_User : "
            TextSave        =   "Nama_User : "
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            AutoSize        =   1
            Object.Width           =   23733
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   1110
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   15210
      _ExtentX        =   26829
      _ExtentY        =   1958
      ButtonWidth     =   3149
      ButtonHeight    =   1799
      Appearance      =   1
      ImageList       =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   7
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "   Daftar Permohonan   "
            ImageIndex      =   3
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Daftar Kuitansi"
            ImageIndex      =   6
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Buku Induk"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Daftar Pengantar"
            ImageIndex      =   8
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Daftar Laporan"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Daftar Pelanggan"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Logout"
            ImageIndex      =   5
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   7440
      Top             =   1080
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   48
      ImageHeight     =   48
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   8
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":08CA
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":60BC
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":B8AE
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":BD00
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":C5DA
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":CEB4
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":D1CE
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":E020
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu mnuUser 
         Caption         =   "Manajemen &User"
      End
      Begin VB.Menu mnuLogout 
         Caption         =   "&Logout"
      End
      Begin VB.Menu sp1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuExit 
         Caption         =   "E&xit"
      End
   End
   Begin VB.Menu mnuDataUtama 
      Caption         =   "&Data Utama"
      Begin VB.Menu mnuInduk 
         Caption         =   "&Buku Induk"
      End
      Begin VB.Menu sp3 
         Caption         =   "-"
      End
      Begin VB.Menu mnuPermohonan 
         Caption         =   "Daftar Per&mohonan Pengujian"
      End
      Begin VB.Menu mnuPengantar 
         Caption         =   "Daftar Pengantar &Contoh"
      End
      Begin VB.Menu mnuLaporan 
         Caption         =   "Daftar &Laporan Pengujian"
      End
      Begin VB.Menu mnuPelanggan 
         Caption         =   "Daftar &Pelanggan"
      End
      Begin VB.Menu mnuKuitansi 
         Caption         =   "Daftar &Kuitansi"
      End
   End
   Begin VB.Menu mnuDataPendukung 
      Caption         =   "Data &Pendukung"
      Begin VB.Menu mnuParameter 
         Caption         =   "Daftar &Parameter Uji"
      End
      Begin VB.Menu mnuMetode 
         Caption         =   "Daftar &Metode Uji"
      End
      Begin VB.Menu sp2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuKemasan 
         Caption         =   "Daftar &Kemasan"
      End
      Begin VB.Menu mnuKondisi 
         Caption         =   "Daftar &Kondisi"
      End
      Begin VB.Menu sp4 
         Caption         =   "-"
      End
      Begin VB.Menu mnuLab 
         Caption         =   "Daftar &Laboratorium"
      End
      Begin VB.Menu mnuPejabat 
         Caption         =   "Daftar Pe&jabat"
      End
   End
End
Attribute VB_Name = "MDIForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub MDIForm_Load()
On Error Resume Next
frmDPermohonan.Show
End Sub

Private Sub mnuExit_Click()
On Error Resume Next
End
End Sub

Private Sub mnuInduk_Click()
On Error Resume Next
    Unload frmPelanggan
    Unload frmDPermohonan
    Unload frmPermohonan
    Unload frmLaporan
    Unload frmPenerimaan
    Unload frmPengantar
    Unload frmDPengantar
    Unload frmDLaporan
    Unload frmDKuitansi
    frmInduk.Show
End Sub

Private Sub mnuKemasan_Click()
On Error Resume Next
frmPendukung.Show vbModal
End Sub

Private Sub mnuKondisi_Click()
On Error Resume Next
frmPendukung.Show vbModal
End Sub

Private Sub mnuKuitansi_Click()
On Error Resume Next
    Unload frmPelanggan
    Unload frmDPermohonan
    Unload frmPermohonan
    Unload frmLaporan
    Unload frmPenerimaan
    Unload frmPengantar
    Unload frmDPengantar
    Unload frmDLaporan
    Unload frmInduk
    frmDKuitansi.Show
End Sub

Private Sub mnuLab_Click()
On Error Resume Next
frmPendukung.Show vbModal
End Sub

Private Sub mnuLaporan_Click()
On Error Resume Next
    Unload frmPelanggan
    Unload frmDPermohonan
    Unload frmDPengantar
    Unload frmPermohonan
    Unload frmLaporan
    Unload frmPenerimaan
    Unload frmPengantar
    Unload frmInduk
    Unload frmDKuitansi
    frmDLaporan.Show
End Sub

Private Sub mnuLogout_Click()
On Error Resume Next
    Unload frmPelanggan
    Unload Me
    frmLogin.Show
End Sub

Private Sub mnuMetode_Click()
On Error Resume Next
frmPendukung.Show vbModal
End Sub

Private Sub mnuParameter_Click()
On Error Resume Next
frmPendukung.Show vbModal
End Sub

Private Sub mnuPejabat_Click()
On Error Resume Next
frmPendukung.Show vbModal
End Sub

Private Sub mnuPelanggan_Click()
On Error Resume Next
    frmPelanggan.Command1.Visible = False
    frmPelanggan.Show vbModal
    frmPelanggan.Command1.Visible = True
End Sub

Private Sub mnuPengantar_Click()
On Error Resume Next
    Unload frmPelanggan
    Unload frmDPermohonan
    Unload frmDLaporan
    Unload frmPermohonan
    Unload frmLaporan
    Unload frmPenerimaan
    Unload frmPengantar
    Unload frmInduk
    Unload frmDKuitansi
    frmDPengantar.Show
End Sub

Private Sub mnuPermohonan_Click()
On Error Resume Next
    Unload frmPelanggan
    Unload frmInduk
    Unload frmPermohonan
    Unload frmLaporan
    Unload frmPenerimaan
    Unload frmPengantar
    Unload frmDPengantar
    Unload frmDLaporan
    Unload frmDKuitansi
    frmDPermohonan.Show
End Sub

Private Sub mnuUser_Click()
On Error Resume Next
    frmUsers.Show vbModal
End Sub

Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
On Error Resume Next
Select Case Button.Index
Case 1:
    Unload frmPelanggan
    Unload frmInduk
    Unload frmPermohonan
    Unload frmLaporan
    Unload frmPenerimaan
    Unload frmPengantar
    Unload frmDPengantar
    Unload frmDLaporan
    Unload frmDKuitansi
    frmDPermohonan.Show
Case 2:
    Unload frmPelanggan
    Unload frmDPermohonan
    Unload frmPermohonan
    Unload frmLaporan
    Unload frmPenerimaan
    Unload frmPengantar
    Unload frmDPengantar
    Unload frmDLaporan
    Unload frmInduk
    frmDKuitansi.Show
Case 3:
    Unload frmPelanggan
    Unload frmDPermohonan
    Unload frmPermohonan
    Unload frmLaporan
    Unload frmPenerimaan
    Unload frmPengantar
    Unload frmDPengantar
    Unload frmDLaporan
    Unload frmDKuitansi
    frmInduk.Show
Case 4:
    Unload frmPelanggan
    Unload frmDPermohonan
    Unload frmDLaporan
    Unload frmPermohonan
    Unload frmLaporan
    Unload frmPenerimaan
    Unload frmPengantar
    Unload frmInduk
    Unload frmDKuitansi
    frmDPengantar.Show
Case 5:
    Unload frmPelanggan
    Unload frmDPermohonan
    Unload frmDPengantar
    Unload frmPermohonan
    Unload frmLaporan
    Unload frmPenerimaan
    Unload frmPengantar
    Unload frmInduk
    Unload frmDKuitansi
    frmDLaporan.Show
Case 6:
    frmPelanggan.Command1.Visible = False
    frmPelanggan.Show vbModal
    frmPelanggan.Command1.Visible = True
Case 7:
    Unload frmPelanggan
    Unload Me
    frmLogin.Show
End Select
End Sub
