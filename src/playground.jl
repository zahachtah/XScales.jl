mutable struct Context

end

ytest(u,i,C)=mean(u)+i
ytest()="Y"
xtest(u,x,j,i,C)=sum(u)
xtest()="U"
dc(u,x,xc,j,i,C)=3*u[j]+x[1]-xc[1]
dc()="u"

function du(u,x,xc,j,i,C)
  Y=x[1]
  U=xc[1]
end


c=(x=[xtest],f=(k=1.0,r=0.1),deriv=dc)

C=(x=[ytest],c=(c,c,c),fixed=(e=2.0,))

C.c.x[1]()

function dudt(du,u,C)
  #each instance i test
  i=1
  x=zeros(1)
    [x[q]=C.x[q](u,i,C) for q in eachindex(C.x)]
    for j in 1:length(C.c)
        xc=[x(u,x,j,i,C) for x in C.c[i].x]
        du[j]=c.deriv(u,x,xc,j,i,C)
        use splatting with an id vector of variable names!
    end
  #end
  return du
end

u=rand(3)
du=similar(u)
dudt(du,u,C)








#get argument names:
e=Base.uncompressed_ast(collect(methods(f))[1]).slotnames
#Get function name
typeof(f).name.mt.name

thisIsAFunction_τ(a,b,g)=a+b+g
d=thisIsAFunction_τ
d(1,2,3)
string(typeof(d).name.mt.name)
#=
first register all functions
create a hashtable for id's to varnames
create nice labels & variable from function names
create idlist for all functions
=#
