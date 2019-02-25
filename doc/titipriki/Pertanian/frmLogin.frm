VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Begin VB.Form frmLogin 
   BackColor       =   &H00C0FFFF&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Login"
   ClientHeight    =   2025
   ClientLeft      =   2835
   ClientTop       =   3510
   ClientWidth     =   5190
   Icon            =   "frmLogin.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1196.437
   ScaleMode       =   0  'User
   ScaleWidth      =   4873.129
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin MSDataListLib.DataCombo DataCombo1 
      Bindings        =   "frmLogin.frx":0E42
      Height          =   315
      Left            =   2160
      TabIndex        =   4
      Top             =   240
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   556
      _Version        =   393216
      ListField       =   "Nama_User"
      Text            =   ""
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   3600
      Top             =   1320
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
      RecordSource    =   "users"
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
   Begin VB.CommandButton cmdOK 
      Caption         =   "OK"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   2040
      TabIndex        =   3
      Top             =   1320
      Width           =   1140
   End
   Begin VB.TextBox txtPassword 
      Height          =   345
      IMEMode         =   3  'DISABLE
      Left            =   2130
      PasswordChar    =   "*"
      TabIndex        =   2
      Top             =   645
      Width           =   2325
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   240
      Picture         =   "frmLogin.frx":0E57
      Stretch         =   -1  'True
      Top             =   240
      Width           =   480
   End
   Begin VB.Label lblLabels 
      BackStyle       =   0  'Transparent
      Caption         =   "&User Name:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Index           =   0
      Left            =   945
      TabIndex        =   0
      Top             =   270
      Width           =   1080
   End
   Begin VB.Label lblLabels 
      BackStyle       =   0  'Transparent
      Caption         =   "&Password:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Index           =   1
      Left            =   945
      TabIndex        =   1
      Top             =   660
      Width           =   1080
   End
End
Attribute VB_Name = "frmLogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdOK_Click()
On Error Resume Next
Adodc1.Refresh
Adodc1.Recordset.Find "Nama_User='" & DataCombo1.Text & "'"
If Not Adodc1.Recordset.EOF Then
    If Adodc1.Recordset!Password = txtPassword.Text Then
        If DataCombo1.Text <> "Admin" Then
            MDIForm1.mnuUser.Visible = False
        Else
            MDIForm1.mnuUser.Visible = True
        End If
        MDIForm1.StatusBar1.Panels(2).Text = DataCombo1.Text
        MDIForm1.Show
        Unload Me
        Exit Sub
    Else
        MsgBox "Nama user atau password salah!", vbExclamation, "Login"
    End If
Else
    MsgBox "Nama user atau password salah!", vbExclamation, "Login"
End If

End Sub

Private Sub Form_Deactivate()
On Error Resume Next
Unload Me
End Sub
