; ModuleID = 'probe5.9c762dd9-cgu.0'
source_filename = "probe5.9c762dd9-cgu.0"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-unknown"

@alloc_f0424ebc3d22f49e1e510f82279a0e19 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/478cbb42b730ba4739351b72ce2aa928e78e2f81/library/core/src/num/mod.rs" }>, align 1
@alloc_f5d7547b594f27ceb3dcb7303490510a = private unnamed_addr constant <{ ptr, [12 x i8] }> <{ ptr @alloc_f0424ebc3d22f49e1e510f82279a0e19, [12 x i8] c"K\00\00\00/\04\00\00\05\00\00\00" }>, align 4
@str.0 = internal constant [25 x i8] c"attempt to divide by zero"

; probe5::probe
; Function Attrs: nounwind
define hidden void @_ZN6probe55probe17h070d01ab62e99b5eE() unnamed_addr #0 {
start:
  %0 = call i1 @llvm.expect.i1(i1 false, i1 false)
  br i1 %0, label %panic.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17hfe7911157cc155b8E.exit"

panic.i:                                          ; preds = %start
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h11e106059746ec48E(ptr align 1 @str.0, i32 25, ptr align 4 @alloc_f5d7547b594f27ceb3dcb7303490510a) #3
  unreachable

"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17hfe7911157cc155b8E.exit": ; preds = %start
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare hidden i1 @llvm.expect.i1(i1, i1) #1

; core::panicking::panic
; Function Attrs: cold noinline noreturn nounwind
declare dso_local void @_ZN4core9panicking5panic17h11e106059746ec48E(ptr align 1, i32, ptr align 4) unnamed_addr #2

attributes #0 = { nounwind "target-cpu"="mvp" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { cold noinline noreturn nounwind "target-cpu"="mvp" }
attributes #3 = { noreturn nounwind }
