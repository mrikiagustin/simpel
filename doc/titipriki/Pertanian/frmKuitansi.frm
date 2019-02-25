VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "Msadodc.ocx"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "Mscomct2.ocx"
Begin VB.Form frmKuitansi 
   BackColor       =   &H00C0E0FF&
   Caption         =   "Kuitansi"
   ClientHeight    =   9345
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   14970
   Icon            =   "frmKuitansi.frx":0000
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   9345
   ScaleWidth      =   14970
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
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
      Left            =   12960
      Style           =   1  'Graphical
      TabIndex        =   19
      Top             =   5400
      Width           =   1455
   End
   Begin MSAdodcLib.Adodc Adodc2 
      Height          =   330
      Left            =   11640
      Top             =   6120
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
      CommandType     =   8
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
      RecordSource    =   "SELECT * FROM permohonan;"
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
      Left            =   7440
      Top             =   4920
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
      RecordSource    =   "SELECT * FROM kuitansi"
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
   Begin MSComCtl2.DTPicker DTPicker1 
      DataField       =   "Tanggal"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   12720
      TabIndex        =   18
      Top             =   1680
      Width           =   1695
      _ExtentX        =   2990
      _ExtentY        =   661
      _Version        =   393216
      CheckBox        =   -1  'True
      Format          =   21889025
      CurrentDate     =   39531
   End
   Begin VB.TextBox Text6 
      DataField       =   "Bukti_Kas"
      DataSource      =   "Adodc1"
      Height          =   285
      Left            =   12720
      TabIndex        =   16
      Top             =   1320
      Width           =   1695
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0C0FF&
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
      Left            =   11400
      Style           =   1  'Graphical
      TabIndex        =   15
      Top             =   5400
      Width           =   1335
   End
   Begin VB.CommandButton Command5 
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
      Left            =   9720
      Style           =   1  'Graphical
      TabIndex        =   14
      Top             =   5400
      Width           =   1455
   End
   Begin VB.TextBox Text5 
      Alignment       =   1  'Right Justify
      DataField       =   "Rp"
      DataSource      =   "Adodc1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   2640
      TabIndex        =   12
      Top             =   3480
      Width           =   1815
   End
   Begin VB.ComboBox Combo1 
      DataField       =   "Untuk"
      DataSource      =   "Adodc1"
      Height          =   315
      ItemData        =   "frmKuitansi.frx":0E42
      Left            =   2640
      List            =   "frmKuitansi.frx":0E4C
      TabIndex        =   11
      Top             =   3000
      Width           =   11775
   End
   Begin VB.TextBox Text4 
      DataField       =   "Jumlah"
      DataSource      =   "Adodc1"
      Height          =   285
      Left            =   2640
      TabIndex        =   13
      Top             =   4080
      Width           =   11775
   End
   Begin VB.TextBox Text3 
      DataField       =   "Alamat"
      DataSource      =   "Adodc1"
      Height          =   285
      Left            =   2640
      TabIndex        =   10
      Top             =   2640
      Width           =   11775
   End
   Begin VB.TextBox Text2 
      DataField       =   "Nama"
      DataSource      =   "Adodc1"
      Height          =   285
      Left            =   2640
      TabIndex        =   9
      Top             =   2280
      Width           =   11775
   End
   Begin VB.TextBox Text1 
      Alignment       =   1  'Right Justify
      DataField       =   "No"
      DataSource      =   "Adodc1"
      Height          =   285
      Left            =   960
      TabIndex        =   17
      Top             =   1560
      Width           =   2055
   End
   Begin VB.Label Label9 
      BackStyle       =   0  'Transparent
      Caption         =   "Tanggal"
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
      Left            =   11760
      TabIndex        =   8
      Top             =   1680
      Width           =   975
   End
   Begin VB.Label Label8 
      BackStyle       =   0  'Transparent
      Caption         =   "Bukti Kas"
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
      Left            =   11760
      TabIndex        =   7
      Top             =   1320
      Width           =   975
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "Rp"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   360
      TabIndex        =   6
      Top             =   3480
      Width           =   615
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "Untuk pembayaran"
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
      Left            =   360
      TabIndex        =   5
      Top             =   3000
      Width           =   2295
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Terbilang"
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
      Left            =   360
      TabIndex        =   4
      Top             =   4200
      Width           =   2295
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Alamat"
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
      Left            =   360
      TabIndex        =   3
      Top             =   2640
      Width           =   2295
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Sudah terima dari"
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
      Left            =   360
      TabIndex        =   2
      Top             =   2280
      Width           =   2295
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "No"
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
      Left            =   360
      TabIndex        =   1
      Top             =   1560
      Width           =   375
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "KUITANSI"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4560
      TabIndex        =   0
      Top             =   240
      Width           =   6015
   End
End
Attribute VB_Name = "frmKuitansi"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Combo1_Click()
On Error Resume Next
If Buat_Lain = False Then
    If Combo1.Text = Combo1.List(0) Then
        Text5.Text = Adodc2.Recordset!Uang_Muka
    End If
    If Combo1.Text = Combo1.List(1) Then
        Text5.Text = Adodc2.Recordset!Pelunasan
    End If
    Text5_LostFocus
End If
End Sub

Private Sub Command1_Click()
On Error Resume Next
frmDKuitansi.Show
Unload Me
End Sub

Private Sub Command3_Click()
On Error Resume Next
Adodc1.Recordset!Tanggal = DTPicker1.Value
Adodc1.Recordset.Update
End Sub

Private Sub Command5_Click()
On Error Resume Next
Dim prvKuitansi As New rptKuitansi
prvKuitansi.Show vbModal
End Sub

Private Sub Form_Activate()
On Error Resume Next
Adodc1.RecordSource = "SELECT * FROM kuitansi WHERE id_Kuitansi=" & id_Kuitansi
Adodc1.Refresh
If Buat_Lain = False Then
    Adodc2.RecordSource = "SELECT * FROM permohonan WHERE id_Permohonan=" & Adodc1.Recordset!id_Permohonan
    Adodc2.Refresh
End If
angka = Val(Text5.Text) * 1
Text5.Text = Format(angka, "#,##0")
End Sub

Private Sub Form_Deactivate()
On Error Resume Next
Unload Me
End Sub

Private Sub Text5_LostFocus()
On Error Resume Next
angka = Val(Text5.Text) * 1
Text5.Text = Format(angka, "#,##0")
Text4.Text = SayNumber(angka) & "Rupiah"
End Sub

Function SayNumber(nNumber As Variant, _
                   Optional SayKoma As Boolean = False) As String
On Error Resume Next
  Dim i As Long
  Dim s As String
  Dim s2 As Double
  Dim x As String
  Dim minus As Boolean
  Dim nBulat As Double
  
  If TypeName(nNumber) = "String" Then
    If Trim(Mid$(nNumber, 1, 1) = "-") Then
      minus = True
      nNumber = Mid(nNumber, 2)
    End If
    x = Trim(CDbl(nNumber))
    
  Else
    If nNumber < 0 Then
      nNumber = Abs(nNumber)
      minus = True
    End If
    x = FormatNumber(nNumber, 2)
  End If
  s = SayN(Int(nNumber))
  If minus Then SayNumber = "Minus " & s Else SayNumber = s
End Function

Function SayN(nNumber As Double) As String
On Error Resume Next
Dim z, s, a, c, x
Dim ulang As Double
Dim i As Byte
Dim tampung(5) As String
Dim n As String
  n = LTrim(RTrim(nNumber))
  ulang = (Len(n) - 1) \ 3 + 1
  
  For i = 1 To ulang
     If Len(n) > 3 Then
       c = Mid$(n, Len(n) - 2, 3)
       n = Mid$(n, 1, Len(n) - 3)
       tampung(i) = c
     Else
       tampung(i) = n
     End If
  Next i
  
  z = ""
  If n = "0" Then
    z = "Nol "
  Else
    i = ulang
    Do
      a = ""
      x = ""
      s = tampung(i)
      While Len(s) < 3
        s = "0" + s
      Wend
      
      'digit ratusan
      If Mid$(s, 1, 1) <> "0" Then
        If Mid$(s, 1, 1) = "1" Then
          a = a + "Seratus "
        Else
          a = a + Nama(Mid$(s, 1, 1)) + "Ratus "
        End If
      End If
  
      'digit 11-19
      If Mid$(s, 2, 1) = "1" Then
        If (Mid$(s, 3, 1) <> "1") And (Mid$(s, 3, 1) <> "0") Then
          a = a + Nama(Mid$(s, 3, 1)) + "Belas "
        End If
        If Mid$(s, 3, 1) = "1" Then a = a + "Sebelas "
        If Mid$(s, 3, 1) = "0" Then a = a + "Sepuluh "
      End If
  
      'digit puluhan
      If (Mid$(s, 2, 1) <> "1") And _
         (s <> "000") And (Mid$(s, 2, 1) <> "0") Then
           a = a + Nama(Mid$(s, 2, 1)) + "Puluh "
      End If
      
      If (Mid$(s, 3, 1) <> "0") And (Mid$(s, 2, 1) <> "1") Then
        a = a + Nama(Mid$(s, 3, 1))
      End If

      'perkecualian untuk seribu
      If (i = 2) Then
        If s = "001" Then a = "Se"
      End If
      
      If s <> "000" Then
        If i = 1 Then x = ""
        If i = 2 Then x = "Ribu "
        If i = 3 Then x = "Juta "
        If i = 4 Then x = "Miliar "
        If i = 5 Then x = "Triliun "
      End If
      If a = "Se" Then x = LCase(x)
      z = z + a + x
      i = i - 1
    Loop Until i = 0
  End If
  SayN = z
End Function

Private Function Nama(a As String) As String
On Error Resume Next
  Select Case a
    Case "1": Nama = "Satu "
    Case "2": Nama = "Dua "
    Case "3": Nama = "Tiga "
    Case "4": Nama = "Empat "
    Case "5": Nama = "Lima "
    Case "6": Nama = "Enam "
    Case "7": Nama = "Tujuh "
    Case "8": Nama = "Delapan "
    Case "9": Nama = "Sembilan "
    Case "0": Nama = ""
  End Select
End Function

