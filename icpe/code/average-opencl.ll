; Function Attrs: nounwind readnone 
define i32 @ave(i32 %a, i32 %b) #0 {
entry:
  %add = add nsw i32 %b, %a
  %div = sdiv i32 %add, 2
  ret i32 %div
}

; Function Attrs: nounwind 
define void @simple(i32 addrspace(1)* nocapture %data) #1 {
entry:
  %call = tail call i32 bitcast (i32 (...)* @get_global_id to i32 (i32)*)(i32 0) #3
  %call1 = tail call i32 bitcast (i32 (...)* @get_global_size to i32 (i32)*)(i32 0) #3
  %mul = mul nsw i32 %call1, %call
  %call2 = tail call i32 bitcast (i32 (...)* @get_local_id to i32 (i32)*)(i32 0) #3
  %add = add nsw i32 %mul, %call2
  %add.i = shl nsw i32 %add, 1
  %div.i = sdiv i32 %add.i, 2
  %arrayidx = getelementptr inbounds i32 addrspace(1)* %data, i32 %add
  store i32 %div.i, i32 addrspace(1)* %arrayidx, align 4, !tbaa !1
  ret void
}

declare i32 @get_global_id(...) #2

declare i32 @get_global_size(...) #2

declare i32 @get_local_id(...) #2

!opencl.kernels = !{!0}

!0 = metadata !{void (i32 addrspace(1)*)* @simple}
!1 = metadata !{metadata !"int", metadata !2}
!2 = metadata !{metadata !"omnipotent char", metadata !3}
!3 = metadata !{metadata !"Simple C/C++ TBAA"}
