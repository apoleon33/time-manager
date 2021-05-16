import curses
screen = curses.initscr()
def add_chart(x,value):
	a=20
	for i in range(value-1):
		screen.addstr(a,x, "███")
		a-=1
	screen.addstr(a,x, " ")
character="32"
file=open("time.txt", "r")
x=file.readlines()
x=str(x[-1]).replace('\n', '')
mi=str(round(int(x)/60,2))
h=str(round(int(x)/3600,2))
print("vous avez passé "+x+'s '+mi+' min '+h+' hours')