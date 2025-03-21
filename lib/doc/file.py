'''g=open('data.csv','r')
g=g.read()
s_data=g.split('\n')
og_data=[]
#og_data.append(s_data[0].split(','))
for i in range(1,len(s_data)):
    k=s_data[i].split(',')
    single_data=[]
    for j in range(len(k)):
        l=k[j]
        if j != 0:
            l=float(k[j])
            single_data.append(l)
        
    og_data.append(single_data)
    
f=open('dataset.dart','w')
f.write(str(og_data))
f.close()

'''
g=open('data.csv','r')
g=g.read()
s_data=g.split('\n')
og_data=[]
j=s_data[0].split(',')
for i in j:
    print(i)
    break
g.close()