VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MsComCtl.ocx"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form ProgressForm02 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Sending Progress..."
   ClientHeight    =   1905
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4515
   Icon            =   "ProgressForm02.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   1905
   ScaleWidth      =   4515
   Begin VB.CommandButton CancelBttn 
      Caption         =   "Cancel"
      Height          =   345
      Left            =   3360
      TabIndex        =   0
      Top             =   1530
      Width           =   1095
   End
   Begin MSComCtl2.Animation Animation1 
      Height          =   585
      Left            =   255
      TabIndex        =   1
      Top             =   30
      Width           =   4005
      _ExtentX        =   7064
      _ExtentY        =   1032
      _Version        =   393216
      FullWidth       =   267
      FullHeight      =   39
   End
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   225
      Left            =   90
      TabIndex        =   2
      Top             =   1260
      Width           =   4335
      _ExtentX        =   7646
      _ExtentY        =   397
      _Version        =   393216
      BorderStyle     =   1
      Appearance      =   1
   End
   Begin VB.Label ProgressLabel 
      AutoSize        =   -1  'True
      Caption         =   "0% Completed."
      Height          =   195
      Left            =   90
      TabIndex        =   4
      Top             =   1530
      Width           =   1050
   End
   Begin VB.Label FilePath 
      Caption         =   "C:\Winnt\system32\mecromedia\flash.ocx"
      Height          =   525
      Left            =   90
      TabIndex        =   3
      Top             =   690
      Width           =   4335
      WordWrap        =   -1  'True
   End
End
Attribute VB_Name = "ProgressForm02"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Declare Function RemoveMenu Lib "user32" _
(ByVal hMenu As Long, ByVal nPosition As Long, _
ByVal wFlags As Long) As Long
    
Private Declare Function GetSystemMenu Lib "user32" _
(ByVal hwnd As Long, ByVal bRevert As Long) As Long
Private Declare Function EnableMenuItem Lib "user32" _
(ByVal hMenu As Long, ByVal wIDEnableItem As Long, _
ByVal wEnable As Long) As Long
Private Const MF_BYCOMMAND = &H0&
Private Const MF_DISABLED = &H2&
Private Const SC_CLOSE = &HF060&

Private Sub CancelBttn_Click()
    CancelSend = True
End Sub

Private Sub Form_Load()
    RemoveMenu GetSystemMenu(Me.hwnd, False), SC_CLOSE, MF_BYCOMMAND
    'EnableMenuItem GetSystemMenu(Me.hwnd, False), SC_CLOSE, MF_BYCOMMAND Or MF_DISABLED
    Animation1.AutoPlay = True
    Animation1.Open App.Path & "\FileCopy.AVI"
End Sub

