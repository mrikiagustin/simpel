VERSION 5.00
Object = "{C4847593-972C-11D0-9567-00A0C9273C2A}#8.0#0"; "crviewer.dll"
Begin VB.Form rptLaporan 
   Caption         =   "Cetak Laporan"
   ClientHeight    =   7830
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   12765
   Icon            =   "rptLaporan.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   7830
   ScaleWidth      =   12765
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin CRVIEWERLibCtl.CRViewer CRViewer1 
      Height          =   7000
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   5800
      DisplayGroupTree=   -1  'True
      DisplayToolbar  =   -1  'True
      EnableGroupTree =   -1  'True
      EnableNavigationControls=   -1  'True
      EnableStopButton=   -1  'True
      EnablePrintButton=   -1  'True
      EnableZoomControl=   -1  'True
      EnableCloseButton=   -1  'True
      EnableProgressControl=   -1  'True
      EnableSearchControl=   -1  'True
      EnableRefreshButton=   0   'False
      EnableDrillDown =   -1  'True
      EnableAnimationControl=   0   'False
      EnableSelectExpertButton=   0   'False
      EnableToolbar   =   -1  'True
      DisplayBorder   =   0   'False
      DisplayTabs     =   -1  'True
      DisplayBackgroundEdge=   -1  'True
      SelectionFormula=   ""
      EnablePopupMenu =   -1  'True
      EnableExportButton=   0   'False
      EnableSearchExpertButton=   0   'False
      EnableHelpButton=   0   'False
   End
End
Attribute VB_Name = "rptLaporan"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Report As New crLaporan

Private Sub Form_Deactivate()
Unload Me
End Sub

Private Sub Form_Load()
If Kop = False Then
    Report.Text5.Suppress = True
    Report.Text6.Suppress = True
    Report.Text7.Suppress = True
    Report.Text8.Suppress = True
    Report.Text9.Suppress = True
    Report.Text10.Suppress = True
    Report.Text50.Suppress = True
    Report.Text51.Suppress = True
    Report.Box5.Suppress = True
    Report.Picture1.Suppress = True
    Report.Line1.Suppress = True
End If
Screen.MousePointer = vbHourglass
Report.RecordSelectionFormula = "{ado.id_Laporan}=" & id_Laporan
Report.Database.Verify
CRViewer1.ReportSource = Report
CRViewer1.ViewReport
Screen.MousePointer = vbDefault
CRViewer1.EnableGroupTree = False
CRViewer1.ReportSource = Report

End Sub

Private Sub Form_Resize()
CRViewer1.Top = 0
CRViewer1.Left = 0
CRViewer1.Height = ScaleHeight
CRViewer1.Width = ScaleWidth

End Sub
