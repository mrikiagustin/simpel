Attribute VB_Name = "Module1"
Global id_Permohonan As Long
Global id_Pengantar As Long
Global id_Laporan As Long
Global id_Kuitansi As Long
Global Buat_Pengantar As Boolean
Global Buat_Laporan As Boolean
Global Kop As Boolean
Global Buat_Lain As Boolean
Global Instansi_Perusahaan As String
Global Nama_Pembawa As String

Function delay(lama As Double)
waktu = DateAdd("s", lama, Now)
Do
    DoEvents
Loop Until Now > waktu
End Function
