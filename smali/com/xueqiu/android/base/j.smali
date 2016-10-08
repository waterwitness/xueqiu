.class public abstract Lcom/xueqiu/android/base/j;
.super Lcom/xueqiu/android/common/b;
.source "MVPBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/xueqiu/android/base/c;",
        ">",
        "Lcom/xueqiu/android/common/b;"
    }
.end annotation


# instance fields
.field public j:Lcom/xueqiu/android/base/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public k:Z

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/xueqiu/android/base/j;->k:Z

    .line 18
    iput-boolean v0, p0, Lcom/xueqiu/android/base/j;->p:Z

    return-void
.end method


# virtual methods
.method public abstract d()Lcom/xueqiu/android/base/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 23
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onDestroy()V

    .line 70
    iget-object v0, p0, Lcom/xueqiu/android/base/j;->j:Lcom/xueqiu/android/base/c;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/base/j;->j:Lcom/xueqiu/android/base/c;

    invoke-interface {v0}, Lcom/xueqiu/android/base/c;->b()V

    .line 73
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onPause()V

    .line 65
    return-void
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onRestart()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/base/j;->k:Z

    .line 29
    iget-boolean v0, p0, Lcom/xueqiu/android/base/j;->p:Z

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/base/j;->j:Lcom/xueqiu/android/base/c;

    invoke-interface {v0}, Lcom/xueqiu/android/base/c;->a()V

    .line 32
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onResume()V

    .line 60
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onStart()V

    .line 37
    iget-boolean v0, p0, Lcom/xueqiu/android/base/j;->k:Z

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/xueqiu/android/base/j;->d()Lcom/xueqiu/android/base/c;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/base/j;->j:Lcom/xueqiu/android/base/c;

    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/base/j;->j:Lcom/xueqiu/android/base/c;

    invoke-interface {v0}, Lcom/xueqiu/android/base/c;->a()V

    .line 41
    :cond_0
    return-void
.end method
