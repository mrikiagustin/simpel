VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form frmBackup 
   BackColor       =   &H00C0FFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Backup Database"
   ClientHeight    =   3180
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7335
   Icon            =   "frmBackup.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3180
   ScaleWidth      =   7335
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0C0FF&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   975
      Left            =   240
      TabIndex        =   1
      Top             =   2040
      Width           =   6855
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Pastikan program Aplikasi Pengujian sudah ditutup sebelum melakukan Backup Database !"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   3
         Top             =   360
         Width           =   6495
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "PERHATIAN:"
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
         Left            =   240
         TabIndex        =   2
         Top             =   120
         Width           =   6375
      End
   End
   Begin MSComDlg.CommonDialog CD1 
      Left            =   6000
      Top             =   840
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Klik disini untuk Backup Database"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1575
      Left            =   2520
      Picture         =   "frmBackup.frx":08CA
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   240
      Width           =   2295
   End
End
Attribute VB_Name = "frmBackup"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
'On Error Resume Next
CD1.DefaultExt = "mdb"
CD1.Filter = "*.mdb"
tgl_backup = Format(Date, "dd_Mmm_Yyyy")
CD1.FileName = "database_" & tgl_backup & ".mdb"
CD1.ShowSave
If Len(CD1.FileName) > 0 Then
    Target = CD1.FileName
    FileCopy "C:\Program Files\Pertanian\database.mdb", Target
End If
End Sub

