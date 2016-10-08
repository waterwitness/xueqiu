.class final Lcom/xueqiu/android/message/client/a$20$1;
.super Ljava/lang/Object;
.source "CommandHandler.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/client/a$20;->a()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/message/model/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/client/a$20;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/a$20;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/xueqiu/android/message/client/a$20$1;->a:Lcom/xueqiu/android/message/client/a$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 372
    check-cast p1, Ljava/util/List;

    .line 1375
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/storage/DBManager;->updateTalkByMessages(Ljava/util/List;)Ljava/util/List;

    .line 1376
    iget-object v0, p0, Lcom/xueqiu/android/message/client/a$20$1;->a:Lcom/xueqiu/android/message/client/a$20;

    iget-object v3, v0, Lcom/xueqiu/android/message/client/a$20;->c:Lcom/xueqiu/android/message/client/a;

    iget-object v0, p0, Lcom/xueqiu/android/message/client/a$20$1;->a:Lcom/xueqiu/android/message/client/a$20;

    iget-boolean v4, v0, Lcom/xueqiu/android/message/client/a$20;->b:Z

    .line 2762
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2763
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/base/storage/DBManager;->getAllUnreadCount(Z)I

    move-result v0

    .line 2764
    sget-object v5, Lcom/xueqiu/android/message/client/c;->f:Lrx/i/b;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lrx/i/b;->a(Ljava/lang/Object;)V

    .line 2767
    :cond_0
    sget-object v0, Lcom/xueqiu/android/message/client/c;->a:Lrx/i/c;

    invoke-virtual {v0, p1}, Lrx/i/c;->a(Ljava/lang/Object;)V

    .line 2769
    const-string v5, "CommandHandler"

    const-string v6, "[user on line : %d] [notify : %d] [isPushPeriod : %d]"

    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    move-result-object v0

    .line 3442
    iget-boolean v0, v0, Lcom/xueqiu/android/base/b;->c:Z

    .line 2769
    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    if-eqz v4, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v1

    const/4 v0, 0x2

    invoke-virtual {v3}, Lcom/xueqiu/android/message/client/a;->b()Z

    move-result v8

    if-eqz v8, :cond_4

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2770
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    move-result-object v0

    .line 4442
    iget-boolean v0, v0, Lcom/xueqiu/android/base/b;->c:Z

    .line 2770
    if-nez v0, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/xueqiu/android/message/client/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2775
    iget-object v0, v3, Lcom/xueqiu/android/message/client/a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 372
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 2769
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method
