VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4815
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7170
   LinkTopic       =   "Form1"
   ScaleHeight     =   4815
   ScaleWidth      =   7170
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "Save"
      Height          =   735
      Left            =   3240
      TabIndex        =   6
      Top             =   3000
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Расчёт"
      Height          =   855
      Left            =   3240
      TabIndex        =   5
      Top             =   1680
      Width           =   1575
   End
   Begin VB.TextBox Text2 
      Height          =   1815
      Left            =   360
      MultiLine       =   -1  'True
      TabIndex        =   4
      Top             =   2880
      Width           =   2535
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Open"
      Height          =   735
      Left            =   3240
      TabIndex        =   2
      Top             =   480
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      Height          =   1815
      Left            =   360
      MultiLine       =   -1  'True
      TabIndex        =   0
      Top             =   480
      Width           =   2535
   End
   Begin VB.Label Label2 
      Caption         =   "Конечная матрица"
      ForeColor       =   &H8000000D&
      Height          =   255
      Left            =   360
      TabIndex        =   3
      Top             =   2520
      Width           =   2535
   End
   Begin VB.Label Label1 
      Caption         =   "Исходная матрица"
      ForeColor       =   &H8000000D&
      Height          =   375
      Left            =   360
      TabIndex        =   1
      Top             =   120
      Width           =   2535
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Matrix() As TMatrix
Dim OutMatrix() As TMatrix
Dim MatrixSize As Integer

Private Sub ShowMatrix()
Dim i As Integer
Dim j As Integer
Text2.Text = ""
 For j = 0 To MatrixSize - 1
  For i = 0 To OutMatrix(j).Size - 1
   If Text2.Text = "" Then
      Text2.Text = OutMatrix(j).MLine(i)
    ElseIf i = 0 Then
      Text2.Text = Text2.Text & OutMatrix(j).MLine(i)
    Else
      Text2.Text = Text2.Text & ";" & OutMatrix(j).MLine(i)
   End If
  Next
  Text2.Text = Text2.Text & Chr(13) & Chr(10)
 Next
End Sub

Private Sub Command1_Click()
 Dim MatrixLine As String
 Dim i As Integer
 Dim EndLine As String
  Text1.Text = ""
  i = 0
  Open "D:\Matrix.txt" For Input As #1
   Do While Not EOF(1)
    Line Input #1, MatrixLine
     Text1.Text = Text1.Text & EndLine & MatrixLine
     EndLine = Chr(13) & Chr(10)
     i = i + l
   Loop
  Close #1
End Sub

Private Sub Command2_Click()
  MatrixSize = GetMatrix(Matrix())
  MatrixSize = CreateOutMatrix(OutMatrix(), Matrix(), MatrixSize)
  ShowMatrix
End Sub


Private Sub Command3_Click()
 Dim MatrixLine As String
 Dim i As Integer
 Dim EndLine As String
  Open "D:\Matrix.txt" For Output As #1
  MatrixText = Text2.Text
   Do While Len(MatrixText) > 0
    If InStr(1, MatrixText, Chr(13)) Then
       MatrixLine = Left(MatrixText, InStr(1, MatrixText, Chr(13)) - 1)
       MatrixText = Right(MatrixText, Len(MatrixText) - InStr(1, MatrixText, Chr(10)))
    Else
    MatrixLine = MatrixText
    MatrixText = ""
    End If
    Print #1, MatrixLine
   Loop
  Close #1
End Sub
