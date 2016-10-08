.class public final Lcom/xueqiu/android/base/b/t;
.super Lcom/xueqiu/android/base/b/p;
.source "RxRequestListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xueqiu/android/base/b/p",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public a:Lrx/i/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i/a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    .line 29
    invoke-static {}, Lrx/i/a;->k()Lrx/i/a;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/base/b/t;->a:Lrx/i/a;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/xueqiu/android/base/b/q;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    .line 29
    invoke-static {}, Lrx/i/a;->k()Lrx/i/a;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/base/b/t;->a:Lrx/i/a;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/xueqiu/android/base/b/t;->a:Lrx/i/a;

    invoke-virtual {v0}, Lrx/i/a;->c()Lrx/a;

    move-result-object v0

    invoke-static {p1, v0}, Lrx/a/a/a;->a(Landroid/app/Activity;Lrx/a;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/support/v4/a/i;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/i;",
            ")",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/xueqiu/android/base/b/t;->a:Lrx/i/a;

    invoke-virtual {v0}, Lrx/i/a;->c()Lrx/a;

    move-result-object v0

    invoke-static {p1, v0}, Lrx/a/a/a;->a(Ljava/lang/Object;Lrx/a;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/volley/y;)V
    .locals 3

    .prologue
    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/base/b/t;->a:Lrx/i/a;

    invoke-virtual {v0, p1}, Lrx/i/a;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string v1, "RxRequestListener"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/xueqiu/android/base/b/t;->a:Lrx/i/a;

    invoke-virtual {v0, p1}, Lrx/i/a;->a(Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/xueqiu/android/base/b/t;->a:Lrx/i/a;

    invoke-virtual {v0}, Lrx/i/a;->a()V

    .line 60
    return-void
.end method
