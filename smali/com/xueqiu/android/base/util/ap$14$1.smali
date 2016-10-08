.class final Lcom/xueqiu/android/base/util/ap$14$1;
.super Lcom/xueqiu/android/base/b/p;
.source "StatusUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/util/ap$14;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/i;

.field final synthetic b:Lcom/xueqiu/android/base/util/ap$14;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/ap$14;Lrx/i;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/xueqiu/android/base/util/ap$14$1;->b:Lcom/xueqiu/android/base/util/ap$14;

    iput-object p2, p0, Lcom/xueqiu/android/base/util/ap$14$1;->a:Lrx/i;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$14$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 248
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$14$1;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    .line 249
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 244
    check-cast p1, Lcom/xueqiu/android/community/model/Status;

    .line 1253
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$14$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1254
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$14$1;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    .line 244
    return-void
.end method
