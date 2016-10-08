.class final Lcom/xueqiu/android/message/client/a$19;
.super Ljava/lang/Object;
.source "CommandHandler.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/client/a;->a(Lcom/snowballfinance/messageplatform/a/e;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/client/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/a;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/xueqiu/android/message/client/a$19;->a:Lcom/xueqiu/android/message/client/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 323
    check-cast p1, Ljava/util/List;

    .line 1326
    iget-object v1, p0, Lcom/xueqiu/android/message/client/a$19;->a:Lcom/xueqiu/android/message/client/a;

    .line 2650
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

    new-instance v3, Lcom/xueqiu/android/message/client/a$52;

    invoke-direct {v3, v1, p1}, Lcom/xueqiu/android/message/client/a$52;-><init>(Lcom/xueqiu/android/message/client/a;Ljava/util/List;)V

    invoke-virtual {v2, v0, v3}, Lcom/xueqiu/android/base/b/ai;->b([Ljava/lang/Long;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 323
    return-void
.end method
