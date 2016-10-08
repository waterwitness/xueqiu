.class final Lcom/xueqiu/android/cube/b/f$2;
.super Ljava/lang/Object;
.source "PickNumberFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 80
    iput-object p1, p0, Lcom/xueqiu/android/cube/b/f$2;->a:Lcom/xueqiu/android/cube/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/f$2;->a:Lcom/xueqiu/android/cube/b/f;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/f;->c(Lcom/xueqiu/android/cube/b/f;)Landroid/widget/NumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 84
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/f$2;->a:Lcom/xueqiu/android/cube/b/f;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/f;->b(Lcom/xueqiu/android/cube/b/f;)Lcom/xueqiu/android/cube/b/g;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/b/f$2;->a:Lcom/xueqiu/android/cube/b/f;

    invoke-static {v1}, Lcom/xueqiu/android/cube/b/f;->a(Lcom/xueqiu/android/cube/b/f;)Lcom/xueqiu/android/cube/model/Holding;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/cube/b/f$2;->a:Lcom/xueqiu/android/cube/b/f;

    invoke-static {v2}, Lcom/xueqiu/android/cube/b/f;->c(Lcom/xueqiu/android/cube/b/f;)Landroid/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/cube/b/g;->a(Lcom/xueqiu/android/cube/model/Holding;I)V

    .line 85
    return-void
.end method
