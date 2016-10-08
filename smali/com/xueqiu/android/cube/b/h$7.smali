.class final Lcom/xueqiu/android/cube/b/h$7;
.super Ljava/lang/Object;
.source "RebalanceFragment.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/b/h;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/b/h;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/b/h;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/xueqiu/android/cube/b/h$7;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 208
    check-cast p1, Landroid/content/Intent;

    .line 1211
    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h$7;->a:Lcom/xueqiu/android/cube/b/h;

    const-string v0, "extra_stock"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Stock;

    const-string v2, "extra_is_add"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/xueqiu/android/cube/b/h;->a(Lcom/xueqiu/android/cube/b/h;Lcom/xueqiu/android/stock/model/Stock;Z)V

    .line 1212
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$7;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/h;->b(Lcom/xueqiu/android/cube/b/h;)V

    .line 1213
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$7;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/h;->c(Lcom/xueqiu/android/cube/b/h;)V

    .line 208
    return-void
.end method
