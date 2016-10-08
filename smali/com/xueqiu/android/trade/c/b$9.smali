.class final Lcom/xueqiu/android/trade/c/b$9;
.super Ljava/lang/Object;
.source "InputPasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/b;-><init>(Lcom/xueqiu/android/common/b;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/b;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/b$9;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$9;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->g(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/trade/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$9;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->g(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/trade/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/e;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$9;->a:Lcom/xueqiu/android/trade/c/b;

    new-instance v1, Lcom/xueqiu/android/trade/e;

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/b$9;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v2}, Lcom/xueqiu/android/trade/c/b;->e(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/common/b;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xueqiu/android/trade/e;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/c/b;->a(Lcom/xueqiu/android/trade/c/b;Lcom/xueqiu/android/trade/e;)Lcom/xueqiu/android/trade/e;

    .line 257
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$9;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->g(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/trade/e;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/trade/c/b$9$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/b$9$1;-><init>(Lcom/xueqiu/android/trade/c/b$9;)V

    .line 1122
    iput-object v1, v0, Lcom/xueqiu/android/trade/e;->c:Lcom/xueqiu/android/trade/f;

    .line 263
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$9;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->g(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/trade/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/e;->a()V

    .line 265
    :cond_1
    return-void
.end method
