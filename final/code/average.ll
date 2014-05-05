target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:64:128-a0:0:64-n32-S64"
target triple = "armv7-none-linux-gnueabi"

@blockDim = common global i32 0, align 4

; Function Attrs: nounwind readonly
define i32 @root(i32 %x, i32 %y) #0 {
  %1 = load i32* @blockDim, align 4, !tbaa !5
  %2 = mul i32 %1, %x
  %3 = add i32 %2, %y
  %4 = tail call fastcc i32 @ave(i32 %3, i32 %3)
  ret i32 %4
}

; Function Attrs: nounwind readnone
define internal fastcc i32 @ave(i32 %a, i32 %b) #1 {
  %1 = add nsw i32 %b, %a
  %2 = sdiv i32 %1, 2
  ret i32 %2
}

attributes #0 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="0" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="0" "unsafe-fp-math"="false" "use-soft-float"="false" }

!\23pragma = !{!0, !1}
!\23rs_export_var = !{!2}
!\23rs_object_slots = !{}
!\23rs_export_foreach_name = !{!3}
!\23rs_export_foreach = !{!4}

!0 = metadata !{metadata !"version", metadata !"1"}
!1 = metadata !{metadata !"java_package_name", metadata !"com.cs598sva.rsbench.sgemm"}
!2 = metadata !{metadata !"blockDim", metadata !"5"}
!3 = metadata !{metadata !"root"}
!4 = metadata !{metadata !"58"}
!5 = metadata !{metadata !"int", metadata !6}
!6 = metadata !{metadata !"omnipotent char", metadata !7}
!7 = metadata !{metadata !"Simple C/C++ TBAA"}
