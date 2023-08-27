import openpyxl

wk = openpyxl.load_workbook("C:\\VirtualDisk-D\\Study\\TestingExcel.xlsx")
sh = wk.active

sh.title = "HelloJitu"
print(sh.title)
sh['A4'].value = "www.testingworld.com"

wk.create_sheet(title="JituTesting")

wk.save("C:\\VirtualDisk-D\\Study\\TestingExcel.xlsx")

