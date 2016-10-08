.class final Lcom/xueqiu/android/base/b/aq$1;
.super Ljava/lang/Object;
.source "WeiBoAuthorize.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/aq;->onComplete(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/aq;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/aq;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/xueqiu/android/base/b/aq$1;->a:Lcom/xueqiu/android/base/b/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/base/b/aq$1;->a:Lcom/xueqiu/android/base/b/aq;

    iget-object v0, v0, Lcom/xueqiu/android/base/b/aq;->a:Lcom/xueqiu/android/base/b/ap;

    .line 1023
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ap;->f:Lcom/xueqiu/android/base/b/h;

    .line 63
    invoke-interface {v0}, Lcom/xueqiu/android/base/b/h;->a()V

    .line 64
    return-void
.end method
