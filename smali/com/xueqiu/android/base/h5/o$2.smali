.class final Lcom/xueqiu/android/base/h5/o$2;
.super Landroid/os/Handler;
.source "WebviewErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/h5/o;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/h5/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/o;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/o$2;->a:Lcom/xueqiu/android/base/h5/o;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/xueqiu/android/base/h5/o;->d()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/o$2;->a:Lcom/xueqiu/android/base/h5/o;

    invoke-static {v0}, Lcom/xueqiu/android/base/h5/o;->f(Lcom/xueqiu/android/base/h5/o;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :cond_0
    return-void
.end method
