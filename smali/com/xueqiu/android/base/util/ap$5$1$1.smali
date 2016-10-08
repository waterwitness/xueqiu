.class final Lcom/xueqiu/android/base/util/ap$5$1$1;
.super Lcom/xueqiu/android/base/b/p;
.source "StatusUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/ap$5$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/PhotoUploadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/util/ap$5$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/ap$5$1;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/xueqiu/android/base/util/ap$5$1$1;->a:Lcom/xueqiu/android/base/util/ap$5$1;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$5$1$1;->a:Lcom/xueqiu/android/base/util/ap$5$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/ap$5$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 467
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 463
    check-cast p1, Lcom/xueqiu/android/common/model/PhotoUploadResult;

    .line 1471
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$5$1$1;->a:Lcom/xueqiu/android/base/util/ap$5$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/ap$5$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1472
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$5$1$1;->a:Lcom/xueqiu/android/base/util/ap$5$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/ap$5$1;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    .line 463
    return-void
.end method
