/**
 * Shortcuts for Math
 * 
 * Author: Aegon Huke
 */

#let va = $bold(a)$
#let vb = $bold(b)$
#let vc = $bold(c)$
#let vd = $bold(d)$
#let ve = $bold(e)$
#let vf = $bold(f)$
#let vg = $bold(g)$
#let vh = $bold(h)$
#let vi = $bold(i)$
#let vj = $bold(j)$
#let vk = $bold(k)$
#let vl = $bold(l)$
#let vm = $bold(m)$
#let vn = $bold(n)$
#let vo = $bold(o)$
#let vp = $bold(p)$
#let vq = $bold(q)$
#let vr = $bold(r)$
#let vs = $bold(s)$
#let vt = $bold(t)$
#let vu = $bold(u)$
#let vv = $bold(v)$
#let vw = $bold(w)$
#let vx = $bold(x)$
#let vy = $bold(y)$
#let vz = $bold(z)$

#let vA = $bold(A)$
#let vB = $bold(B)$
#let vC = $bold(C)$
#let vD = $bold(D)$
#let vE = $bold(E)$
#let vF = $bold(F)$
#let vG = $bold(G)$
#let vH = $bold(H)$
#let vI = $bold(I)$
#let vJ = $bold(J)$
#let vK = $bold(K)$
#let vL = $bold(L)$
#let vM = $bold(M)$
#let vN = $bold(N)$
#let vO = $bold(O)$
#let vP = $bold(P)$
#let vQ = $bold(Q)$
#let vR = $bold(R)$
#let vS = $bold(S)$
#let vT = $bold(T)$
#let vU = $bold(U)$
#let vV = $bold(V)$
#let vW = $bold(W)$
#let vX = $bold(X)$
#let vY = $bold(Y)$
#let vZ = $bold(Z)$

#let valpha = $bold(alpha)$
#let vbeta = $bold(beta)$
#let vchi = $bold(chi)$
#let vdelta = $bold(delta)$
#let vepsilon = $bold(epsilon)$
#let veta = $bold(eta)$
#let vgamma = $bold(gamma)$
#let viota = $bold(iota)$
#let vkappa = $bold(kappa)$
#let vlambda = $bold(lambda)$
#let vmu = $bold(mu)$
#let vomega = $bold(omega)$
#let vphi = $bold(phi)$
#let vpi = $bold(pi)$
#let vpsi = $bold(psi)$
#let vrho = $bold(rho)$
#let vsigma = $bold(sigma)$
#let vtau = $bold(tau)$
#let vtheta = $bold(theta)$
#let vupsilon = $bold(upsilon)$
#let vxi = $bold(xi)$
#let vzeta = $bold(zeta)$

#let vDelta = $bold(Delta)$
#let vGamma = $bold(Gamma)$
#let vLambda = $bold(Lambda)$
#let vOmega = $bold(Omega)$
#let vPhi = $bold(Phi)$
#let vPi = $bold(Pi)$
#let vPsi = $bold(Psi)$
#let vSigma = $bold(Sigma)$
#let vTheta = $bold(Theta)$
#let vUpsilon = $bold(Upsilon)$
#let vXi = $bold(Xi)$

#let vzero = $bold(0)$
#let vones = $bold(1)$

#let mT = $upright(T)$
#let mI = $-1$
#let mIG = $dash$

#let var = $op("var")$
#let cov = $op("cov")$

/// Write diagnostic statistics
/// 
/// - mark (any): The statistic's symbol
/// - label (content): An additional label attached to the symbol
/// - value (none, numbering): An optional value. If none, hide the equal sign; otherwise show the equal sign and the value.
#let diagnostic(mark, label: [], value: none) = {
  if value == none [
    $attach(#mark, br: text(label))$
  ] else [
    $attach(#mark, br: text(label))=#value$
  ]
}

/// R squared
///
/// - value (none, numbering): An optional value.
///
/// *Example:*
/// 
/// - #msc.rsquare()
/// - #msc.rsquare(value: 0.8)
#let rsquare(value: none) = diagnostic($R^2$, value: value)
