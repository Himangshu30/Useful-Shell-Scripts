#!/bin/bash
#@the script written by Himangshu
cur_dir=`pwd`
cur_time=`date $T`
path=$cur_dir/$1
if [ ! -f "$path" ]; then
        >$path
        echo -e "/*" >>$path
        echo -e "\t\t\t written by Dumb Fucker ">>$path
        echo -e "\t\t\t email id dumbfuck@gmail.com" >>$path 
        echo -e "\t\t\t at $cur_time " >>$path 
        echo "*/">>$path
        echo "#include<bits/stdc++.h>" >>$path 
        echo "using namespace std;" >>$path 
        echo "#define lli long long int">>$path
        echo "#define ulli unsigned long long int">>$path
        echo "#define ll long long ">>$path
        echo "#define ull  unsigned long long">>$path
        echo "#define mp make_pair" >>$path
        echo '#define s(n)   scanf("%d",&n)' >> $path
        echo   '#define sc(n)  scanf("%c",&n)' >> $path
        echo   '#define sl(n)  scanf("%lld",&n)' >> $path
        echo   '#define sf(n)  scanf("%lf",&n)' >> $path
        echo   '#define ss(n)  scanf("%s",n)' >> $path
        echo   '#define p(n)   printf("%d",n)' >> $path
        echo   '#define pc(n)  printf("%c",n)' >> $path
        echo   '#define pl(n)  printf("%lld",n)' >> $path
        echo   '#define pf(n)  printf("%lf",n)' >> $path
        echo   '#define ps(n)  printf("%s",n)' >> $path
        echo   '#define pn printf("\n")' >> $path
        echo   '#define space printf(" ")' >> $path
        echo  -e "#define loopf(X,Y) for(int i=X;i<Y;i++)" >>$path
        echo  -e "#define loopb(X,Y) for(int i=X;i>Y;i--)" >>$path
        echo  -e  "#define dout(X) if(X)" >>$path
        echo  -e "int main(){">>$path
        echo -e "\t\treturn 0;">>$path
        echo "}">>$path
        cd $cur_dir
        vim $1
else
        echo "file exist som im opening with vim"
        vim $1
fi
