.class final Lcom/xueqiu/android/cube/b/f$1;
.super Ljava/lang/Object;
.source "PickNumberFragment.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/b/f;->b()Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/b/f;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/b/f;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/xueqiu/android/cube/b/f$1;->a:Lcom/xueqiu/android/cube/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/f$1;->a:Lcom/xueqiu/android/cube/b/f;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/f;->b(Lcom/xueqiu/android/cube/b/f;)Lcom/xueqiu/android/cube/b/g;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/b/f$1;->a:Lcom/xueqiu/android/cube/b/f;

    invoke-static {v1}, Lcom/xueqiu/android/cube/b/f;->a(Lcom/xueqiu/android/cube/b/f;)Lcom/xueqiu/android/cube/model/Holding;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lcom/xueqiu/android/cube/b/g;->a(Lcom/xueqiu/android/cube/model/Holding;I)V

    .line 72
    return-void
.end method
