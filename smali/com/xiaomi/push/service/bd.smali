.class public final Lcom/xiaomi/push/service/bd;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Lcom/xiaomi/push/service/ag;

.field public l:Landroid/content/Context;

.field m:Lcom/xiaomi/push/service/bf;

.field n:I

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/push/service/be;",
            ">;"
        }
    .end annotation
.end field

.field p:Lcom/xiaomi/push/service/XMPushService;

.field q:Lcom/xiaomi/push/service/c;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/push/service/bf;->a:Lcom/xiaomi/push/service/bf;

    iput-object v0, p0, Lcom/xiaomi/push/service/bd;->m:Lcom/xiaomi/push/service/bf;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/bd;->n:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/bd;->o:Ljava/util/List;

    new-instance v0, Lcom/xiaomi/push/service/c;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/c;-><init>(Lcom/xiaomi/push/service/bd;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/bd;->q:Lcom/xiaomi/push/service/c;

    iput-object p1, p0, Lcom/xiaomi/push/service/bd;->p:Lcom/xiaomi/push/service/XMPushService;

    new-instance v0, Lcom/xiaomi/push/service/bg;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/bg;-><init>(Lcom/xiaomi/push/service/bd;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/bd;->a(Lcom/xiaomi/push/service/be;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/push/service/be;)V
    .locals 2

    iget-object v1, p0, Lcom/xiaomi/push/service/bd;->o:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/bd;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/xiaomi/push/service/bf;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 0
    iget-object v3, p0, Lcom/xiaomi/push/service/bd;->o:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/bd;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/be;

    iget-object v5, p0, Lcom/xiaomi/push/service/bd;->m:Lcom/xiaomi/push/service/bf;

    invoke-interface {v0, v5, p1, p3}, Lcom/xiaomi/push/service/be;->a(Lcom/xiaomi/push/service/bf;Lcom/xiaomi/push/service/bf;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/push/service/bd;->m:Lcom/xiaomi/push/service/bf;

    if-eq v0, p1, :cond_1

    const-string v3, "update the client %7$s status. %1$s->%2$s %3$s %4$s %5$s %6$s"

    const/4 v0, 0x7

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/push/service/bd;->m:Lcom/xiaomi/push/service/bf;

    aput-object v0, v4, v2

    aput-object p1, v4, v1

    .line 1000
    packed-switch p2, :pswitch_data_0

    const-string v0, "unknown"

    .line 0
    :goto_1
    aput-object v0, v4, v6

    invoke-static {p3}, Lcom/xiaomi/push/service/bh;->a(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    const/4 v0, 0x4

    aput-object p4, v4, v0

    const/4 v0, 0x5

    aput-object p5, v4, v0

    const/4 v0, 0x6

    iget-object v5, p0, Lcom/xiaomi/push/service/bd;->h:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/push/service/bd;->m:Lcom/xiaomi/push/service/bf;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/bd;->k:Lcom/xiaomi/push/service/ag;

    if-nez v0, :cond_3

    const-string v0, "status changed while the client dispatcher is missing"

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    .line 3000
    :cond_2
    :goto_2
    return-void

    .line 1000
    :pswitch_0
    const-string v0, "OPEN"

    goto :goto_1

    :pswitch_1
    const-string v0, "CLOSE"

    goto :goto_1

    :pswitch_2
    const-string v0, "KICK"

    goto :goto_1

    .line 0
    :cond_3
    if-ne p2, v6, :cond_4

    iget-object v0, p0, Lcom/xiaomi/push/service/bd;->l:Landroid/content/Context;

    .line 2000
    const-string v1, "5"

    iget-object v2, p0, Lcom/xiaomi/push/service/bd;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.xiaomi.push.channel_closed"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/xiaomi/push/service/bd;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/xiaomi/push/service/bh;->q:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/push/service/bd;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ext_reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v2, Lcom/xiaomi/push/service/bh;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/push/service/bd;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/xiaomi/push/service/bh;->B:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/push/service/bd;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/xiaomi/push/service/bd;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/ag;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_2

    .line 0
    :cond_4
    if-ne p2, v7, :cond_6

    iget-object v0, p0, Lcom/xiaomi/push/service/bd;->l:Landroid/content/Context;

    .line 3000
    const-string v1, "5"

    iget-object v2, p0, Lcom/xiaomi/push/service/bd;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "mipush kicked by server"

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v1, "com.xiaomi.push.kicked"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/push/service/bd;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ext_kick_type"

    invoke-virtual {v2, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ext_kick_reason"

    invoke-virtual {v2, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ext_chid"

    iget-object v3, p0, Lcom/xiaomi/push/service/bd;->h:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/bh;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/push/service/bd;->b:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/bh;->B:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/push/service/bd;->j:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/push/service/bd;->a:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/xiaomi/push/service/ag;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 0
    :cond_6
    if-ne p2, v1, :cond_2

    sget-object v0, Lcom/xiaomi/push/service/bf;->c:Lcom/xiaomi/push/service/bf;

    if-ne p1, v0, :cond_8

    move v0, v1

    :goto_3
    if-nez v0, :cond_9

    const-string v1, "wait"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/xiaomi/push/service/bd;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/push/service/bd;->n:I

    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/xiaomi/push/service/bd;->l:Landroid/content/Context;

    invoke-static {v1, p0, v0, p3, p4}, Lcom/xiaomi/push/service/ag;->a(Landroid/content/Context;Lcom/xiaomi/push/service/bd;ZILjava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    move v0, v2

    goto :goto_3

    :cond_9
    if-eqz v0, :cond_7

    iput v2, p0, Lcom/xiaomi/push/service/bd;->n:I

    goto :goto_4

    .line 1000
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
