# importing package

import openpyxl

# Load workbook

wk = openpyxl.load_workbook("C:\\VirtualDisk-D\\Study\\TestingExcel.xlsx")
print(wk.sheetnames)

print("Active sheet is " + wk.active.title)

sh = wk['Sheet1']
print(sh.title)
