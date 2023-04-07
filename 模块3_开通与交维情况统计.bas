Attribute VB_Name = "ģ��3_��ͨ�뽻ά���ͳ��"
Option Explicit

Sub ��ť3_Click()   '��ͨ�뽻ά���ͳ��

    Dim MyWorkbook As Workbook
    Dim i As Long, MyRows As Long
    Dim fName As String, filename As String
    Dim TempArray, TempArray1, TempArray2, TempArray3, TempArray4, TempArray5 As Variant

    Set MyWorkbook = ThisWorkbook

    Application.ScreenUpdating = False
    Application.DisplayAlerts = False
    
    

    MyRows = Sheet8.UsedRange.Rows.Count
    If MyRows > 1 Then
        Sheet8.Select
        Range("Q2").FormulaR1C1 = "=COUNTIFS(������˹���!C[-16],RC[-3],������˹���!C[-3],""ͨ��"")"
        Range("R2").FormulaR1C1 = "=COUNTIFS(������˹���!C[-17],RC[-4],������˹���!C[-4],""�˻�"")"
        Range("Q2:R" & MyRows).Select
        Selection.FillDown
        Selection.Copy
        Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False
        Range("A1").Select
    End If

    MyRows = Sheet1.UsedRange.Rows.Count
    If MyRows > 1 Then
        Sheet1.Select
        Range("R2").FormulaR1C1 = "=IFERROR(INDEX('5Gվ�㿪ͨ�嵥'!C[-16],MATCH(RC[-17],'5Gվ�㿪ͨ�嵥'!C[-3],0)),"""")"
        Range("T2").FormulaR1C1 = "=IFERROR(INDEX('5Gվ�㿪ͨ�嵥'!C[-11],MATCH(RC[-19],'5Gվ�㿪ͨ�嵥'!C[-5],0)),"""")"
        Range("R2:T" & MyRows).Select
        Selection.FillDown
        Selection.Copy
        Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False
        Range("A1").Select
    End If
    
    
    MyRows = Sheet3.UsedRange.Rows.Count
    If MyRows > 1 Then
        Sheet3.Select
        Range("R2").FormulaR1C1 = "=IFERROR(INDEX('5Gվ�㿪ͨ�嵥'!C[-16],MATCH(RC[-17],'5Gվ�㿪ͨ�嵥'!C[-3],0)),"""")"
        Range("T2").FormulaR1C1 = "=IFERROR(INDEX('5Gվ�㿪ͨ�嵥'!C[-11],MATCH(RC[-19],'5Gվ�㿪ͨ�嵥'!C[-5],0)),"""")"
        Range("R2:T" & MyRows).Select
        Selection.FillDown
        Selection.Copy
        Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False
        Range("A1").Select
    End If
    

    Sheet4.Select
    Range("B3").FormulaR1C1 = "=SUM(COUNTIFS(������˹���!C[3],RC[-1],������˹���!C[12],""ͨ��"",������˹���!C,""����""))"
    Range("C3").FormulaR1C1 = "=SUM(COUNTIFS(������˹���!C[2],RC[-2],������˹���!C[11],""�˻�"",������˹���!C[-1],""����""))"
    Range("D3").FormulaR1C1 = "=SUM(COUNTIFS(������˹���!C[1],RC[-3],������˹���!C[10],""ͨ��"",������˹���!C[-2],{""����"",""����2.0""}))"
    Range("E3").FormulaR1C1 = "=SUM(COUNTIFS(������˹���!C,RC[-4],������˹���!C[9],""�˻�"",������˹���!C[-3],{""����"",""����2.0""}))"
    Range("F3").FormulaR1C1 = "=SUM(COUNTIFS(������˹���!C[-1],RC[-5],������˹���!C[8],""ͨ��""))"
    Range("G3").FormulaR1C1 = "=SUM(COUNTIFS(������˹���!C[-2],RC[-6],������˹���!C[7],""�˻�""))"
    Range("H3").FormulaR1C1 = "=RC[-1]+RC[-2]"
    Range("I3").FormulaR1C1 = "=IFERROR(RC[-2]/RC[-1],0)"
    Range("J3").FormulaR1C1 = "=SUM(COUNTIFS(������˹���!C[-5],RC[-9],������˹���!C[4],""ͨ��"",������˹���!C[3],""*����*""))"
    Range("K3").FormulaR1C1 = "=SUM(COUNTIFS(������˹���!C[-6],RC[-10],������˹���!C[3],""�˻�"",������˹���!C[2],""*����*""))"
    Range("B3:K13").Select
    Selection.FillDown

    Range("B20").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[1],RC[-1],'5Gվ�㿪ͨ�嵥'!C[7],""��վ"",'5Gվ�㿪ͨ�嵥'!C[8],""*��ͨ*"")"
    Range("C20").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C,RC[-2],'5Gվ�㿪ͨ�嵥'!C[6],""�ҷ�"",'5Gվ�㿪ͨ�嵥'!C[7],""*��ͨ*"")"
    Range("D20").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-1],RC[-3],'5Gվ�㿪ͨ�嵥'!C[5],""��վ"",'5Gվ�㿪ͨ�嵥'!C[6],""*��ͨ*"",'5Gվ�㿪ͨ�嵥'!C[13],""�ѽ�ά"")"
    Range("E20").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-2],RC[-4],'5Gվ�㿪ͨ�嵥'!C[4],""�ҷ�"",'5Gվ�㿪ͨ�嵥'!C[5],""*��ͨ*"",'5Gվ�㿪ͨ�嵥'!C[12],""�ѽ�ά"")"
    Range("F20").FormulaR1C1 = "=IFERROR((RC[-2]+RC[-1])/(RC[-4]+RC[-3]),"""")"
    Range("G20").FormulaR1C1 = "=RC[-5]-RC[-3]"
    Range("H20").FormulaR1C1 = "=RC[-5]-RC[-3]"
    Range("I20").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-6],RC[-8],'5Gվ�㿪ͨ�嵥'!C,""��վ"",'5Gվ�㿪ͨ�嵥'!C[4],1,'5Gվ�㿪ͨ�嵥'!C[8],""δ��ά"")"
    Range("J20").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-7],RC[-9],'5Gվ�㿪ͨ�嵥'!C[-1],""�ҷ�"",'5Gվ�㿪ͨ�嵥'!C[3],1,'5Gվ�㿪ͨ�嵥'!C[7],""δ��ά"")"
    Range("K20").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-8],RC[-10],'5Gվ�㿪ͨ�嵥'!C[-2],""��վ"",'5Gվ�㿪ͨ�嵥'!C[3],1,'5Gվ�㿪ͨ�嵥'!C[6],""δ��ά"")"
    Range("L20").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-9],RC[-11],'5Gվ�㿪ͨ�嵥'!C[-3],""�ҷ�"",'5Gվ�㿪ͨ�嵥'!C[2],1,'5Gվ�㿪ͨ�嵥'!C[5],""δ��ά"")"
    Range("M20").FormulaR1C1 = "=SUM(COUNTIFS(������˹���!C[-8],RC[-12],������˹���!C[1],""ͨ��"",������˹���!C,{""5G����"",""*NR*����"",""*NR-700*"",""*700M*""}))"
    Range("N20").FormulaR1C1 = "=SUM(COUNTIFS(������˹���!C[-9],RC[-13],������˹���!C,""�˻�"",������˹���!C[-1],{""5G����"",""*NR*����"",""*NR-700*"",""*700M*""}))"
    Range("O20").FormulaR1C1 = "=IFERROR(RC[-1]/(RC[-2]+RC[-1]),0)"
    Range("B20:O30").Select
    Selection.FillDown
    Selection.Copy
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False

    Range("B37").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C,""5G����"",'5Gվ�㿪ͨ�嵥'!C[1],RC[-1],'5Gվ�㿪ͨ�嵥'!C[7],""��վ"",'5Gվ�㿪ͨ�嵥'!C[8],""*��ͨ*"")"
    Range("C37").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-1],""5G����"",'5Gվ�㿪ͨ�嵥'!C,RC[-2],'5Gվ�㿪ͨ�嵥'!C[6],""�ҷ�"",'5Gվ�㿪ͨ�嵥'!C[7],""*��ͨ*"")"
    Range("D37").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-2],""5G����"",'5Gվ�㿪ͨ�嵥'!C[-1],RC[-3],'5Gվ�㿪ͨ�嵥'!C[5],""��վ"",'5Gվ�㿪ͨ�嵥'!C[6],""*��ͨ*"",'5Gվ�㿪ͨ�嵥'!C[13],""�ѽ�ά"")"
    Range("E37").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-3],""5G����"",'5Gվ�㿪ͨ�嵥'!C[-2],RC[-4],'5Gվ�㿪ͨ�嵥'!C[4],""�ҷ�"",'5Gվ�㿪ͨ�嵥'!C[5],""*��ͨ*"",'5Gվ�㿪ͨ�嵥'!C[12],""�ѽ�ά"")"
    Range("F37").FormulaR1C1 = "=IFERROR((RC[-2]+RC[-1])/(RC[-4]+RC[-3]),"""")"
    Range("G37").FormulaR1C1 = "=RC[-5]-RC[-3]"
    Range("H37").FormulaR1C1 = "=RC[-5]-RC[-3]"
    Range("I37").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-7],""5G����"",'5Gվ�㿪ͨ�嵥'!C[-6],RC[-8],'5Gվ�㿪ͨ�嵥'!C,""��վ"",'5Gվ�㿪ͨ�嵥'!C[4],1,'5Gվ�㿪ͨ�嵥'!C[8],""δ��ά"")"
    Range("J37").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-8],""5G����"",'5Gվ�㿪ͨ�嵥'!C[-7],RC[-9],'5Gվ�㿪ͨ�嵥'!C[-1],""�ҷ�"",'5Gվ�㿪ͨ�嵥'!C[3],1,'5Gվ�㿪ͨ�嵥'!C[7],""δ��ά"")"
    Range("K37").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-9],""5G����"",'5Gվ�㿪ͨ�嵥'!C[-8],RC[-10],'5Gվ�㿪ͨ�嵥'!C[-2],""��վ"",'5Gվ�㿪ͨ�嵥'!C[3],1,'5Gվ�㿪ͨ�嵥'!C[6],""δ��ά"")"
    Range("L37").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-10],""5G����"",'5Gվ�㿪ͨ�嵥'!C[-9],RC[-11],'5Gվ�㿪ͨ�嵥'!C[-3],""�ҷ�"",'5Gվ�㿪ͨ�嵥'!C[2],1,'5Gվ�㿪ͨ�嵥'!C[5],""δ��ά"")"
    Range("M37").FormulaR1C1 = "=SUM(COUNTIFS(������˹���!C[5],""5G����"",������˹���!C[-8],RC[-12],������˹���!C[1],""ͨ��"",������˹���!C,{""5G����"",""*NR*����""}))"
    Range("N37").FormulaR1C1 = "=SUM(COUNTIFS(������˹���!C[4],""5G����"",������˹���!C[-9],RC[-13],������˹���!C,""�˻�"",������˹���!C[-1],{""5G����"",""*NR*����""}))"
    Range("O37").FormulaR1C1 = "=IFERROR(RC[-1]/(RC[-2]+RC[-1]),0)"
    Range("B37:O47").Select
    Selection.FillDown
    Selection.Copy
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False
    
    Range("B102").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C,""5G���ڶ��׶�"",'5Gվ�㿪ͨ�嵥'!C[1],RC[-1],'5Gվ�㿪ͨ�嵥'!C[7],""��վ"",'5Gվ�㿪ͨ�嵥'!C[8],""*��ͨ*"")"
    Range("C102").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-1],""5G���ڶ��׶�"",'5Gվ�㿪ͨ�嵥'!C,RC[-2],'5Gվ�㿪ͨ�嵥'!C[6],""�ҷ�"",'5Gվ�㿪ͨ�嵥'!C[7],""*��ͨ*"")"
    Range("D102").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-2],""5G���ڶ��׶�"",'5Gվ�㿪ͨ�嵥'!C[-1],RC[-3],'5Gվ�㿪ͨ�嵥'!C[5],""��վ"",'5Gվ�㿪ͨ�嵥'!C[6],""*��ͨ*"",'5Gվ�㿪ͨ�嵥'!C[13],""�ѽ�ά"")"
    Range("E102").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-3],""5G���ڶ��׶�"",'5Gվ�㿪ͨ�嵥'!C[-2],RC[-4],'5Gվ�㿪ͨ�嵥'!C[4],""�ҷ�"",'5Gվ�㿪ͨ�嵥'!C[5],""*��ͨ*"",'5Gվ�㿪ͨ�嵥'!C[12],""�ѽ�ά"")"
    Range("F102").FormulaR1C1 = "=IFERROR((RC[-2]+RC[-1])/(RC[-4]+RC[-3]),"""")"
    Range("G102").FormulaR1C1 = "=RC[-5]-RC[-3]"
    Range("H102").FormulaR1C1 = "=RC[-5]-RC[-3]"
    Range("I102").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-7],""5G���ڶ��׶�"",'5Gվ�㿪ͨ�嵥'!C[-6],RC[-8],'5Gվ�㿪ͨ�嵥'!C,""��վ"",'5Gվ�㿪ͨ�嵥'!C[4],1,'5Gվ�㿪ͨ�嵥'!C[8],""δ��ά"")"
    Range("J102").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-8],""5G���ڶ��׶�"",'5Gվ�㿪ͨ�嵥'!C[-7],RC[-9],'5Gվ�㿪ͨ�嵥'!C[-1],""�ҷ�"",'5Gվ�㿪ͨ�嵥'!C[3],1,'5Gվ�㿪ͨ�嵥'!C[7],""δ��ά"")"
    Range("K102").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-9],""5G���ڶ��׶�"",'5Gվ�㿪ͨ�嵥'!C[-8],RC[-10],'5Gվ�㿪ͨ�嵥'!C[-2],""��վ"",'5Gվ�㿪ͨ�嵥'!C[3],1,'5Gվ�㿪ͨ�嵥'!C[6],""δ��ά"")"
    Range("L102").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-10],""5G���ڶ��׶�"",'5Gվ�㿪ͨ�嵥'!C[-9],RC[-11],'5Gվ�㿪ͨ�嵥'!C[-3],""�ҷ�"",'5Gվ�㿪ͨ�嵥'!C[2],1,'5Gվ�㿪ͨ�嵥'!C[5],""δ��ά"")"
    Range("M102").FormulaR1C1 = "=SUM(COUNTIFS(������˹���!C[5],""5G���ڶ��׶�"",������˹���!C[-8],RC[-12],������˹���!C[1],""ͨ��"",������˹���!C,{""5G����"",""*NR*����""}))"
    Range("N102").FormulaR1C1 = "=SUM(COUNTIFS(������˹���!C[4],""5G���ڶ��׶�"",������˹���!C[-9],RC[-13],������˹���!C,""�˻�"",������˹���!C[-1],{""5G����"",""*NR*����""}))"
    Range("O102").FormulaR1C1 = "=IFERROR(RC[-1]/(RC[-2]+RC[-1]),0)"
    Range("B102:O112").Select
    Selection.FillDown
    Selection.Copy
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False

    Range("C53").FormulaR1C1 = "=COUNTIF('3DMIMO���ڿ�ͨ�嵥'!C[-1],RC[-2])"
    Range("D53").FormulaR1C1 = "=COUNTIFS('3DMIMO���ڿ�ͨ�嵥'!C[-2],RC[-3],'3DMIMO���ڿ�ͨ�嵥'!C[5],""*��ͨ*"")"
    Range("E53").FormulaR1C1 = "=COUNTIFS('3DMIMO���ڿ�ͨ�嵥'!C[-3],RC[-4],'3DMIMO���ڿ�ͨ�嵥'!C[4],""*��ͨ*"",'3DMIMO���ڿ�ͨ�嵥'!C[11],""�ѽ�ά"")"
    Range("F53").FormulaR1C1 = "=COUNTIFS('3DMIMO���ڿ�ͨ�嵥'!C[-4],RC[-5],'3DMIMO���ڿ�ͨ�嵥'!C[3],""*��ͨ*"",'3DMIMO���ڿ�ͨ�嵥'!C[9],""�ѹ鵵"")"
    Range("G53").FormulaR1C1 = "=RC[-2]/RC[-4]"
    Range("H53").FormulaR1C1 = "=RC[-3]/RC[-4]"
    Range("I53").FormulaR1C1 = "=COUNTIFS('3DMIMO���ڿ�ͨ�嵥'!C[-7],RC[-8],'3DMIMO���ڿ�ͨ�嵥'!C[3],1,'3DMIMO���ڿ�ͨ�嵥'!C[7],""δ��ά"")"
    Range("C53:I63").Select
    Selection.FillDown
    Selection.Copy
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False

    Range("B69").FormulaR1C1 = "=COUNTIF(NB���ڿ�ͨ�嵥!C,RC[-1])"
    Range("C69").FormulaR1C1 = "=COUNTIFS(NB���ڿ�ͨ�嵥!C[-1],RC[-2],NB���ڿ�ͨ�嵥!C[6],""*��ͨ*"")"
    Range("D69").FormulaR1C1 = "=COUNTIFS(NB���ڿ�ͨ�嵥!C[-2],RC[-3],NB���ڿ�ͨ�嵥!C[5],""*��ͨ*"",NB���ڿ�ͨ�嵥!C[9],""�ѽ�ά"")"
    Range("E69").FormulaR1C1 = "=RC[-1]/RC[-2]"
    Range("B69:E79").Select
    Selection.FillDown
    Selection.Copy
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False

    Range("B86").FormulaR1C1 = "=COUNTIF(FDD����ר�ͨ�嵥!C,RC[-1])"
    Range("C86").FormulaR1C1 = "=COUNTIFS(FDD����ר�ͨ�嵥!C[-1],RC[-2],FDD����ר�ͨ�嵥!C[6],""*��ͨ*"")"
    Range("D86").FormulaR1C1 = "=COUNTIFS(FDD����ר�ͨ�嵥!C[-2],RC[-3],FDD����ר�ͨ�嵥!C[5],""*��ͨ*"",FDD����ר�ͨ�嵥!C[12],""�ѽ�ά"")"
    Range("E86").FormulaR1C1 = "=COUNTIFS(FDD����ר�ͨ�嵥!C[-3],RC[-4],FDD����ר�ͨ�嵥!C[4],""*��ͨ*"",FDD����ר�ͨ�嵥!C[11],""δ��ά"")"
    Range("F86").FormulaR1C1 = "=COUNTIFS(FDD����ר�ͨ�嵥!C[-4],RC[-5],FDD����ר�ͨ�嵥!C[7],1,FDD����ר�ͨ�嵥!C[10],""δ��ά"")"
    Range("G86").FormulaR1C1 = "=COUNTIFS(FDD����ר�ͨ�嵥!C[-5],RC[-6],FDD����ר�ͨ�嵥!C[10],1)"
    Range("H86").FormulaR1C1 = "=COUNTIFS(FDD����ר�ͨ�嵥!C[-6],RC[-7],FDD����ר�ͨ�嵥!C[10],1)"
    Range("I86").FormulaR1C1 = "=IFERROR(RC[-1]/(RC[-2]+RC[-1]),0)"
    Range("B86:I96").Select
    Selection.FillDown
    Selection.Copy
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False
    
    Range("B118").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[1],RC[-1],'5Gվ�㿪ͨ�嵥'!C[8],""*��ͨ*"",'5Gվ�㿪ͨ�嵥'!C[6],""NR-700"")"
    Range("C118").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[0],RC[-2],'5Gվ�㿪ͨ�嵥'!C[7],""*��ͨ*"",'5Gվ�㿪ͨ�嵥'!C[5],""NR-700"",'5Gվ�㿪ͨ�嵥'!C[14],""�ѽ�ά"")"
    Range("D118").FormulaR1C1 = "=IFERROR(RC[-1]/RC[-2],0)"
    Range("E118").FormulaR1C1 = "=RC[-3]-RC[-2]"
    Range("F118").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-3],RC[-5],'5Gվ�㿪ͨ�嵥'!C[7],1,'5Gվ�㿪ͨ�嵥'!C[2],""NR-700"",'5Gվ�㿪ͨ�嵥'!C[11],""δ��ά"")"
    Range("G118").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-4],RC[-6],'5Gվ�㿪ͨ�嵥'!C[6],1,'5Gվ�㿪ͨ�嵥'!C[1],""NR-700"",'5Gվ�㿪ͨ�嵥'!C[10],""δ��ά"")"
    Range("H118").FormulaR1C1 = "=SUM(COUNTIFS(������˹���!C[-3],RC[-7],������˹���!C[6],""ͨ��"",������˹���!C[5],{""*NR-700*"",""*700M*""}))"
    Range("I118").FormulaR1C1 = "=SUM(COUNTIFS(������˹���!C[-4],RC[-8],������˹���!C[5],""�˻�"",������˹���!C[4],{""*NR-700*"",""*700M*""}))"
    Range("J118").FormulaR1C1 = "=IFERROR(RC[-1]/��RC[-1]+RC[-2]��,0)"
    Range("B118:J128").Select
    Selection.FillDown
    Selection.Copy
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False
    
    Range("B136").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C,""5G����"",'5Gվ�㿪ͨ�嵥'!C[1],RC[-1],'5Gվ�㿪ͨ�嵥'!C[7],""��վ"",'5Gվ�㿪ͨ�嵥'!C[8],""*��ͨ*"")"
    Range("C136").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-1],""5G����"",'5Gվ�㿪ͨ�嵥'!C,RC[-2],'5Gվ�㿪ͨ�嵥'!C[6],""�ҷ�"",'5Gվ�㿪ͨ�嵥'!C[7],""*��ͨ*"")"
    Range("D136").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-2],""5G����"",'5Gվ�㿪ͨ�嵥'!C[-1],RC[-3],'5Gվ�㿪ͨ�嵥'!C[5],""��վ"",'5Gվ�㿪ͨ�嵥'!C[6],""*��ͨ*"",'5Gվ�㿪ͨ�嵥'!C[13],""�ѽ�ά"")"
    Range("E136").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-3],""5G����"",'5Gվ�㿪ͨ�嵥'!C[-2],RC[-4],'5Gվ�㿪ͨ�嵥'!C[4],""�ҷ�"",'5Gվ�㿪ͨ�嵥'!C[5],""*��ͨ*"",'5Gվ�㿪ͨ�嵥'!C[12],""�ѽ�ά"")"
    Range("F136").FormulaR1C1 = "=IFERROR((RC[-2]+RC[-1])/(RC[-4]+RC[-3]),"""")"
    Range("G136").FormulaR1C1 = "=RC[-5]-RC[-3]"
    Range("H136").FormulaR1C1 = "=RC[-5]-RC[-3]"
    Range("I136").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-7],""5G����"",'5Gվ�㿪ͨ�嵥'!C[-6],RC[-8],'5Gվ�㿪ͨ�嵥'!C,""��վ"",'5Gվ�㿪ͨ�嵥'!C[4],1,'5Gվ�㿪ͨ�嵥'!C[8],""δ��ά"")"
    Range("J136").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-8],""5G����"",'5Gվ�㿪ͨ�嵥'!C[-7],RC[-9],'5Gվ�㿪ͨ�嵥'!C[-1],""�ҷ�"",'5Gվ�㿪ͨ�嵥'!C[3],1,'5Gվ�㿪ͨ�嵥'!C[7],""δ��ά"")"
    Range("K136").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-9],""5G����"",'5Gվ�㿪ͨ�嵥'!C[-8],RC[-10],'5Gվ�㿪ͨ�嵥'!C[-2],""��վ"",'5Gվ�㿪ͨ�嵥'!C[3],1,'5Gվ�㿪ͨ�嵥'!C[6],""δ��ά"")"
    Range("L136").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-10],""5G����"",'5Gվ�㿪ͨ�嵥'!C[-9],RC[-11],'5Gվ�㿪ͨ�嵥'!C[-3],""�ҷ�"",'5Gվ�㿪ͨ�嵥'!C[2],1,'5Gվ�㿪ͨ�嵥'!C[5],""δ��ά"")"
    Range("M136").FormulaR1C1 = "=SUM(COUNTIFS(������˹���!C[5],""5G����"",������˹���!C[-8],RC[-12],������˹���!C[1],""ͨ��"",������˹���!C,{""5G����"",""*NR*����""}))"
    Range("N136").FormulaR1C1 = "=SUM(COUNTIFS(������˹���!C[4],""5G����"",������˹���!C[-9],RC[-13],������˹���!C,""�˻�"",������˹���!C[-1],{""5G����"",""*NR*����""}))"
    Range("O136").FormulaR1C1 = "=IFERROR(RC[-1]/(RC[-2]+RC[-1]),0)"
    Range("B136:O146").Select
    Selection.FillDown
    Selection.Copy
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False

    
    Range("B152").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[1],RC[-1],'5Gվ�㿪ͨ�嵥'!C[8],""*��ͨ*"",'5Gվ�㿪ͨ�嵥'!C[0],""NR-700M����"")"
    Range("C152").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[0],RC[-2],'5Gվ�㿪ͨ�嵥'!C[7],""*��ͨ*"",'5Gվ�㿪ͨ�嵥'!C[-1],""NR-700M����"",'5Gվ�㿪ͨ�嵥'!C[14],""�ѽ�ά"")"
    Range("D152").FormulaR1C1 = "=IFERROR(RC[-1]/RC[-2],0)"
    Range("E152").FormulaR1C1 = "=RC[-3]-RC[-2]"
    Range("F152").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-3],RC[-5],'5Gվ�㿪ͨ�嵥'!C[7],1,'5Gվ�㿪ͨ�嵥'!C[-4],""NR-700M����"",'5Gվ�㿪ͨ�嵥'!C[11],""δ��ά"")"
    Range("G152").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-4],RC[-6],'5Gվ�㿪ͨ�嵥'!C[6],1,'5Gվ�㿪ͨ�嵥'!C[-5],""NR-700M����"",'5Gվ�㿪ͨ�嵥'!C[10],""δ��ά"")"
    Range("H152").FormulaR1C1 = "=SUM(COUNTIFS(������˹���!C[-3],RC[-7],������˹���!C[6],""ͨ��"",������˹���!C[5],{""*NR-700*"",""*700M*""}))"
    Range("I152").FormulaR1C1 = "=SUM(COUNTIFS(������˹���!C[-4],RC[-8],������˹���!C[5],""�˻�"",������˹���!C[4],{""*NR-700*"",""*700M*""}))"
    Range("J152").FormulaR1C1 = "=IFERROR(RC[-1]/��RC[-1]+RC[-2]��,0)"
    Range("B152:J162").Select
    Selection.FillDown
    Selection.Copy
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False
    
    
    Range("B169").FormulaR1C1 = "=SUM(COUNTIFS(��������ά�ۼ�!C[1],RC[-1],��������ά�ۼ�!C[7],""�ҷ�"",��������ά�ۼ�!C[19],""��Ҫ����""))"
    Range("C169").FormulaR1C1 = "=SUM(COUNTIFS(��������ά�ۼ�!C,RC[-2],��������ά�ۼ�!C[6],""�ҷ�"",��������ά�ۼ�!C[18],""һ�㳡��""))"
    Range("D169").FormulaR1C1 = "=SUM(COUNTIFS(5Gվ�㿪ͨ�嵥!C[-1],RC[-3],5Gվ�㿪ͨ�嵥!C[5],""�ҷ�"",5Gվ�㿪ͨ�嵥!C[7],"">0"",5Gվ�㿪ͨ�嵥!C[13],""δ��ά""))"
    Range("E169").FormulaR1C1 = "=SUM(COUNTIFS(������˹���!C,RC[-4],������˹���!C[9],""ͨ��"",������˹���!C[-3],""����"",������˹���!C[12],""��Ҫ����""))"
    Range("F169").FormulaR1C1 = "=SUM(COUNTIFS(������˹���!C[-1],RC[-5],������˹���!C[8],""�˻�"",������˹���!C[-4],""����"",������˹���!C[11],""��Ҫ����""))"
    Range("G169").FormulaR1C1 = "=IFERROR(RC[-2]/(RC[-1]+RC[-2]),0)"
    Range("H169").FormulaR1C1 = "=SUM(COUNTIFS(������˹���!C[-3],RC[-7],������˹���!C[6],""ͨ��"",������˹���!C[-6],""����"",������˹���!C[9],""һ�㳡��""))"
    Range("I169").FormulaR1C1 = "=SUM(COUNTIFS(������˹���!C[-4],RC[-8],������˹���!C[5],""�˻�"",������˹���!C[-7],""����"",������˹���!C[8],""һ�㳡��""))"
    Range("J169").FormulaR1C1 = "=IFERROR(RC[-2]/(RC[-1]+RC[-2]),0)"
    Range("K169").FormulaR1C1 = "=IFERROR((RC[-6]+RC[-3])/(RC[-6]+RC[-5]+RC[-3]+RC[-2]),0)"
    Range("B169:K179").Select
    Selection.FillDown
    Selection.Copy
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False
            
    
    Range("M185") = "=SUM(N185:O185)"
    Range("N185") = "=SUM(B169:C169)"
    Range("O185") = "=SUM(D169)"
    Range("P185") = "=SUM(E169)"
    Range("Q185") = "=SUM(F169)"
    Range("R185") = "=SUM(G169)"
    Range("S185") = "=SUM(H169)"
    Range("T185") = "=SUM(I169)"
    Range("U185") = "=SUM(J169)"
    Range("V185") = "=SUM(K169)"
    Range("M185:V196").Select
    Selection.FillDown
    Selection.Copy
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False
    
    
        
    Range("B202").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C,""5G����"",'5Gվ�㿪ͨ�嵥'!C[1],RC[-1],'5Gվ�㿪ͨ�嵥'!C[7],""��վ"",'5Gվ�㿪ͨ�嵥'!C[8],""*��ͨ*"")"
    Range("C202").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-1],""5G����"",'5Gվ�㿪ͨ�嵥'!C,RC[-2],'5Gվ�㿪ͨ�嵥'!C[6],""�ҷ�"",'5Gվ�㿪ͨ�嵥'!C[7],""*��ͨ*"")"
    Range("D202").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-2],""5G����"",'5Gվ�㿪ͨ�嵥'!C[-1],RC[-3],'5Gվ�㿪ͨ�嵥'!C[5],""��վ"",'5Gվ�㿪ͨ�嵥'!C[6],""*��ͨ*"",'5Gվ�㿪ͨ�嵥'!C[13],""�ѽ�ά"")"
    Range("E202").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-3],""5G����"",'5Gվ�㿪ͨ�嵥'!C[-2],RC[-4],'5Gվ�㿪ͨ�嵥'!C[4],""�ҷ�"",'5Gվ�㿪ͨ�嵥'!C[5],""*��ͨ*"",'5Gվ�㿪ͨ�嵥'!C[12],""�ѽ�ά"")"
    Range("F202").FormulaR1C1 = "=IFERROR((RC[-2]+RC[-1])/(RC[-4]+RC[-3]),"""")"
    Range("G202").FormulaR1C1 = "=RC[-5]-RC[-3]"
    Range("H202").FormulaR1C1 = "=RC[-5]-RC[-3]"
    Range("I202").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-7],""5G����"",'5Gվ�㿪ͨ�嵥'!C[-6],RC[-8],'5Gվ�㿪ͨ�嵥'!C,""��վ"",'5Gվ�㿪ͨ�嵥'!C[4],1,'5Gվ�㿪ͨ�嵥'!C[8],""δ��ά"")"
    Range("J202").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-8],""5G����"",'5Gվ�㿪ͨ�嵥'!C[-7],RC[-9],'5Gվ�㿪ͨ�嵥'!C[-1],""�ҷ�"",'5Gվ�㿪ͨ�嵥'!C[3],1,'5Gվ�㿪ͨ�嵥'!C[7],""δ��ά"")"
    Range("K202").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-9],""5G����"",'5Gվ�㿪ͨ�嵥'!C[-8],RC[-10],'5Gվ�㿪ͨ�嵥'!C[-2],""��վ"",'5Gվ�㿪ͨ�嵥'!C[3],1,'5Gվ�㿪ͨ�嵥'!C[6],""δ��ά"")"
    Range("L202").FormulaR1C1 = "=COUNTIFS('5Gվ�㿪ͨ�嵥'!C[-10],""5G����"",'5Gվ�㿪ͨ�嵥'!C[-9],RC[-11],'5Gվ�㿪ͨ�嵥'!C[-3],""�ҷ�"",'5Gվ�㿪ͨ�嵥'!C[2],1,'5Gվ�㿪ͨ�嵥'!C[5],""δ��ά"")"
    Range("M202").FormulaR1C1 = "=SUM(COUNTIFS(������˹���!C[5],""5G����"",������˹���!C[-8],RC[-12],������˹���!C[1],""ͨ��"",������˹���!C,{""5G����"",""*NR*����""}))"
    Range("N202").FormulaR1C1 = "=SUM(COUNTIFS(������˹���!C[4],""5G����"",������˹���!C[-9],RC[-13],������˹���!C,""�˻�"",������˹���!C[-1],{""5G����"",""*NR*����""}))"
    Range("O202").FormulaR1C1 = "=IFERROR(RC[-1]/(RC[-2]+RC[-1]),0)"
    Range("B202:O212").Select
    Selection.FillDown
    Selection.Copy
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False
         
      
    MyRows = Sheet3.UsedRange.Rows.Count
    If MyRows > 1 Then
        Sheet3.Select
        TempArray = Array("����", "CQT", "���Ź���ʦ���Ա��", "ping", "ƽ��", "����ҳ", "������", "ͨ��ƽ��")                 'CQT
        TempArray1 = Array("δ��ȫ", "����", "����", "�켣", "DT", "����������", "�л�", "��й", "ͼ��", "Ч��ͼ")                     'DT
        TempArray2 = Array("�ʹ�", "γ��", "����", "����")                   '�ʹ�
        TempArray3 = Array("���鱨��", "������д")                   '����
        TempArray4 = Array("δ����")
        TempArray5 = Array("TRP")
        
        For i = 2 To MyRows
            If Sheet3.Range("J" & i) <> "" Then
                If StrCheck(Sheet3.Range("J" & i), TempArray5) = True Then
                Sheet3.Range("S" & i) = "TRP"
                End If
            End If
        Next i
        
        For i = 2 To MyRows
            If Sheet3.Range("F" & i) <> "" Then
                        If StrCheck(Sheet3.Range("F" & i), TempArray4) = True Then
                            Sheet3.Range("S" & i) = "δ����"
                        ElseIf StrCheck(Sheet3.Range("F" & i), TempArray) = True Then
                            Sheet3.Range("S" & i) = "CQT"
                        ElseIf StrCheck(Sheet3.Range("F" & i), TempArray1) = True Then
                            Sheet3.Range("S" & i) = "DT"
                        ElseIf StrCheck(Sheet3.Range("F" & i), TempArray2) = True Then
                            Sheet3.Range("S" & i) = "�ʹ�"
                        ElseIf StrCheck(Sheet3.Range("F" & i), TempArray3) = True Then
                            Sheet3.Range("S" & i) = "����"
                        End If
            End If
        Next i
    End If
    
       
    
    
    Range("A1").Select

    ��ť4_Click


    fName = Application.GetSaveAsFilename("��ά�ձ�_" & Format(Now() - 1, "yyyymmdd"))
    If fName = "False" Then Exit Sub
    Sheets(Array("������˹���", "����������", "�����˻ع���", "ͳ��")).Copy
    ActiveWorkbook.SaveAs filename:=fName
    ActiveWorkbook.Save

    MyWorkbook.Activate
    Sheet4.Select
    Application.DisplayAlerts = True
    Application.ScreenUpdating = True

End Sub
