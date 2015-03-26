# Lists
def_fun(:sum) {|l|
  sum=0
  l.each {|i|
    sum+=i
  }
  sum
}

def_fun(:avg) {|l|
  sum=0
  l.each {|i|
    sum+=i
  }
  count=l.count
  if sum%count!=0
    sum.fdiv(count)
  else
    sum/count
  end
}

def_fun(:count) {|l| l.count}

# Mathematics
def_var :pi, Math::PI
def_var :e, Math::E

def_fun(:acos) {|x| Math.acos x}
def_fun(:acosh) {|x| Math.acosh x}
def_fun(:asin) {|x| Math.asin x}
def_fun(:asinh) {|x| Math.asinh x}
def_fun(:atan) {|x| Math.atan x}
def_fun(:atan2) {|x| Math.atan2 x}
def_fun(:atanh) {|x| Math.atanh x}
def_fun(:cbrt) {|x| Math.cbrt x}
def_fun(:cos) {|x| Math.cos x}
def_fun(:cosh) {|x| Math.cosh x}
def_fun(:erf) {|x| Math.erf x}
def_fun(:erfc) {|x| Math.erfc x}
def_fun(:exp) {|x| Math.exp x}
def_fun(:frexp) {|x| Math.frexp x}
def_fun(:gamma) {|x| Math.gamma x}
def_fun(:ln) {|x| Math.ln x}
def_fun(:log2) {|x| Math.log2 x}
def_fun(:log10) {|x| Math.log10 x}
def_fun(:log) {|x,y| Math.log x,y}
def_fun(:sin) {|x| Math.sin x}
def_fun(:sinh) {|x| Math.sinh x}
def_fun(:sqrt) {|x| Math.sqrt x}
def_fun(:tan) {|x| Math.tan x}
def_fun(:tanh) {|x| Math.tanh x}
