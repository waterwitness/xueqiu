.class public abstract Lcom/xueqiu/android/base/b/p;
.super Ljava/lang/Object;
.source "RequestListener.java"

# interfaces
.implements Lcom/android/volley/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/volley/t",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/xueqiu/android/base/b/q;",
            ">;"
        }
    .end annotation
.end field

.field final f:Lcom/android/volley/s;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/xueqiu/android/base/b/p$2;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/base/b/p$2;-><init>(Lcom/xueqiu/android/base/b/p;)V

    iput-object v0, p0, Lcom/xueqiu/android/base/b/p;->f:Lcom/android/volley/s;

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/xueqiu/android/base/b/q;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/xueqiu/android/base/b/p$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/base/b/p$1;-><init>(Lcom/xueqiu/android/base/b/p;)V

    iput-object v0, p0, Lcom/xueqiu/android/base/b/p;->f:Lcom/android/volley/s;

    .line 22
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xueqiu/android/base/b/p;->a:Ljava/lang/ref/WeakReference;

    .line 23
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/android/volley/y;)V
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 38
    iget-object v0, p0, Lcom/xueqiu/android/base/b/p;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    move v0, v1

    .line 44
    :goto_0
    return v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/b/p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/base/b/p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/base/b/q;

    invoke-interface {v0}, Lcom/xueqiu/android/base/b/q;->z_()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 42
    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
