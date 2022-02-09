# GS3.11
# Andrew Dai, Biyao Zhang, Yuyang, Li, Yuchen Liu

p.a = seq(.40, 1.0, by=.01)
p.rej = 1 - pbinom(69, 100, p.a)
p.rej.2 = 1 - pbinom(73, 100, p.a)
plot(p.a, p.rej, type="l", main="Power Curve")
points(p.a, p.rej.2, type = "l")

library(pwr)
pwr.p.test(h = ES.h(0.8,0.6), n = 100, sig.level = 0.05, alternative ="greater")