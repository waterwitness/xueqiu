.class public abstract Lcom/xueqiu/android/base/k;
.super Lcom/xueqiu/android/common/c;
.source "MVPBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/xueqiu/android/base/c;",
        ">",
        "Lcom/xueqiu/android/common/c;"
    }
.end annotation


# instance fields
.field public a:Lcom/xueqiu/android/base/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/xueqiu/android/base/k;->b()Lcom/xueqiu/android/base/c;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/base/k;->a:Lcom/xueqiu/android/base/c;

    .line 20
    iget-object v0, p0, Lcom/xueqiu/android/base/k;->a:Lcom/xueqiu/android/base/c;

    invoke-interface {v0}, Lcom/xueqiu/android/base/c;->a()V

    .line 21
    return-void
.end method

.method public abstract b()Lcom/xueqiu/android/base/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->e()V

    .line 28
    iget-object v0, p0, Lcom/xueqiu/android/base/k;->a:Lcom/xueqiu/android/base/c;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/xueqiu/android/base/k;->a:Lcom/xueqiu/android/base/c;

    invoke-interface {v0}, Lcom/xueqiu/android/base/c;->b()V

    .line 31
    :cond_0
    return-void
.end method
