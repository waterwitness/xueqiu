.class final Lcom/xueqiu/android/stock/c/n$19;
.super Ljava/lang/Object;
.source "PortfolioFragment.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/n;->a(Landroid/os/Bundle;)V
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
.field final synthetic a:Lcom/xueqiu/android/stock/c/n;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/n;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/n$19;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 184
    .line 1187
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$19;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/n;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$19;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/n;->C()V

    .line 184
    :cond_0
    return-void
.end method
