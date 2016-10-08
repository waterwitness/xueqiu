.class public Lcom/xiaomi/push/service/XMPushService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/xiaomi/e/e;


# static fields
.field public static d:I


# instance fields
.field public a:Lcom/xiaomi/e/a;

.field b:Lcom/xiaomi/push/service/ag;

.field c:Lcom/xiaomi/push/service/ai;

.field private e:Lcom/xiaomi/e/c;

.field private f:Lcom/xiaomi/push/service/r;

.field private g:J

.field private h:Lcom/xiaomi/e/p;

.field private i:Lcom/xiaomi/push/service/a;

.field private j:Lcom/xiaomi/push/service/a/a;

.field private k:Lcom/xiaomi/e/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "42.62.94.2"

    invoke-static {v0, v1}, Lcom/xiaomi/d/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "114.54.23.2"

    invoke-static {v0, v1}, Lcom/xiaomi/d/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "111.13.142.2"

    invoke-static {v0, v1}, Lcom/xiaomi/d/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "111.206.200.2"

    invoke-static {v0, v1}, Lcom/xiaomi/d/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "app.chat.xiaomi.net"

    invoke-static {v0, v1}, Lcom/xiaomi/d/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lcom/xiaomi/e/p;->a:Z

    sput v2, Lcom/xiaomi/push/service/XMPushService;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/service/XMPushService;->g:J

    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lcom/xiaomi/push/service/a;

    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->j:Lcom/xiaomi/push/service/a/a;

    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->c:Lcom/xiaomi/push/service/ai;

    new-instance v0, Lcom/xiaomi/push/service/w;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/w;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->k:Lcom/xiaomi/e/g;

    return-void
.end method

.method private a([B)Lcom/xiaomi/e/c/d;
    .locals 1

    new-instance v0, Lcom/xiaomi/g/a/n;

    invoke-direct {v0}, Lcom/xiaomi/g/a/n;-><init>()V

    :try_start_0
    invoke-static {v0, p1}, Lcom/xiaomi/g/a/an;->a(Lorg/apache/a/b;[B)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/g/a/n;)Lcom/xiaomi/e/c/d;
    :try_end_0
    .catch Lorg/apache/a/g; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/xiaomi/e/c/e;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/e/c/e;
    .locals 4

    .prologue
    .line 0
    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/xiaomi/push/service/bb;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "open channel should be called first before sending a packet, pkg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    :cond_0
    :goto_1
    return-object p1

    .line 51004
    :cond_1
    iput-object p2, p1, Lcom/xiaomi/e/c/e;->u:Ljava/lang/String;

    .line 51005
    iget-object v0, p1, Lcom/xiaomi/e/c/e;->t:Ljava/lang/String;

    .line 0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51006
    iput-object v0, p1, Lcom/xiaomi/e/c/e;->t:Ljava/lang/String;

    .line 51007
    :cond_2
    iget-object v2, p1, Lcom/xiaomi/e/c/e;->s:Ljava/lang/String;

    .line 0
    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/push/service/bb;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/bd;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->b()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drop a packet as the channel is not connected, chid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/xiaomi/push/service/bd;->m:Lcom/xiaomi/push/service/bf;

    sget-object v3, Lcom/xiaomi/push/service/bf;->c:Lcom/xiaomi/push/service/bf;

    if-eq v2, v3, :cond_5

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drop a packet as the channel is not opened, chid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, v1, Lcom/xiaomi/push/service/bd;->j:Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid session. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lcom/xiaomi/e/c/d;

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    check-cast p1, Lcom/xiaomi/e/c/d;

    iget-object v0, v1, Lcom/xiaomi/push/service/bd;->i:Ljava/lang/String;

    .line 51008
    invoke-virtual {p1}, Lcom/xiaomi/e/c/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/q;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    new-instance v0, Lcom/xiaomi/e/c/d;

    invoke-direct {v0}, Lcom/xiaomi/e/c/d;-><init>()V

    .line 51009
    iget-object v2, p1, Lcom/xiaomi/e/c/e;->s:Ljava/lang/String;

    .line 51010
    iput-object v2, v0, Lcom/xiaomi/e/c/e;->s:Ljava/lang/String;

    .line 51011
    iget-object v2, p1, Lcom/xiaomi/e/c/e;->r:Ljava/lang/String;

    .line 51012
    iput-object v2, v0, Lcom/xiaomi/e/c/e;->r:Ljava/lang/String;

    .line 51008
    invoke-virtual {p1}, Lcom/xiaomi/e/c/d;->d()Ljava/lang/String;

    move-result-object v2

    .line 51013
    iput-object v2, v0, Lcom/xiaomi/e/c/e;->q:Ljava/lang/String;

    .line 51014
    iget-object v2, p1, Lcom/xiaomi/e/c/e;->t:Ljava/lang/String;

    .line 51015
    iput-object v2, v0, Lcom/xiaomi/e/c/e;->t:Ljava/lang/String;

    .line 51016
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/xiaomi/e/c/d;->m:Z

    .line 51008
    invoke-virtual {p1}, Lcom/xiaomi/e/c/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/e/e/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/push/service/q;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/e/c/a;

    const-string v3, "s"

    invoke-direct {v2, v3}, Lcom/xiaomi/e/c/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/xiaomi/e/c/a;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/e/c/d;->a(Lcom/xiaomi/e/c/a;)V

    move-object p1, v0

    .line 0
    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/e/p;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->h:Lcom/xiaomi/e/p;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/g/a/n;
    .locals 2

    .prologue
    .line 0
    new-instance v0, Lcom/xiaomi/g/a/p;

    invoke-direct {v0}, Lcom/xiaomi/g/a/p;-><init>()V

    .line 41000
    iput-object p1, v0, Lcom/xiaomi/g/a/p;->d:Ljava/lang/String;

    .line 0
    const-string v1, "package uninstalled"

    .line 42000
    iput-object v1, v0, Lcom/xiaomi/g/a/p;->e:Ljava/lang/String;

    .line 0
    invoke-static {}, Lcom/xiaomi/e/c/e;->c()Ljava/lang/String;

    move-result-object v1

    .line 43000
    iput-object v1, v0, Lcom/xiaomi/g/a/p;->c:Ljava/lang/String;

    .line 0
    invoke-virtual {v0}, Lcom/xiaomi/g/a/p;->a()Lcom/xiaomi/g/a/p;

    sget-object v1, Lcom/xiaomi/g/a/a;->i:Lcom/xiaomi/g/a/a;

    invoke-static {p0, p1, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/a/b;Lcom/xiaomi/g/a/a;)Lcom/xiaomi/g/a/n;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/a/b;Lcom/xiaomi/g/a/a;)Lcom/xiaomi/g/a/n;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/a/b",
            "<TT;*>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/xiaomi/g/a/a;",
            ")",
            "Lcom/xiaomi/g/a/n;"
        }
    .end annotation

    .prologue
    .line 0
    invoke-static {p2}, Lcom/xiaomi/g/a/an;->a(Lorg/apache/a/b;)[B

    move-result-object v0

    new-instance v1, Lcom/xiaomi/g/a/n;

    invoke-direct {v1}, Lcom/xiaomi/g/a/n;-><init>()V

    new-instance v2, Lcom/xiaomi/g/a/f;

    invoke-direct {v2}, Lcom/xiaomi/g/a/f;-><init>()V

    const-wide/16 v4, 0x5

    iput-wide v4, v2, Lcom/xiaomi/g/a/f;->a:J

    const-string v3, "fakeid"

    iput-object v3, v2, Lcom/xiaomi/g/a/f;->b:Ljava/lang/String;

    .line 44000
    iput-object v2, v1, Lcom/xiaomi/g/a/n;->g:Lcom/xiaomi/g/a/f;

    .line 0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 45000
    iput-object v0, v1, Lcom/xiaomi/g/a/n;->d:Ljava/nio/ByteBuffer;

    .line 46000
    iput-object p3, v1, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    .line 0
    invoke-virtual {v1}, Lcom/xiaomi/g/a/n;->a()Lcom/xiaomi/g/a/n;

    .line 47000
    iput-object p0, v1, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    .line 0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/xiaomi/g/a/n;->a(Z)Lcom/xiaomi/g/a/n;

    .line 48000
    iput-object p1, v1, Lcom/xiaomi/g/a/n;->e:Ljava/lang/String;

    .line 0
    return-object v1
.end method

.method private a(Ljava/lang/String;Landroid/content/Intent;)Lcom/xiaomi/push/service/bd;
    .locals 3

    sget-object v0, Lcom/xiaomi/push/service/bh;->p:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/xiaomi/push/service/bb;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/bd;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/push/service/bd;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/bd;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    :cond_0
    sget-object v1, Lcom/xiaomi/push/service/bh;->q:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/bd;->h:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/push/service/bh;->p:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/bd;->b:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/push/service/bh;->s:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/bd;->c:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/push/service/bh;->y:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/bd;->a:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/push/service/bh;->w:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/bd;->f:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/push/service/bh;->x:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/bd;->g:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/push/service/bh;->v:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/xiaomi/push/service/bd;->e:Z

    sget-object v1, Lcom/xiaomi/push/service/bh;->u:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/bd;->i:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/push/service/bh;->B:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/bd;->j:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/push/service/bh;->t:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/bd;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lcom/xiaomi/push/service/ag;

    iput-object v1, v0, Lcom/xiaomi/push/service/bd;->k:Lcom/xiaomi/push/service/ag;

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/bd;->l:Landroid/content/Context;

    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/bb;->a(Lcom/xiaomi/push/service/bd;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 0
    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/bb;->c(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/push/service/bd;

    if-eqz v2, :cond_0

    new-instance v0, Lcom/xiaomi/push/service/m;

    move-object v1, p0

    move v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/m;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/bd;ILjava/lang/String;Ljava/lang/String;)V

    .line 51018
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    goto :goto_0

    .line 0
    :cond_1
    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/bb;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/xiaomi/g/a/n;)Lcom/xiaomi/e/c/d;
    .locals 5

    .prologue
    .line 0
    :try_start_0
    new-instance v0, Lcom/xiaomi/e/c/d;

    invoke-direct {v0}, Lcom/xiaomi/e/c/d;-><init>()V

    const-string v1, "5"

    .line 49000
    iput-object v1, v0, Lcom/xiaomi/e/c/e;->t:Ljava/lang/String;

    .line 0
    const-string v1, "xiaomi.com"

    .line 50000
    iput-object v1, v0, Lcom/xiaomi/e/c/e;->r:Ljava/lang/String;

    .line 0
    invoke-static {p0}, Lcom/xiaomi/push/service/am;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/al;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/push/service/al;->a:Ljava/lang/String;

    .line 51000
    iput-object v1, v0, Lcom/xiaomi/e/c/e;->s:Ljava/lang/String;

    .line 51001
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xiaomi/e/c/d;->m:Z

    .line 0
    const-string v1, "push"

    .line 51002
    iput-object v1, v0, Lcom/xiaomi/e/c/d;->a:Ljava/lang/String;

    .line 0
    iget-object v1, p1, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    .line 51003
    iput-object v1, v0, Lcom/xiaomi/e/c/e;->u:Ljava/lang/String;

    .line 0
    invoke-static {p0}, Lcom/xiaomi/push/service/am;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/al;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/push/service/al;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/g/a/n;->g:Lcom/xiaomi/g/a/f;

    const/4 v3, 0x0

    const-string v4, "@"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/xiaomi/g/a/f;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/g/a/n;->g:Lcom/xiaomi/g/a/f;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/xiaomi/g/a/f;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/g/a/an;->a(Lorg/apache/a/b;)[B

    move-result-object v1

    invoke-static {p0}, Lcom/xiaomi/push/service/am;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/al;

    move-result-object v2

    iget-object v2, v2, Lcom/xiaomi/push/service/al;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/xiaomi/e/c/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/push/service/q;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v1}, Lcom/xiaomi/push/service/q;->a([B[B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/a/a/f/a;->a([B)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/e/c/a;

    const-string v3, "s"

    invoke-direct {v2, v3}, Lcom/xiaomi/e/c/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/xiaomi/e/c/a;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/e/c/d;->a(Lcom/xiaomi/e/c/a;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "try send mi push message. packagename:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 2

    .prologue
    .line 0
    .line 51032
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/am;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/al;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/am;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/al;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/al;->a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/bd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/bd;)V

    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/bb;->a(Lcom/xiaomi/push/service/bd;)V

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/d/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    .line 0
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->d()V

    return-void
.end method

.method private static c()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "miui.os.Build"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "IS_CM_CUSTOMIZATION_TEST"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v3, "IS_CU_CUSTOMIZATION_TEST"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/e/c;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->e:Lcom/xiaomi/e/c;

    return-object v0
.end method

.method private d()V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->j:Lcom/xiaomi/push/service/a/a;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->j:Lcom/xiaomi/push/service/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/a/a;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->j:Lcom/xiaomi/push/service/a/a;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/a/a;->a()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/e/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/e/a;

    return-object v0
.end method

.method static synthetic f(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/e/a;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/e/a;

    return-object v0
.end method

.method static synthetic g(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/ai;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->c:Lcom/xiaomi/push/service/ai;

    return-object v0
.end method

.method static synthetic h(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lcom/xiaomi/push/service/a;

    return-object v0
.end method

.method static synthetic i(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 4

    .prologue
    .line 0
    .line 51033
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/e/a;

    invoke-virtual {v0}, Lcom/xiaomi/e/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "try to connect while connecting."

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/e/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/e/a;

    invoke-virtual {v0}, Lcom/xiaomi/e/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "try to connect while is connected."

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->e:Lcom/xiaomi/e/c;

    invoke-static {p0}, Lcom/xiaomi/a/a/d/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 51034
    iput-object v1, v0, Lcom/xiaomi/e/c;->h:Ljava/lang/String;

    .line 51035
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->h:Lcom/xiaomi/e/p;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->k:Lcom/xiaomi/e/g;

    new-instance v2, Lcom/xiaomi/push/service/af;

    invoke-direct {v2, p0}, Lcom/xiaomi/push/service/af;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/e/p;->a(Lcom/xiaomi/e/g;Lcom/xiaomi/e/b/a;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->h:Lcom/xiaomi/e/p;

    invoke-virtual {v0}, Lcom/xiaomi/e/p;->n()V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->h:Lcom/xiaomi/e/p;

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/e/a;
    :try_end_0
    .catch Lcom/xiaomi/e/t; {:try_start_0 .. :try_end_0} :catch_0

    .line 51033
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/e/a;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/bb;->e()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORK_BLOCKED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 51035
    :catch_0
    move-exception v0

    const-string v1, "fail to create xmpp connection"

    invoke-static {v1, v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->h:Lcom/xiaomi/e/p;

    new-instance v2, Lcom/xiaomi/e/c/g;

    sget-object v3, Lcom/xiaomi/e/c/i;->b:Lcom/xiaomi/e/c/i;

    invoke-direct {v2, v3}, Lcom/xiaomi/e/c/g;-><init>(Lcom/xiaomi/e/c/i;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/e/p;->a(ILjava/lang/Exception;)V

    goto :goto_1

    .line 51033
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORK_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->c:Lcom/xiaomi/push/service/ai;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/ai;->a(I)V

    return-void
.end method

.method public final a(ILjava/lang/Exception;)V
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "disconnect "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/e/a;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/e/a;

    new-instance v2, Lcom/xiaomi/e/c/g;

    sget-object v3, Lcom/xiaomi/e/c/i;->b:Lcom/xiaomi/e/c/i;

    invoke-direct {v2, v3}, Lcom/xiaomi/e/c/g;-><init>(Lcom/xiaomi/e/c/i;)V

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/e/a;->a(ILjava/lang/Exception;)V

    iput-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/e/a;

    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/bb;->a(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/e/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/xiaomi/e/a;)V
    .locals 6

    .prologue
    .line 0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->f:Lcom/xiaomi/push/service/r;

    .line 51030
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xiaomi/push/service/r;->c:J

    iget-object v1, v0, Lcom/xiaomi/push/service/r;->a:Lcom/xiaomi/push/service/XMPushService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/xiaomi/push/service/r;->d:I

    .line 0
    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/bb;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/bd;

    new-instance v2, Lcom/xiaomi/push/service/b;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/push/service/b;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/bd;)V

    .line 51031
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    goto :goto_0

    .line 0
    :cond_0
    return-void
.end method

.method public final a(Lcom/xiaomi/e/a;ILjava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    return-void
.end method

.method public final a(Lcom/xiaomi/e/a;Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    return-void
.end method

.method public final a(Lcom/xiaomi/g/a/n;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/e/a;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/g/a/n;)Lcom/xiaomi/e/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/e/a;

    invoke-virtual {v1, v0}, Lcom/xiaomi/e/a;->a(Lcom/xiaomi/e/c/e;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/xiaomi/e/t;

    const-string v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/e/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/xiaomi/push/service/bd;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/push/service/ad;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/ad;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/bd;->a(Lcom/xiaomi/push/service/be;)V

    return-void
.end method

.method public final a(Lcom/xiaomi/push/service/f;)V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->c:Lcom/xiaomi/push/service/ai;

    iget v1, p1, Lcom/xiaomi/push/service/f;->d:I

    .line 51029
    iget-object v2, v0, Lcom/xiaomi/push/service/ai;->c:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/xiaomi/push/service/ai;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 0
    :cond_0
    return-void
.end method

.method public final a(Lcom/xiaomi/push/service/f;J)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->c:Lcom/xiaomi/push/service/ai;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/push/service/ai;->a(Lcom/xiaomi/push/service/f;J)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 0
    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/service/bb;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/bd;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/xiaomi/push/service/m;

    move-object v1, p0

    move v3, p3

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/m;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/bd;ILjava/lang/String;Ljava/lang/String;)V

    .line 51017
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    .line 0
    :cond_0
    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/service/bb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;[B)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/e/a;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/XMPushService;->a([B)Lcom/xiaomi/e/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/e/a;

    invoke-virtual {v1, v0}, Lcom/xiaomi/e/a;->a(Lcom/xiaomi/e/c/e;)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x42c1d83

    const-string v1, "not a valid message"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/xiaomi/push/service/ap;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/xiaomi/e/t;

    const-string v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/e/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Z)V
    .locals 10

    .prologue
    const/16 v0, 0x28

    const/16 v1, 0x14

    const/16 v2, 0xa

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 0
    iget-object v5, p0, Lcom/xiaomi/push/service/XMPushService;->f:Lcom/xiaomi/push/service/r;

    .line 51023
    iget-object v4, v5, Lcom/xiaomi/push/service/r;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v4}, Lcom/xiaomi/push/service/XMPushService;->a()Z

    move-result v4

    if-eqz v4, :cond_d

    if-eqz p1, :cond_1

    iget-object v0, v5, Lcom/xiaomi/push/service/r;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v7}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    iget-object v0, v5, Lcom/xiaomi/push/service/r;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/push/service/d;

    iget-object v2, v5, Lcom/xiaomi/push/service/r;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/xiaomi/push/service/d;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    .line 51024
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    .line 51023
    iget v0, v5, Lcom/xiaomi/push/service/r;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v5, Lcom/xiaomi/push/service/r;->d:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, v5, Lcom/xiaomi/push/service/r;->a:Lcom/xiaomi/push/service/XMPushService;

    .line 51025
    iget-object v4, v4, Lcom/xiaomi/push/service/XMPushService;->c:Lcom/xiaomi/push/service/ai;

    .line 51026
    iget-object v6, v4, Lcom/xiaomi/push/service/ai;->c:Landroid/os/Handler;

    if-eqz v6, :cond_2

    iget-object v4, v4, Lcom/xiaomi/push/service/ai;->c:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    .line 51023
    :goto_1
    if-nez v4, :cond_0

    .line 51027
    iget v4, v5, Lcom/xiaomi/push/service/r;->d:I

    const/16 v6, 0x8

    if-le v4, v6, :cond_3

    const/16 v0, 0x12c

    .line 51023
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "schedule reconnect in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    iget-object v1, v5, Lcom/xiaomi/push/service/r;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance v2, Lcom/xiaomi/push/service/d;

    iget-object v3, v5, Lcom/xiaomi/push/service/r;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/xiaomi/push/service/d;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    invoke-virtual {v1, v2, v6, v7}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    iget v0, v5, Lcom/xiaomi/push/service/r;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v5, Lcom/xiaomi/push/service/r;->d:I

    iget v0, v5, Lcom/xiaomi/push/service/r;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/xiaomi/push/service/az;->a()V

    goto :goto_0

    :cond_2
    move v4, v3

    .line 51026
    goto :goto_1

    .line 51027
    :cond_3
    iget v4, v5, Lcom/xiaomi/push/service/r;->d:I

    const/4 v6, 0x4

    if-le v4, v6, :cond_4

    const/16 v0, 0x3c

    goto :goto_2

    :cond_4
    iget v4, v5, Lcom/xiaomi/push/service/r;->d:I

    if-lez v4, :cond_5

    move v0, v2

    goto :goto_2

    :cond_5
    iget-wide v6, v5, Lcom/xiaomi/push/service/r;->c:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_6

    move v0, v3

    goto :goto_2

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v5, Lcom/xiaomi/push/service/r;->c:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x493e0

    cmp-long v3, v6, v8

    if-gez v3, :cond_8

    iget v0, v5, Lcom/xiaomi/push/service/r;->b:I

    sget v1, Lcom/xiaomi/push/service/r;->e:I

    if-lt v0, v1, :cond_7

    iget v0, v5, Lcom/xiaomi/push/service/r;->b:I

    goto :goto_2

    :cond_7
    iget v0, v5, Lcom/xiaomi/push/service/r;->b:I

    iget v1, v5, Lcom/xiaomi/push/service/r;->b:I

    int-to-double v2, v1

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v6

    double-to-int v1, v2

    iput v1, v5, Lcom/xiaomi/push/service/r;->b:I

    goto :goto_2

    :cond_8
    const-wide/32 v8, 0xdbba0

    cmp-long v3, v6, v8

    if-gez v3, :cond_a

    iget v1, v5, Lcom/xiaomi/push/service/r;->b:I

    if-ge v1, v0, :cond_9

    iget v0, v5, Lcom/xiaomi/push/service/r;->b:I

    :cond_9
    iput v0, v5, Lcom/xiaomi/push/service/r;->b:I

    iget v0, v5, Lcom/xiaomi/push/service/r;->b:I

    goto/16 :goto_2

    :cond_a
    const-wide/32 v8, 0x1b7740

    cmp-long v0, v6, v8

    if-gez v0, :cond_c

    iget v0, v5, Lcom/xiaomi/push/service/r;->b:I

    if-ge v0, v1, :cond_b

    iget v0, v5, Lcom/xiaomi/push/service/r;->b:I

    :goto_3
    iput v0, v5, Lcom/xiaomi/push/service/r;->b:I

    iget v0, v5, Lcom/xiaomi/push/service/r;->b:I

    goto/16 :goto_2

    :cond_b
    move v0, v1

    goto :goto_3

    :cond_c
    iput v2, v5, Lcom/xiaomi/push/service/r;->b:I

    iget v0, v5, Lcom/xiaomi/push/service/r;->b:I

    goto/16 :goto_2

    .line 51023
    :cond_d
    const-string v0, "should not reconnect as no client or network."

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->c(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final a([BLjava/lang/String;)V
    .locals 7

    .prologue
    const v6, 0x42c1d83

    .line 0
    if-nez p1, :cond_0

    const-string v0, "null payload"

    invoke-static {p0, p2, p1, v6, v0}, Lcom/xiaomi/push/service/ap;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    const-string v0, "register request without payload"

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/xiaomi/g/a/n;

    invoke-direct {v1}, Lcom/xiaomi/g/a/n;-><init>()V

    :try_start_0
    invoke-static {v1, p1}, Lcom/xiaomi/g/a/an;->a(Lorg/apache/a/b;[B)V

    iget-object v0, v1, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    sget-object v2, Lcom/xiaomi/g/a/a;->a:Lcom/xiaomi/g/a/a;

    if-ne v0, v2, :cond_1

    new-instance v4, Lcom/xiaomi/g/a/r;

    invoke-direct {v4}, Lcom/xiaomi/g/a/r;-><init>()V
    :try_end_0
    .catch Lorg/apache/a/g; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Lcom/xiaomi/g/a/n;->b()[B

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaomi/g/a/an;->a(Lorg/apache/a/b;[B)V

    .line 36000
    iget-object v0, v1, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    .line 0
    invoke-static {v0, p1}, Lcom/xiaomi/push/service/ap;->a(Ljava/lang/String;[B)V

    new-instance v0, Lcom/xiaomi/push/service/ao;

    .line 37000
    iget-object v2, v1, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    .line 38000
    iget-object v3, v4, Lcom/xiaomi/g/a/r;->d:Ljava/lang/String;

    .line 39000
    iget-object v4, v4, Lcom/xiaomi/g/a/r;->g:Ljava/lang/String;

    move-object v1, p0

    move-object v5, p1

    .line 0
    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/ao;-><init>(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 40000
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V
    :try_end_1
    .catch Lorg/apache/a/g; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 0
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V

    const v0, 0x42c1d83

    const-string v1, " data action error."

    invoke-static {p0, p2, p1, v0, v1}, Lcom/xiaomi/push/service/ap;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/a/g; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V

    const-string v0, " data container error."

    invoke-static {p0, p2, p1, v6, v0}, Lcom/xiaomi/push/service/ap;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const v0, 0x42c1d83

    :try_start_3
    const-string v1, " registration action required."

    invoke-static {p0, p2, p1, v0, v1}, Lcom/xiaomi/push/service/ap;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    const-string v0, "register request with invalid payload"

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/a/g; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/a/a/d/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/bb;->c()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/push/service/XMPushService;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/xiaomi/e/a;)V
    .locals 1

    const-string v0, "begin to connect..."

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/xiaomi/push/service/bd;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 0
    if-eqz p1, :cond_0

    .line 51028
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    sub-double/2addr v0, v2

    double-to-long v0, v0

    iget v2, p1, Lcom/xiaomi/push/service/bd;->n:I

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0xf

    int-to-long v2, v2

    add-long/2addr v0, v2

    mul-long/2addr v0, v4

    .line 0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "schedule rebind job in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    new-instance v2, Lcom/xiaomi/push/service/b;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/push/service/b;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/bd;)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/e/a;

    invoke-virtual {v0}, Lcom/xiaomi/e/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    new-instance v0, Lcom/xiaomi/push/service/h;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/h;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1000
    sput-object p0, Lcom/xiaomi/e/e/h;->a:Landroid/content/Context;

    .line 0
    invoke-static {p0}, Lcom/xiaomi/push/service/am;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/al;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/xiaomi/push/service/al;->g:I

    invoke-static {v0}, Lcom/xiaomi/a/a/c/a;->a(I)V

    .line 2000
    :cond_0
    new-instance v2, Lcom/xiaomi/push/service/bi;

    invoke-direct {v2, p0}, Lcom/xiaomi/push/service/bi;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-static {}, Lcom/xiaomi/push/service/t;->a()Lcom/xiaomi/push/service/t;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/service/t;->a(Lcom/xiaomi/push/service/u;)V

    invoke-static {}, Lcom/xiaomi/push/service/t;->a()Lcom/xiaomi/push/service/t;

    move-result-object v0

    .line 3000
    iget-object v0, v0, Lcom/xiaomi/push/service/t;->a:Lcom/xiaomi/push/b/b;

    .line 2000
    if-eqz v0, :cond_3

    .line 4000
    iget-boolean v3, v0, Lcom/xiaomi/push/b/b;->b:Z

    .line 2000
    if-eqz v3, :cond_3

    .line 5000
    iget-boolean v0, v0, Lcom/xiaomi/push/b/b;->b:Z

    .line 2000
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/xiaomi/d/f;->a(Lcom/xiaomi/d/g;)V

    :cond_1
    new-instance v0, Lcom/xiaomi/push/service/bj;

    invoke-direct {v0}, Lcom/xiaomi/push/service/bj;-><init>()V

    const-string v2, "0"

    const-string v3, "push"

    const-string v4, "2.2"

    invoke-static {p0, v0, v2, v3, v4}, Lcom/xiaomi/d/f;->a(Landroid/content/Context;Lcom/xiaomi/d/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 0
    new-instance v0, Lcom/xiaomi/push/service/y;

    const-string v2, "xiaomi.com"

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/push/service/y;-><init>(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->e:Lcom/xiaomi/e/c;

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->e:Lcom/xiaomi/e/c;

    .line 6000
    iput-boolean v1, v0, Lcom/xiaomi/e/c;->g:Z

    .line 0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->e:Lcom/xiaomi/e/c;

    .line 7000
    new-instance v1, Lcom/xiaomi/e/p;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/e/p;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/e/c;)V

    .line 0
    iput-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->h:Lcom/xiaomi/e/p;

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->h:Lcom/xiaomi/e/p;

    const-string v1, "xiaomi.com"

    .line 8000
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<iq to=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' id=\'0\' chid=\'0\' type=\'get\'><ping xmlns=\'urn:xmpp:ping\'>%1$s%2$s</ping></iq>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9000
    iput-object v1, v0, Lcom/xiaomi/e/p;->u:Ljava/lang/String;

    .line 0
    new-instance v0, Lcom/xiaomi/d/b;

    const-string v1, "mibind.chat.gslb.mi-idc.com"

    invoke-direct {v0, v1}, Lcom/xiaomi/d/b;-><init>(Ljava/lang/String;)V

    .line 10000
    new-instance v0, Lcom/xiaomi/push/service/ag;

    invoke-direct {v0}, Lcom/xiaomi/push/service/ag;-><init>()V

    .line 0
    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lcom/xiaomi/push/service/ag;

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "sys.boot_completed"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11000
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.xiaomi.push.service_started"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :cond_2
    :goto_1
    new-instance v0, Lcom/xiaomi/push/service/a/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->j:Lcom/xiaomi/push/service/a/a;

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->h:Lcom/xiaomi/e/p;

    invoke-virtual {v0, p0}, Lcom/xiaomi/e/p;->a(Lcom/xiaomi/e/e;)V

    new-instance v0, Lcom/xiaomi/push/service/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/a;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lcom/xiaomi/push/service/a;

    new-instance v0, Lcom/xiaomi/push/service/r;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/r;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->f:Lcom/xiaomi/push/service/r;

    new-instance v0, Lcom/xiaomi/push/service/ah;

    invoke-direct {v0}, Lcom/xiaomi/push/service/ah;-><init>()V

    .line 12000
    invoke-static {}, Lcom/xiaomi/e/d/c;->a()Lcom/xiaomi/e/d/c;

    move-result-object v1

    const-string v2, "all"

    const-string v3, "xm:chat"

    .line 13000
    invoke-static {v2, v3}, Lcom/xiaomi/e/d/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/xiaomi/e/d/c;->a:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 0
    new-instance v0, Lcom/xiaomi/push/service/ai;

    const-string v1, "Connection Controller Thread"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/service/ai;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->c:Lcom/xiaomi/push/service/ai;

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->c:Lcom/xiaomi/push/service/ai;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/ai;->start()V

    new-instance v0, Lcom/xiaomi/push/service/z;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/z;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    .line 14000
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    .line 0
    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/bb;->f()V

    new-instance v1, Lcom/xiaomi/push/service/aa;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/service/aa;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/bb;->a(Lcom/xiaomi/push/service/bc;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/16 v2, 0xf

    .line 0
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->c:Lcom/xiaomi/push/service/ai;

    .line 51019
    const/4 v0, 0x1

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/ai;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 0
    :cond_0
    new-instance v0, Lcom/xiaomi/push/service/ae;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/ae;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    .line 51020
    invoke-virtual {p0, v0, v4, v5}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    .line 0
    new-instance v0, Lcom/xiaomi/push/service/g;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/g;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    .line 51021
    invoke-virtual {p0, v0, v4, v5}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    .line 0
    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/bb;->f()V

    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/service/bb;->a(I)V

    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/bb;->d()V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->h:Lcom/xiaomi/e/p;

    .line 51022
    iget-object v0, v0, Lcom/xiaomi/e/a;->f:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 0
    invoke-static {}, Lcom/xiaomi/push/service/t;->a()Lcom/xiaomi/push/service/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/t;->b()V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->j:Lcom/xiaomi/push/service/a/a;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/a/a;->a()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "Service destroyed"

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 0
    if-nez p1, :cond_2

    const-string v0, "onStart() with intent NULL"

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v5

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/push/service/bh;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/push/service/bh;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_0
    sget-object v0, Lcom/xiaomi/push/service/bh;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/xiaomi/push/service/bh;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "security is empty. ignore."

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v0, "onStart() with intent.Action = %s, chid = %s"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    sget-object v6, Lcom/xiaomi/push/service/bh;->q:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_a

    .line 15000
    sget-object v0, Lcom/xiaomi/push/service/bh;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Lcom/xiaomi/push/service/bb;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/bd;

    move-result-object v6

    if-eqz v6, :cond_40

    if-eqz v5, :cond_40

    sget-object v0, Lcom/xiaomi/push/service/bh;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/xiaomi/push/service/bh;->u:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Lcom/xiaomi/push/service/bd;->j:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3f

    iget-object v8, v6, Lcom/xiaomi/push/service/bd;->j:Ljava/lang/String;

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3f

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "session changed. old session="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v6, Lcom/xiaomi/push/service/bd;->j:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", new session="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    move v0, v1

    :goto_2
    iget-object v6, v6, Lcom/xiaomi/push/service/bd;->i:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v0, "security changed. "

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    move v0, v1

    .line 0
    :cond_4
    :goto_3
    invoke-direct {p0, v5, p1}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Landroid/content/Intent;)Lcom/xiaomi/push/service/bd;

    move-result-object v5

    invoke-static {p0}, Lcom/xiaomi/a/a/d/d;->a(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {p0, v5, v2, v3, v4}, Lcom/xiaomi/push/service/ag;->a(Landroid/content/Context;Lcom/xiaomi/push/service/bd;ZILjava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->b()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, v5, Lcom/xiaomi/push/service/bd;->m:Lcom/xiaomi/push/service/bf;

    sget-object v7, Lcom/xiaomi/push/service/bf;->a:Lcom/xiaomi/push/service/bf;

    if-ne v6, v7, :cond_6

    new-instance v0, Lcom/xiaomi/push/service/b;

    invoke-direct {v0, p0, v5}, Lcom/xiaomi/push/service/b;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/bd;)V

    .line 16000
    invoke-virtual {p0, v0, v10, v11}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    goto/16 :goto_1

    .line 0
    :cond_6
    if-eqz v0, :cond_7

    new-instance v0, Lcom/xiaomi/push/service/k;

    invoke-direct {v0, p0, v5}, Lcom/xiaomi/push/service/k;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/bd;)V

    .line 17000
    invoke-virtual {p0, v0, v10, v11}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    goto/16 :goto_1

    .line 0
    :cond_7
    iget-object v0, v5, Lcom/xiaomi/push/service/bd;->m:Lcom/xiaomi/push/service/bf;

    sget-object v6, Lcom/xiaomi/push/service/bf;->b:Lcom/xiaomi/push/service/bf;

    if-ne v0, v6, :cond_8

    const-string v0, "the client is binding. %1$s %2$s."

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v5, Lcom/xiaomi/push/service/bd;->h:Ljava/lang/String;

    aput-object v4, v3, v2

    iget-object v2, v5, Lcom/xiaomi/push/service/bd;->b:Ljava/lang/String;

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, v5, Lcom/xiaomi/push/service/bd;->m:Lcom/xiaomi/push/service/bf;

    sget-object v3, Lcom/xiaomi/push/service/bf;->c:Lcom/xiaomi/push/service/bf;

    if-ne v0, v3, :cond_1

    invoke-static {p0, v5, v1, v2, v4}, Lcom/xiaomi/push/service/ag;->a(Landroid/content/Context;Lcom/xiaomi/push/service/bd;ZILjava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    goto/16 :goto_1

    :cond_a
    const-string v0, "channel id is empty, do nothing!"

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    sget-object v0, Lcom/xiaomi/push/service/bh;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/xiaomi/push/service/bh;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/service/bh;->q:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/push/service/bh;->p:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v5, v0}, Lcom/xiaomi/push/service/bb;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;I)V

    goto :goto_4

    :cond_c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, v1, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_d
    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    sget-object v0, Lcom/xiaomi/push/service/bh;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/xiaomi/push/service/bh;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/push/service/bh;->B:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ext_packet"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ext_encrypt"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v4, Lcom/xiaomi/e/c/d;

    invoke-direct {v4, v3}, Lcom/xiaomi/e/c/d;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v4, v0, v2, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/e/c/e;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/e/c/e;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/xiaomi/push/service/s;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/push/service/s;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/e/c/e;)V

    .line 18000
    invoke-virtual {p0, v1, v10, v11}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    goto/16 :goto_1

    .line 0
    :cond_f
    sget-object v0, Lcom/xiaomi/push/service/bh;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/xiaomi/push/service/bh;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/xiaomi/push/service/bh;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "ext_packets"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    array-length v0, v5

    new-array v6, v0, [Lcom/xiaomi/e/c/d;

    const-string v0, "ext_encrypt"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    :goto_5
    array-length v0, v5

    if-ge v2, v0, :cond_10

    new-instance v7, Lcom/xiaomi/e/c/d;

    aget-object v0, v5, v2

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {v7, v0}, Lcom/xiaomi/e/c/d;-><init>(Landroid/os/Bundle;)V

    aput-object v7, v6, v2

    aget-object v0, v6, v2

    invoke-direct {p0, v0, v3, v4, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/e/c/e;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/e/c/e;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/e/c/d;

    aput-object v0, v6, v2

    aget-object v0, v6, v2

    if-eqz v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_10
    new-instance v0, Lcom/xiaomi/push/service/n;

    invoke-direct {v0, p0, v6}, Lcom/xiaomi/push/service/n;-><init>(Lcom/xiaomi/push/service/XMPushService;[Lcom/xiaomi/e/c/d;)V

    .line 19000
    invoke-virtual {p0, v0, v10, v11}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    goto/16 :goto_1

    .line 0
    :cond_11
    sget-object v0, Lcom/xiaomi/push/service/bh;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/xiaomi/push/service/bh;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/service/bh;->B:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ext_packet"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/e/c/b;

    invoke-direct {v4, v3}, Lcom/xiaomi/e/c/b;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v4, v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/e/c/e;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/e/c/e;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/xiaomi/push/service/s;

    invoke-direct {v0, p0, v4}, Lcom/xiaomi/push/service/s;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/e/c/e;)V

    .line 20000
    invoke-virtual {p0, v0, v10, v11}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    goto/16 :goto_1

    .line 0
    :cond_12
    sget-object v0, Lcom/xiaomi/push/service/bh;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/xiaomi/push/service/bh;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/service/bh;->B:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ext_packet"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/e/c/g;

    invoke-direct {v4, v3}, Lcom/xiaomi/e/c/g;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v4, v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/e/c/e;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/e/c/e;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/xiaomi/push/service/s;

    invoke-direct {v0, p0, v4}, Lcom/xiaomi/push/service/s;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/e/c/e;)V

    .line 21000
    invoke-virtual {p0, v0, v10, v11}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    goto/16 :goto_1

    .line 0
    :cond_13
    const-string v0, "com.xiaomi.push.timer"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "com.xiaomi.push.check_alive"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_14
    const-string v0, "com.xiaomi.push.timer"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "Service called on timer"

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    :goto_6
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->c:Lcom/xiaomi/push/service/ai;

    .line 22000
    iget-boolean v3, v0, Lcom/xiaomi/push/service/ai;->b:Z

    if-eqz v3, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/xiaomi/push/service/ai;->a:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x927c0

    cmp-long v0, v4, v6

    if-lez v0, :cond_16

    move v0, v1

    .line 0
    :goto_7
    if-eqz v0, :cond_17

    const-string v0, "ERROR, the job controller is blocked."

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/bb;->a(I)V

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->stopSelf()V

    goto/16 :goto_1

    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/xiaomi/push/service/XMPushService;->g:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7530

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xiaomi/push/service/XMPushService;->g:J

    const-string v0, "Service called on check alive."

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    goto :goto_6

    :cond_16
    move v0, v2

    .line 22000
    goto :goto_7

    .line 0
    :cond_17
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->b()Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "com.xiaomi.push.timer"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    goto/16 :goto_1

    :cond_18
    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    goto/16 :goto_1

    :cond_19
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/e/a;

    .line 23000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/xiaomi/e/a;->q:J

    sub-long/2addr v4, v6

    invoke-static {}, Lcom/xiaomi/e/k;->b()I

    move-result v0

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-gez v0, :cond_1a

    .line 0
    :goto_8
    if-eqz v1, :cond_1b

    new-instance v0, Lcom/xiaomi/push/service/j;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/j;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    .line 24000
    invoke-virtual {p0, v0, v10, v11}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    goto/16 :goto_1

    :cond_1a
    move v1, v2

    .line 23000
    goto :goto_8

    .line 0
    :cond_1b
    new-instance v0, Lcom/xiaomi/push/service/e;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/service/e;-><init>(Lcom/xiaomi/push/service/XMPushService;I)V

    .line 25000
    invoke-virtual {p0, v0, v10, v11}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    goto/16 :goto_1

    .line 0
    :cond_1c
    const-string v0, "com.xiaomi.push.network_status_changed"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_9
    if-eqz v4, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "network changed, "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    :goto_a
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->h:Lcom/xiaomi/e/p;

    .line 26000
    iget-object v4, v0, Lcom/xiaomi/e/a;->e:Ljava/util/LinkedList;

    monitor-enter v4

    :try_start_1
    iget-object v0, v0, Lcom/xiaomi/e/a;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 0
    invoke-static {p0}, Lcom/xiaomi/a/a/d/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->b()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 27000
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/e/a;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/e/a;

    invoke-virtual {v0}, Lcom/xiaomi/e/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1d

    move v2, v1

    .line 0
    :cond_1d
    if-nez v2, :cond_1e

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->c:Lcom/xiaomi/push/service/ai;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/ai;->a(I)V

    new-instance v0, Lcom/xiaomi/push/service/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/d;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    .line 28000
    invoke-virtual {p0, v0, v10, v11}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    .line 0
    :cond_1e
    invoke-static {p0}, Lcom/xiaomi/push/a/b;->a(Landroid/content/Context;)Lcom/xiaomi/push/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/a/b;->a()V

    :goto_b
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->d()V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_1f
    const-string v0, "network changed, no active network"

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    goto :goto_a

    .line 26000
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 0
    :cond_20
    new-instance v0, Lcom/xiaomi/push/service/e;

    invoke-direct {v0, p0, v3}, Lcom/xiaomi/push/service/e;-><init>(Lcom/xiaomi/push/service/XMPushService;I)V

    .line 29000
    invoke-virtual {p0, v0, v10, v11}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    goto :goto_b

    .line 0
    :cond_21
    sget-object v0, Lcom/xiaomi/push/service/bh;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/xiaomi/push/service/bh;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Landroid/content/Intent;)Lcom/xiaomi/push/service/bd;

    :cond_22
    new-instance v0, Lcom/xiaomi/push/service/l;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/l;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    .line 30000
    invoke-virtual {p0, v0, v10, v11}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    goto/16 :goto_1

    .line 0
    :cond_23
    sget-object v0, Lcom/xiaomi/push/service/bh;->l:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/xiaomi/push/service/bh;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/xiaomi/push/service/bb;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "open channel should be called first before update info, pkg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_24
    sget-object v0, Lcom/xiaomi/push/service/bh;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/xiaomi/push/service/bh;->p:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_25
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v5, v0}, Lcom/xiaomi/push/service/bb;->c(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/bd;

    move-object v4, v0

    :cond_26
    :goto_c
    if-eqz v4, :cond_1

    sget-object v0, Lcom/xiaomi/push/service/bh;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/xiaomi/push/service/bh;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/xiaomi/push/service/bd;->f:Ljava/lang/String;

    :cond_27
    sget-object v0, Lcom/xiaomi/push/service/bh;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/push/service/bh;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/xiaomi/push/service/bd;->g:Ljava/lang/String;

    goto/16 :goto_1

    :cond_28
    invoke-virtual {v5, v0, v3}, Lcom/xiaomi/push/service/bb;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/bd;

    move-result-object v4

    goto :goto_c

    :cond_29
    const-string v0, "com.xiaomi.mipush.REGISTER_APP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/o;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/o;

    .line 31000
    const-string v0, "@SHIP.TO.2A2FE0D7@"

    const-string v3, "xmsf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "@SHIP.TO.2A2FE0D7@"

    const-string v3, "xiaomi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "@SHIP.TO.2A2FE0D7@"

    const-string v3, "miui"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_2a
    move v0, v1

    .line 0
    :goto_d
    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/o;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/o;->a()I

    move-result v0

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "register without being provisioned. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mipush_app_package"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2b
    move v0, v2

    .line 31000
    goto :goto_d

    .line 0
    :cond_2c
    const-string v0, "mipush_payload"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    const-string v3, "mipush_app_package"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mipush_env_chanage"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "mipush_env_type"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0}, Lcom/xiaomi/push/service/an;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/an;

    move-result-object v4

    .line 32000
    iget-object v5, v4, Lcom/xiaomi/push/service/an;->b:Ljava/util/List;

    monitor-enter v5

    :try_start_3
    iget-object v6, v4, Lcom/xiaomi/push/service/an;->b:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    iget-object v6, v4, Lcom/xiaomi/push/service/an;->b:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v6, v4, Lcom/xiaomi/push/service/an;->b:Ljava/util/List;

    const-string v7, ","

    invoke-static {v6, v7}, Lcom/xiaomi/a/a/f/d;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v4, v4, Lcom/xiaomi/push/service/an;->a:Landroid/content/Context;

    const-string v7, "mipush_app_info"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v7, "unregistered_pkg_names"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2d
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 0
    if-eqz v2, :cond_2e

    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    new-instance v2, Lcom/xiaomi/push/service/ab;

    invoke-direct {v2, p0, v1, v0, v3}, Lcom/xiaomi/push/service/ab;-><init>(Lcom/xiaomi/push/service/XMPushService;I[BLjava/lang/String;)V

    .line 33000
    invoke-virtual {p0, v2, v10, v11}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    goto/16 :goto_1

    .line 32000
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 0
    :cond_2e
    invoke-virtual {p0, v0, v3}, Lcom/xiaomi/push/service/XMPushService;->a([BLjava/lang/String;)V

    goto/16 :goto_1

    :cond_2f
    const-string v0, "com.xiaomi.mipush.SEND_MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "com.xiaomi.mipush.UNREGISTER_APP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_30
    const-string v0, "mipush_app_package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "mipush_payload"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    const-string v0, "com.xiaomi.mipush.MESSAGE_CACHE"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v0

    const-string v4, "5"

    invoke-virtual {v0, v4}, Lcom/xiaomi/push/service/bb;->c(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    const-string v4, "com.xiaomi.mipush.UNREGISTER_APP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-static {p0}, Lcom/xiaomi/push/service/an;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/an;

    move-result-object v4

    .line 34000
    iget-object v5, v4, Lcom/xiaomi/push/service/an;->b:Ljava/util/List;

    monitor-enter v5

    :try_start_5
    iget-object v6, v4, Lcom/xiaomi/push/service/an;->b:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    iget-object v6, v4, Lcom/xiaomi/push/service/an;->b:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v4, Lcom/xiaomi/push/service/an;->b:Ljava/util/List;

    const-string v7, ","

    invoke-static {v6, v7}, Lcom/xiaomi/a/a/f/d;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v4, v4, Lcom/xiaomi/push/service/an;->a:Landroid/content/Context;

    const-string v7, "mipush_app_info"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v7, "unregistered_pkg_names"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_31
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 0
    :cond_32
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_33

    if-eqz v1, :cond_1

    invoke-static {v2, v3}, Lcom/xiaomi/push/service/ap;->b(Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 34000
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 0
    :cond_33
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/bd;

    iget-object v0, v0, Lcom/xiaomi/push/service/bd;->m:Lcom/xiaomi/push/service/bf;

    sget-object v4, Lcom/xiaomi/push/service/bf;->c:Lcom/xiaomi/push/service/bf;

    if-eq v0, v4, :cond_34

    if-eqz v1, :cond_1

    invoke-static {v2, v3}, Lcom/xiaomi/push/service/ap;->b(Ljava/lang/String;[B)V

    goto/16 :goto_1

    :cond_34
    new-instance v0, Lcom/xiaomi/push/service/ac;

    invoke-direct {v0, p0, v2, v3}, Lcom/xiaomi/push/service/ac;-><init>(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;[B)V

    .line 35000
    invoke-virtual {p0, v0, v10, v11}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    goto/16 :goto_1

    .line 0
    :cond_35
    sget-object v0, Lcom/xiaomi/push/service/p;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "uninstall_pkg_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_7
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v5, 0x100

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    move v1, v2

    :goto_e
    const-string v3, "com.xiaomi.channel"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v3

    const-string v5, "1"

    invoke-virtual {v3, v5}, Lcom/xiaomi/push/service/bb;->c(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_36

    if-eqz v1, :cond_36

    const-string v0, "1"

    invoke-direct {p0, v0, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;I)V

    const-string v0, "close the miliao channel as the app is uninstalled."

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_36
    const-string v3, "pref_registered_pkg_names"

    invoke-virtual {p0, v3, v2}, Lcom/xiaomi/push/service/XMPushService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p0, v0}, Lcom/xiaomi/push/service/ax;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-static {p0, v0}, Lcom/xiaomi/push/service/ax;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_37
    invoke-static {p0, v0}, Lcom/xiaomi/push/service/ax;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    :try_start_8
    invoke-static {v0, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/g/a/n;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/g/a/n;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uninstall "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msg sent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V
    :try_end_8
    .catch Lcom/xiaomi/e/t; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fail to send Message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/e/t;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto/16 :goto_1

    :cond_38
    const-string v0, "com.xiaomi.mipush.CLEAR_NOTIFICATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/xiaomi/push/service/bh;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/service/bh;->z:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-ltz v1, :cond_39

    invoke-static {p0, v0, v1}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_39
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-static {p0, v0}, Lcom/xiaomi/push/service/ax;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3a
    const-string v0, "com.xiaomi.mipush.SET_NOTIFICATION_TYPE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/push/service/bh;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/xiaomi/push/service/bh;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/xiaomi/push/service/bh;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/xiaomi/push/service/bh;->A:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/f/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_f
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3b

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid notification for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3c
    invoke-static {v3}, Lcom/xiaomi/a/a/f/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v12, v1

    move v1, v2

    move v2, v12

    goto :goto_f

    :cond_3d
    if-eqz v2, :cond_3e

    invoke-static {p0, v3}, Lcom/xiaomi/push/service/ax;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3e
    invoke-static {p0, v3, v1}, Lcom/xiaomi/push/service/ax;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_1

    :catch_2
    move-exception v3

    goto/16 :goto_e

    :cond_3f
    move v0, v2

    goto/16 :goto_2

    :cond_40
    move v0, v2

    goto/16 :goto_3
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-virtual {p0, p1, p3}, Lcom/xiaomi/push/service/XMPushService;->onStart(Landroid/content/Intent;I)V

    sget v0, Lcom/xiaomi/push/service/XMPushService;->d:I

    return v0
.end method
