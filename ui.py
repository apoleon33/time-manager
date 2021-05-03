character="32"
file=open("time.txt", "r")
x=file.readlines()
x=str(x[-1]).replace('\n', '')
mi=str(round(int(x)/60,2))
h=str(round(int(x)/3600,2))
print("vous avez passé "+x+'s '+mi+' min '+h+' hours')