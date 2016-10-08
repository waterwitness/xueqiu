.class final Lcom/xueqiu/android/message/client/MessageService$13;
.super Ljava/lang/Object;
.source "MessageService.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/client/MessageService;
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
.field final synthetic a:Lcom/xueqiu/android/message/client/MessageService;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/MessageService;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/xueqiu/android/message/client/MessageService$13;->a:Lcom/xueqiu/android/message/client/MessageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 444
    check-cast p1, Ljava/util/List;

    .line 1447
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService$13;->a:Lcom/xueqiu/android/message/client/MessageService;

    invoke-static {v0}, Lcom/xueqiu/android/message/client/MessageService;->h(Lcom/xueqiu/android/message/client/MessageService;)Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Long;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    new-instance v2, Lcom/xueqiu/android/message/client/MessageService$13$1;

    invoke-direct {v2, p0, p1}, Lcom/xueqiu/android/message/client/MessageService$13$1;-><init>(Lcom/xueqiu/android/message/client/MessageService$13;Ljava/util/List;)V

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/base/b/ai;->b([Ljava/lang/Long;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 444
    :cond_0
    return-void
.end method
