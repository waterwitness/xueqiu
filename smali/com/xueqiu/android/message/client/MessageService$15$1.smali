.class final Lcom/xueqiu/android/message/client/MessageService$15$1;
.super Lcom/xueqiu/android/base/b/p;
.source "MessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/client/MessageService$15;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xueqiu/android/message/client/MessageService$15;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/MessageService$15;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/xueqiu/android/message/client/MessageService$15$1;->b:Lcom/xueqiu/android/message/client/MessageService$15;

    iput-object p2, p0, Lcom/xueqiu/android/message/client/MessageService$15$1;->a:Ljava/util/List;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 476
    const-string v0, "MessageService"

    const-string v1, "get users failed."

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 477
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 473
    check-cast p1, Ljava/util/List;

    .line 1481
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/storage/DBManager;->saveSimpleUsers(Ljava/util/List;)V

    .line 1482
    const-string v0, "MessageService"

    const-string v1, "updated users: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xueqiu/android/message/client/MessageService$15$1;->a:Ljava/util/List;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    return-void
.end method
