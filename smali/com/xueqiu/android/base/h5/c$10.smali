.class final Lcom/xueqiu/android/base/h5/c$10;
.super Ljava/lang/Object;
.source "H5Fragment.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/h5/c;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/base/h5/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 857
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/c$10;->b:Lcom/xueqiu/android/base/h5/c;

    iput-object p2, p0, Lcom/xueqiu/android/base/h5/c$10;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 857
    check-cast p1, Lrx/i;

    .line 1863
    :try_start_0
    new-instance v0, Lcom/alipay/sdk/app/c;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c$10;->b:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/sdk/app/c;-><init>(Landroid/app/Activity;)V

    .line 1865
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c$10;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/app/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1866
    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1867
    invoke-virtual {p1}, Lrx/i;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1870
    :goto_0
    return-void

    .line 1868
    :catch_0
    move-exception v0

    .line 1869
    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
