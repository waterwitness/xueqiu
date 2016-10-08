.class final Lcom/xueqiu/android/message/client/a$24;
.super Ljava/lang/Object;
.source "CommandHandler.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/client/a;->a(Lcom/snowballfinance/messageplatform/a/e;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/f",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Lrx/a",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/client/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/a;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/xueqiu/android/message/client/a$24;->a:Lcom/xueqiu/android/message/client/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 337
    check-cast p1, Ljava/util/List;

    .line 1340
    new-instance v1, Lcom/xueqiu/android/base/b/t;

    invoke-direct {v1}, Lcom/xueqiu/android/base/b/t;-><init>()V

    .line 1341
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Long;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    invoke-virtual {v2, v0, v1}, Lcom/xueqiu/android/base/b/ai;->a([Ljava/lang/Long;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 2032
    iget-object v0, v1, Lcom/xueqiu/android/base/b/t;->a:Lrx/i/a;

    invoke-virtual {v0}, Lrx/i/a;->c()Lrx/a;

    move-result-object v0

    .line 1342
    new-instance v1, Lcom/xueqiu/android/message/client/a$24$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/client/a$24$1;-><init>(Lcom/xueqiu/android/message/client/a$24;)V

    invoke-virtual {v0, v1}, Lrx/a;->d(Lrx/c/f;)Lrx/a;

    move-result-object v0

    .line 337
    return-object v0
.end method
