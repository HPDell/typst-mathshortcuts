#import "lib.typ": *
#import "@preview/tablex:0.0.5": tablex, rowspanx, colspanx, hlinex, vlinex
#import "@preview/tidy:0.1.0"

#set page(margin: (x: 0.5in, y: 0.5in))
#set document(title: "Package mathshortcuts", author: "Aegon Huke")

#show heading: body => block(above: 1em, below: 1em, body)
#set heading(numbering: "1.")

#align(center)[
  #text(size: 1.5em)[Package *mathshortcuts*]

  #text(style: "italic")[Aegon Huke]
]

#outline(indent: auto)

= Symbols

#columns(2)[
  == Bold Letters

  #align(center)[
    #tablex(
      columns: 8,
      align: center,
      auto-vlines: false,
      auto-hlines: false,
      header-rows: 1,
      hlinex(),
      colspanx(4)[*Alphabets*], vlinex(), colspanx(4)[*Greek*],
      hlinex(),
      [`va`], [$va$], [`vA`], [$vA$], [`valpha`], [$valpha$], [], [],
      [`vb`], [$vb$], [`vB`], [$vB$], [`vbeta`], [$vbeta$], [], [],
      [`vc`], [$vc$], [`vC`], [$vC$], [`vchi`], [$vchi$], [], [],
      [`vd`], [$vd$], [`vD`], [$vD$], [`vdelta`], [$vdelta$], [`vDelta`], [$vDelta$],
      [`ve`], [$ve$], [`vE`], [$vE$], [`vepsilon`], [$vepsilon$], [], [],
      [`vf`], [$vf$], [`vF`], [$vF$], [`veta`], [$veta$], [], [],
      [`vg`], [$vg$], [`vG`], [$vG$], [`vgamma`], [$vgamma$], [`vGamma`], [$vGamma$],
      [`vh`], [$vh$], [`vH`], [$vH$], [`vtheta`], [$vtheta$], [`vTheta`], [$vTheta$],
      [`vi`], [$vi$], [`vI`], [$vI$], [`viota`], [$viota$], [], [],
      [`vj`], [$vj$], [`vJ`], [$vJ$], [], [], [], [],
      [`vk`], [$vk$], [`vK`], [$vK$], [`vkappa`], [$vkappa$], [], [],
      [`vl`], [$vl$], [`vL`], [$vL$], [`vlambda`], [$vlambda$], [`vLambda`], [$vLambda$],
      [`vm`], [$vm$], [`vM`], [$vM$], [`vmu`], [$vmu$], [], [],
      [`vn`], [$vn$], [`vN`], [$vN$], [`vphi`], [$vphi$], [`vPhi`], [$vPhi$],
      [`vo`], [$vo$], [`vO`], [$vO$], [`vomega`], [$vomega$], [`vOmega`], [$vOmega$],
      [`vp`], [$vp$], [`vP`], [$vP$], [`vpi`], [$vpi$], [`vPi`], [$vPi$],
      [`vq`], [$vq$], [`vQ`], [$vQ$], [`vpsi`], [$vpsi$], [`vPsi`], [$vPsi$],
      [`vr`], [$vr$], [`vR`], [$vR$], [`vrho`], [$vrho$], [], [],
      [`vs`], [$vs$], [`vS`], [$vS$], [`vsigma`], [$vsigma$], [`vSigma`], [$vSigma$],
      [`vt`], [$vt$], [`vT`], [$vT$], [`vtau`], [$vtau$], [], [],
      [`vu`], [$vu$], [`vU`], [$vU$], [`vupsilon`], [$vupsilon$], [`vUpsilon`], [$vUpsilon$],
      [`vv`], [$vv$], [`vV`], [$vV$], [], [], [], [],
      [`vw`], [$vw$], [`vW`], [$vW$], [], [], [], [],
      [`vx`], [$vx$], [`vX`], [$vX$], [`vxi`], [$vxi$], [`vXi`], [$vXi$],
      [`vy`], [$vy$], [`vY`], [$vY$], [], [], [], [],
      [`vz`], [$vz$], [`vZ`], [$vZ$], [`vzeta`], [$vzeta$], [], [],
      hlinex()
    )
  ]

  == Special Matrices

  #align(center)[
    #tablex(
      columns: 4,
      align: center,
      header-rows: 1,
      auto-vlines: false,
      [*Code*], [*Out*], vlinex(), [*Code*], [*Out*],
      [`vzero`], [$vzero$], [`vones`], [$vones$]
    )
  ]

  == Vector/Matrix Marks

  #align(center)[
    #tablex(
      columns: 3,
      align: (left, center, center),
      header-rows: 1,
      auto-vlines: false,
      [*Symbol*], colspanx(2)[*Example*],
      [Transport], [`vA^mT`], [$vA^mT$],
      [Inverse], [`vA^mI`], [$vA^mI$],
      [Generalized Inverse], [`vA^mIG`], [$vA^mIG$],
    )
  ]

  == Operators

  #align(center)[
    #tablex(
      columns: 3,
      align: (left, center, center),
      header-rows: 1,
      auto-vlines: false,
      [*Symbol*], colspanx(2)[*Example*],
      [Variance], [`var(vA)`], [$var(vA)$],
      [Co-variance], [`cov(vA)`], [$cov(vA)$],
    )
  ]
]

= Functions

#{
  import "lib.typ"
  let module = tidy.parse-module(read("lib.typ"), scope: (msc: lib))
  tidy.show-module(module, style: tidy.styles.minimal)
}