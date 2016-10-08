.class final Lcom/xiaomi/push/service/i;
.super Lcom/xiaomi/push/service/f;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/XMPushService;

.field private b:Lcom/xiaomi/e/c/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/e/c/e;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/push/service/i;->a:Lcom/xiaomi/push/service/XMPushService;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/f;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/i;->b:Lcom/xiaomi/e/c/e;

    iput-object p2, p0, Lcom/xiaomi/push/service/i;->b:Lcom/xiaomi/e/c/e;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15

    .prologue
    const/4 v8, 0x3

    const/4 v13, 0x0

    const/4 v4, 0x1

    const/4 v14, 0x0

    .line 0
    iget-object v0, p0, Lcom/xiaomi/push/service/i;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->h(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/a;

    move-result-object v9

    iget-object v7, p0, Lcom/xiaomi/push/service/i;->b:Lcom/xiaomi/e/c/e;

    .line 1000
    const-string v0, "5"

    .line 2000
    iget-object v1, v7, Lcom/xiaomi/e/c/e;->t:Ljava/lang/String;

    .line 1000
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4000
    iget-object v0, v7, Lcom/xiaomi/e/c/e;->r:Ljava/lang/String;

    .line 5000
    iget-object v1, v7, Lcom/xiaomi/e/c/e;->t:Ljava/lang/String;

    .line 3000
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/xiaomi/push/service/bb;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/bd;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v9, Lcom/xiaomi/push/service/a;->a:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, v1, Lcom/xiaomi/push/service/bd;->a:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/xiaomi/e/c/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/e/e/k;->a(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/e/e/k;->a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;JZJ)V

    .line 1000
    :cond_0
    instance-of v0, v7, Lcom/xiaomi/e/n;

    if-eqz v0, :cond_7

    move-object v0, v7

    check-cast v0, Lcom/xiaomi/e/n;

    .line 6000
    iget-object v1, v0, Lcom/xiaomi/e/n;->a:Lcom/xiaomi/e/o;

    .line 7000
    iget-object v8, v0, Lcom/xiaomi/e/c/e;->t:Ljava/lang/String;

    .line 8000
    iget-object v10, v0, Lcom/xiaomi/e/c/e;->r:Ljava/lang/String;

    .line 1000
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v2

    invoke-virtual {v2, v8, v10}, Lcom/xiaomi/push/service/bb;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/bd;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/xiaomi/e/o;->a:Lcom/xiaomi/e/o;

    if-ne v1, v3, :cond_2

    sget-object v3, Lcom/xiaomi/push/service/bf;->c:Lcom/xiaomi/push/service/bf;

    move v5, v14

    move-object v6, v13

    move-object v7, v13

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/push/service/bd;->a(Lcom/xiaomi/push/service/bf;IILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMACK: channel bind succeeded, chid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    .line 37000
    :cond_1
    :goto_0
    return-void

    .line 9000
    :cond_2
    iget-object v0, v0, Lcom/xiaomi/e/c/e;->v:Lcom/xiaomi/e/c/k;

    .line 1000
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SMACK: channel bind failed, error="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/e/c/k;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v1, "auth"

    .line 10000
    iget-object v3, v0, Lcom/xiaomi/e/c/k;->a:Ljava/lang/String;

    .line 1000
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "invalid-sig"

    .line 11000
    iget-object v3, v0, Lcom/xiaomi/e/c/k;->b:Ljava/lang/String;

    .line 1000
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SMACK: bind error invalid-sig token = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/xiaomi/push/service/bd;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " sec = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/xiaomi/push/service/bd;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/push/d/a;->P:Lcom/xiaomi/push/d/a;

    .line 12000
    iget v1, v1, Lcom/xiaomi/push/d/a;->ac:I

    .line 1000
    invoke-static {v1, v13, v14}, Lcom/xiaomi/f/j;->b(ILjava/lang/String;I)V

    :cond_3
    sget-object v3, Lcom/xiaomi/push/service/bf;->a:Lcom/xiaomi/push/service/bf;

    const/4 v5, 0x5

    .line 13000
    iget-object v6, v0, Lcom/xiaomi/e/c/k;->b:Ljava/lang/String;

    .line 14000
    iget-object v7, v0, Lcom/xiaomi/e/c/k;->a:Ljava/lang/String;

    .line 1000
    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/push/service/bd;->a(Lcom/xiaomi/push/service/bf;IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v1

    invoke-virtual {v1, v8, v10}, Lcom/xiaomi/push/service/bb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SMACK: channel bind failed, chid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 21000
    iget-object v0, v0, Lcom/xiaomi/e/c/k;->b:Ljava/lang/String;

    .line 1000
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "cancel"

    .line 15000
    iget-object v3, v0, Lcom/xiaomi/e/c/k;->a:Ljava/lang/String;

    .line 1000
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v3, Lcom/xiaomi/push/service/bf;->a:Lcom/xiaomi/push/service/bf;

    const/4 v5, 0x7

    .line 16000
    iget-object v6, v0, Lcom/xiaomi/e/c/k;->b:Ljava/lang/String;

    .line 17000
    iget-object v7, v0, Lcom/xiaomi/e/c/k;->a:Ljava/lang/String;

    .line 1000
    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/push/service/bd;->a(Lcom/xiaomi/push/service/bf;IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v1

    invoke-virtual {v1, v8, v10}, Lcom/xiaomi/push/service/bb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v1, "wait"

    .line 18000
    iget-object v3, v0, Lcom/xiaomi/e/c/k;->a:Ljava/lang/String;

    .line 1000
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v9, Lcom/xiaomi/push/service/a;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/bd;)V

    sget-object v3, Lcom/xiaomi/push/service/bf;->a:Lcom/xiaomi/push/service/bf;

    const/4 v5, 0x7

    .line 19000
    iget-object v6, v0, Lcom/xiaomi/e/c/k;->b:Ljava/lang/String;

    .line 20000
    iget-object v7, v0, Lcom/xiaomi/e/c/k;->a:Ljava/lang/String;

    .line 1000
    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/push/service/bd;->a(Lcom/xiaomi/push/service/bf;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 22000
    :cond_7
    iget-object v1, v7, Lcom/xiaomi/e/c/e;->t:Ljava/lang/String;

    .line 1000
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v1, "1"

    .line 23000
    iput-object v1, v7, Lcom/xiaomi/e/c/e;->t:Ljava/lang/String;

    .line 1000
    :cond_8
    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    instance-of v0, v7, Lcom/xiaomi/e/c/b;

    if-eqz v0, :cond_1

    move-object v8, v7

    check-cast v8, Lcom/xiaomi/e/c/b;

    const-string v0, "0"

    invoke-virtual {v7}, Lcom/xiaomi/e/c/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "result"

    .line 24000
    iget-object v1, v8, Lcom/xiaomi/e/c/b;->a:Lcom/xiaomi/e/c/c;

    .line 1000
    invoke-virtual {v1}, Lcom/xiaomi/e/c/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v9, Lcom/xiaomi/push/service/a;->a:Lcom/xiaomi/push/service/XMPushService;

    .line 25000
    iget-object v0, v0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/e/a;

    .line 1000
    instance-of v1, v0, Lcom/xiaomi/e/p;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/xiaomi/e/p;

    .line 26000
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xiaomi/e/p;->z:J

    .line 1000
    :cond_9
    invoke-static {}, Lcom/xiaomi/f/j;->b()V

    :cond_a
    :goto_2
    const-string v0, "ps"

    invoke-virtual {v8, v0}, Lcom/xiaomi/e/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "ps"

    invoke-virtual {v8, v0}, Lcom/xiaomi/e/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 29000
    new-instance v1, Lcom/xiaomi/push/b/d;

    invoke-direct {v1}, Lcom/xiaomi/push/b/d;-><init>()V

    .line 30000
    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/google/a/a/e;->a([BI)Lcom/google/a/a/e;

    move-result-object v0

    .line 29000
    check-cast v0, Lcom/xiaomi/push/b/d;

    check-cast v0, Lcom/xiaomi/push/b/d;

    .line 1000
    invoke-static {}, Lcom/xiaomi/push/service/t;->a()Lcom/xiaomi/push/service/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/t;->a(Lcom/xiaomi/push/b/d;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/a/a/d; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid Base64 exception + "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "command"

    .line 27000
    iget-object v1, v8, Lcom/xiaomi/e/c/b;->a:Lcom/xiaomi/e/c/c;

    .line 1000
    invoke-virtual {v1}, Lcom/xiaomi/e/c/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "u"

    invoke-virtual {v7, v0}, Lcom/xiaomi/e/c/e;->b(Ljava/lang/String;)Lcom/xiaomi/e/c/a;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lcom/xiaomi/e/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "startts"

    invoke-virtual {v0, v1}, Lcom/xiaomi/e/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "endts"

    invoke-virtual {v0, v2}, Lcom/xiaomi/e/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_1
    new-instance v4, Ljava/util/Date;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    new-instance v3, Ljava/util/Date;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    const-string v1, "token"

    invoke-virtual {v0, v1}, Lcom/xiaomi/e/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "true"

    const-string v2, "force"

    invoke-virtual {v0, v2}, Lcom/xiaomi/e/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v1, "maxlen"

    invoke-virtual {v0, v1}, Lcom/xiaomi/e/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v2, v0, 0x400

    :goto_3
    iget-object v0, v9, Lcom/xiaomi/push/service/a;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/a/b;->a(Landroid/content/Context;)Lcom/xiaomi/push/a/b;

    move-result-object v1

    .line 28000
    iget-object v9, v1, Lcom/xiaomi/push/a/b;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/xiaomi/push/a/f;

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/push/a/f;-><init>(Lcom/xiaomi/push/a/b;ILjava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v9, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/push/a/b;->a(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 1000
    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseLong fail "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid pb exception + "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/a/a/d;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    instance-of v0, v7, Lcom/xiaomi/e/c/b;

    if-eqz v0, :cond_e

    const-string v0, "kick"

    invoke-virtual {v7, v0}, Lcom/xiaomi/e/c/e;->b(Ljava/lang/String;)Lcom/xiaomi/e/c/a;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 31000
    iget-object v2, v7, Lcom/xiaomi/e/c/e;->r:Ljava/lang/String;

    .line 1000
    const-string v3, "type"

    invoke-virtual {v0, v3}, Lcom/xiaomi/e/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "reason"

    invoke-virtual {v0, v3}, Lcom/xiaomi/e/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "kicked by server, chid="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " userid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " type="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " reason="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    const-string v0, "wait"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/bb;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/bd;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v9, Lcom/xiaomi/push/service/a;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/bd;)V

    sget-object v1, Lcom/xiaomi/push/service/bf;->a:Lcom/xiaomi/push/service/bf;

    move v2, v8

    move v3, v14

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/bd;->a(Lcom/xiaomi/push/service/bf;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, v9, Lcom/xiaomi/push/service/a;->a:Lcom/xiaomi/push/service/XMPushService;

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/bb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    instance-of v0, v7, Lcom/xiaomi/e/c/d;

    if-eqz v0, :cond_f

    move-object v0, v7

    check-cast v0, Lcom/xiaomi/e/c/d;

    const-string v2, "redir"

    .line 32000
    iget-object v3, v0, Lcom/xiaomi/e/c/d;->a:Ljava/lang/String;

    .line 1000
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v1, "hosts"

    invoke-virtual {v0, v1}, Lcom/xiaomi/e/c/d;->b(Ljava/lang/String;)Lcom/xiaomi/e/c/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 33000
    invoke-virtual {v0}, Lcom/xiaomi/e/c/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/d/f;->a()Lcom/xiaomi/d/f;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/e/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v14}, Lcom/xiaomi/d/f;->a(Ljava/lang/String;Z)Lcom/xiaomi/d/b;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/xiaomi/d/b;->a([Ljava/lang/String;)V

    iget-object v0, v9, Lcom/xiaomi/push/service/a;->a:Lcom/xiaomi/push/service/XMPushService;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v13}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    iget-object v0, v9, Lcom/xiaomi/push/service/a;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v4}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    goto/16 :goto_0

    .line 1000
    :cond_f
    iget-object v0, v9, Lcom/xiaomi/push/service/a;->a:Lcom/xiaomi/push/service/XMPushService;

    .line 34000
    iget-object v0, v0, Lcom/xiaomi/push/service/XMPushService;->b:Lcom/xiaomi/push/service/ag;

    .line 1000
    iget-object v6, v9, Lcom/xiaomi/push/service/a;->a:Lcom/xiaomi/push/service/XMPushService;

    .line 35000
    invoke-static {v7}, Lcom/xiaomi/push/service/ag;->a(Lcom/xiaomi/e/c/e;)Lcom/xiaomi/push/service/bd;

    move-result-object v2

    if-nez v2, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "error while notify channel closed! channel "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not registered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const-string v0, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 36000
    instance-of v0, v7, Lcom/xiaomi/e/c/d;

    if-eqz v0, :cond_25

    move-object v0, v7

    check-cast v0, Lcom/xiaomi/e/c/d;

    const-string v1, "s"

    invoke-virtual {v0, v1}, Lcom/xiaomi/e/c/d;->b(Ljava/lang/String;)Lcom/xiaomi/e/c/a;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_2
    iget-object v2, v2, Lcom/xiaomi/push/service/bd;->i:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/xiaomi/e/c/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/push/service/q;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1}, Lcom/xiaomi/e/c/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/q;->b([BLjava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v7}, Lcom/xiaomi/e/c/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/e/e/k;->a(Ljava/lang/String;)I

    move-result v0

    int-to-long v8, v0

    .line 37000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/xiaomi/g/a/n;

    invoke-direct {v3}, Lcom/xiaomi/g/a/n;-><init>()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    invoke-static {v3, v2}, Lcom/xiaomi/g/a/an;->a(Lorg/apache/a/b;[B)V

    iget-object v1, v3, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "mipush_payload"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v5, "mrt"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, v3, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v3}, Lcom/xiaomi/push/service/ax;->a(Lcom/xiaomi/g/a/n;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static/range {v6 .. v12}, Lcom/xiaomi/e/e/k;->a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;JZJ)V

    .line 38000
    iget-object v5, v3, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    .line 37000
    if-eqz v5, :cond_11

    const-string v8, "mrt"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v8, v0}, Lcom/xiaomi/g/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    sget-object v0, Lcom/xiaomi/g/a/a;->e:Lcom/xiaomi/g/a/a;

    .line 39000
    iget-object v8, v3, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    .line 37000
    if-ne v0, v8, :cond_13

    invoke-static {v6}, Lcom/xiaomi/push/service/an;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/an;

    move-result-object v0

    iget-object v8, v3, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/xiaomi/push/service/an;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {v3}, Lcom/xiaomi/push/service/ax;->b(Lcom/xiaomi/g/a/n;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, ""

    if-eqz v5, :cond_12

    .line 40000
    iget-object v0, v5, Lcom/xiaomi/g/a/d;->a:Ljava/lang/String;

    .line 37000
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Drop a message for unregistered, msgid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    .line 41000
    new-instance v1, Lcom/xiaomi/push/service/av;

    invoke-direct {v1, v6, v3, v0}, Lcom/xiaomi/push/service/av;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/g/a/n;Ljava/lang/String;)V

    .line 42000
    const-wide/16 v2, 0x0

    invoke-virtual {v6, v1, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V
    :try_end_3
    .catch Lorg/apache/a/g; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 37000
    :catch_3
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 36000
    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 37000
    :cond_13
    :try_start_5
    sget-object v0, Lcom/xiaomi/g/a/a;->e:Lcom/xiaomi/g/a/a;

    .line 43000
    iget-object v8, v3, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    .line 37000
    if-ne v0, v8, :cond_14

    invoke-virtual {v6}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v8, "com.xiaomi.xmsf"

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v6}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v8, v3, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Receive a message with wrong package name, expect "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v3, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    const-string v0, "unmatched_package"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package should be "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44000
    new-instance v2, Lcom/xiaomi/push/service/aw;

    invoke-direct {v2, v6, v3, v0, v1}, Lcom/xiaomi/push/service/aw;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/g/a/n;Ljava/lang/String;Ljava/lang/String;)V

    .line 45000
    const-wide/16 v0, 0x0

    invoke-virtual {v6, v2, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    goto/16 :goto_0

    .line 37000
    :cond_14
    if-eqz v5, :cond_15

    .line 46000
    iget-object v0, v5, Lcom/xiaomi/g/a/d;->a:Ljava/lang/String;

    .line 37000
    if-eqz v0, :cond_15

    const-string v0, "receive a message, appid=%1$s, msgid= %2$s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 47000
    iget-object v10, v3, Lcom/xiaomi/g/a/n;->e:Ljava/lang/String;

    .line 37000
    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 48000
    iget-object v10, v5, Lcom/xiaomi/g/a/d;->a:Ljava/lang/String;

    .line 37000
    aput-object v10, v8, v9

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    .line 50000
    :cond_15
    iget-object v0, v3, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    .line 49000
    if-eqz v0, :cond_16

    .line 51000
    iget-object v0, v3, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    .line 51001
    iget-object v0, v0, Lcom/xiaomi/g/a/d;->j:Ljava/util/Map;

    .line 49000
    if-nez v0, :cond_17

    :cond_16
    move v0, v14

    .line 37000
    :goto_4
    if-eqz v0, :cond_18

    invoke-static {v6, v7}, Lcom/xiaomi/push/service/aq;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 51004
    new-instance v0, Lcom/xiaomi/push/service/at;

    invoke-direct {v0, v6, v3}, Lcom/xiaomi/push/service/at;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/g/a/n;)V

    .line 51005
    const-wide/16 v2, 0x0

    invoke-virtual {v6, v0, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    goto/16 :goto_0

    .line 49000
    :cond_17
    const-string v0, "1"

    .line 51002
    iget-object v8, v3, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    .line 51003
    iget-object v8, v8, Lcom/xiaomi/g/a/d;->j:Ljava/util/Map;

    .line 49000
    const-string v9, "obslete_ads_message"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    .line 51006
    :cond_18
    const-string v0, "com.xiaomi.xmsf"

    iget-object v8, v3, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 51007
    iget-object v0, v3, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    .line 51006
    if-eqz v0, :cond_19

    .line 51008
    iget-object v0, v3, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    .line 51009
    iget-object v0, v0, Lcom/xiaomi/g/a/d;->j:Ljava/util/Map;

    .line 51006
    if-eqz v0, :cond_19

    .line 51010
    iget-object v0, v3, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    .line 51011
    iget-object v0, v0, Lcom/xiaomi/g/a/d;->j:Ljava/util/Map;

    .line 51006
    const-string v8, "miui_package_name"

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v4

    .line 37000
    :goto_5
    if-eqz v0, :cond_1a

    invoke-static {v6, v7}, Lcom/xiaomi/push/service/aq;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 51013
    iget-object v0, v3, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    .line 51014
    iget-object v0, v0, Lcom/xiaomi/g/a/d;->j:Ljava/util/Map;

    .line 51012
    const-string v7, "notify_effect"

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 37000
    if-nez v0, :cond_1a

    .line 51015
    new-instance v0, Lcom/xiaomi/push/service/au;

    invoke-direct {v0, v6, v3}, Lcom/xiaomi/push/service/au;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/g/a/n;)V

    .line 51016
    const-wide/16 v2, 0x0

    invoke-virtual {v6, v0, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    goto/16 :goto_0

    :cond_19
    move v0, v14

    .line 51006
    goto :goto_5

    .line 37000
    :cond_1a
    invoke-static {v3}, Lcom/xiaomi/push/service/ax;->b(Lcom/xiaomi/g/a/n;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, v3, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/xiaomi/push/service/aq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1b
    invoke-static {v6, v1}, Lcom/xiaomi/push/service/aq;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_1c
    sget-object v0, Lcom/xiaomi/g/a/a;->a:Lcom/xiaomi/g/a/a;

    .line 51017
    iget-object v7, v3, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    .line 37000
    if-ne v0, v7, :cond_1d

    .line 51018
    iget-object v0, v3, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    .line 37000
    const-string v7, "pref_registered_pkg_names"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/xiaomi/push/service/XMPushService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    iget-object v8, v3, Lcom/xiaomi/g/a/n;->e:Ljava/lang/String;

    invoke-interface {v7, v0, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1d
    if-eqz v5, :cond_1e

    .line 51019
    iget-object v0, v5, Lcom/xiaomi/g/a/d;->d:Ljava/lang/String;

    .line 37000
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 51020
    iget-object v0, v5, Lcom/xiaomi/g/a/d;->e:Ljava/lang/String;

    .line 37000
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget v0, v5, Lcom/xiaomi/g/a/d;->h:I

    if-eq v0, v4, :cond_1e

    .line 51021
    iget-object v0, v5, Lcom/xiaomi/g/a/d;->j:Ljava/util/Map;

    .line 37000
    invoke-static {v0}, Lcom/xiaomi/push/service/ax;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, v3, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1e
    iget-object v0, v3, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/push/service/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Lcom/xiaomi/push/service/XMPushService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 51025
    :goto_6
    iget-object v0, v3, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    .line 37000
    sget-object v1, Lcom/xiaomi/g/a/a;->b:Lcom/xiaomi/g/a/a;

    if-ne v0, v1, :cond_1

    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {v6}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Lcom/xiaomi/push/service/XMPushService;->stopSelf()V

    goto/16 :goto_0

    :cond_1f
    if-eqz v5, :cond_2b

    iget-object v0, v5, Lcom/xiaomi/g/a/d;->j:Ljava/util/Map;

    if-eqz v0, :cond_2a

    iget-object v0, v5, Lcom/xiaomi/g/a/d;->j:Ljava/util/Map;

    const-string v1, "jobkey"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 51022
    iget-object v0, v5, Lcom/xiaomi/g/a/d;->a:Ljava/lang/String;

    .line 37000
    :cond_20
    iget-object v1, v3, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    invoke-static {v6, v1, v0}, Lcom/xiaomi/push/service/ay;->a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_8
    if-eqz v1, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drop a duplicate message, key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    .line 51023
    :cond_21
    :goto_9
    new-instance v0, Lcom/xiaomi/push/service/as;

    invoke-direct {v0, v6, v3}, Lcom/xiaomi/push/service/as;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/g/a/n;)V

    .line 51024
    const-wide/16 v4, 0x0

    invoke-virtual {v6, v0, v4, v5}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    goto :goto_6

    .line 37000
    :cond_22
    invoke-static {v6, v3, v2}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;Lcom/xiaomi/g/a/n;[B)V

    invoke-static {v3}, Lcom/xiaomi/push/service/ax;->b(Lcom/xiaomi/g/a/n;)Z

    move-result v0

    if-nez v0, :cond_21

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.mipush.MESSAGE_ARRIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "mipush_payload"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v1, v3, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_5
    .catch Lorg/apache/a/g; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    invoke-virtual {v6}, Lcom/xiaomi/push/service/XMPushService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, v3, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/push/service/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/apache/a/g; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_9

    :catch_5
    move-exception v1

    :try_start_7
    iget-object v1, v3, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/push/service/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_9

    :cond_23
    new-instance v0, Lcom/xiaomi/push/service/ar;

    invoke-direct {v0, v6, v3}, Lcom/xiaomi/push/service/ar;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/g/a/n;)V

    .line 51026
    const-wide/16 v2, 0x0

    invoke-virtual {v6, v0, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    goto/16 :goto_0

    .line 37000
    :cond_24
    const-string v0, "receive a mipush message without package name"

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/apache/a/g; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 36000
    :cond_25
    const-string v0, "not a mipush message"

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 35000
    :cond_26
    iget-object v3, v2, Lcom/xiaomi/push/service/bd;->a:Ljava/lang/String;

    instance-of v0, v7, Lcom/xiaomi/e/c/d;

    if-eqz v0, :cond_27

    const-string v0, "com.xiaomi.push.new_msg"

    :goto_a
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "ext_chid"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "ext_packet"

    invoke-virtual {v7}, Lcom/xiaomi/e/c/e;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v0, Lcom/xiaomi/push/service/bh;->B:Ljava/lang/String;

    iget-object v1, v2, Lcom/xiaomi/push/service/bd;->j:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/xiaomi/push/service/bh;->u:Ljava/lang/String;

    iget-object v1, v2, Lcom/xiaomi/push/service/bd;->i:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v6, v4, v3}, Lcom/xiaomi/push/service/ag;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_27
    instance-of v0, v7, Lcom/xiaomi/e/c/b;

    if-eqz v0, :cond_28

    const-string v0, "com.xiaomi.push.new_iq"

    goto :goto_a

    :cond_28
    instance-of v0, v7, Lcom/xiaomi/e/c/g;

    if-eqz v0, :cond_29

    const-string v0, "com.xiaomi.push.new_pres"

    goto :goto_a

    :cond_29
    const-string v0, "unknown packet type, drop it"

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2a
    move-object v0, v13

    goto/16 :goto_7

    :cond_2b
    move-object v0, v13

    move v1, v14

    goto/16 :goto_8

    :cond_2c
    move v2, v14

    goto/16 :goto_3
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "receive a message."

    return-object v0
.end method
