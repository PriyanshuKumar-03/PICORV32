 #(innovus after fill)

 setExtractRCMode -engine postRoute -effortLevel high
 extractRC

 #(creates the extlogDir \rightarrow{} IQuantus \rightarrow{} extraction\index{-}options.log and layermap.log)

 setDesignMode -process 45
 setExtractRCMode -engine postRoute -effortLevel signoff –coupled true –lefTechFileMap extr.picorv32_wb.layermap.log
 extractRC

