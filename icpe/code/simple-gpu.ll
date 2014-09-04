define i32 @ave(i32 %a, i32 %b) {
entry:
  %add = add nsw i32 %a, %b
  %div = sdiv i32 %add, 2
  ret i32 %div
}

define void @simple(i32* %data) {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %1 = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %mul = mul i32 %0, %1
  %2 = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %add = add i32 %mul, %2
  %call = call i32 @ave(i32 %add, i32 %add)
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32* %data, i64 %idxprom
  store i32 %call, i32* %arrayidx, align 4
  ret void
}

declare i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() nounwind readnone

declare i32 @llvm.nvvm.read.ptx.sreg.ntid.x() nounwind readnone

declare i32 @llvm.nvvm.read.ptx.sreg.tid.x() nounwind readnone

!nvvm.annotations = !{!1}
!1 = metadata !{void (i32*)* @simple, metadata !"kernel", i32 1}
