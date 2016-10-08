.class public abstract Lcom/xiaomi/mipush/sdk/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Landroid/content/Context;

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/mipush/sdk/b;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/mipush/sdk/b;->c:J

    return-void
.end method

.method protected static declared-synchronized a()Ljava/lang/String;
    .locals 6

    const-class v1, Lcom/xiaomi/mipush/sdk/b;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/xiaomi/a/a/f/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/xiaomi/mipush/sdk/b;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-wide v2, Lcom/xiaomi/mipush/sdk/b;->c:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/xiaomi/mipush/sdk/b;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-class v1, Lcom/xiaomi/mipush/sdk/b;

    monitor-enter v1

    :try_start_0
    const-string v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "alias_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/g/a/d;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 0
    new-instance v0, Lcom/xiaomi/g/a/p;

    invoke-direct {v0}, Lcom/xiaomi/g/a/p;-><init>()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/j;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v1

    .line 43000
    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/k;->a:Ljava/lang/String;

    .line 44000
    iput-object v1, v0, Lcom/xiaomi/g/a/p;->d:Ljava/lang/String;

    .line 0
    :goto_0
    const-string v1, "bar:click"

    .line 46000
    iput-object v1, v0, Lcom/xiaomi/g/a/p;->e:Ljava/lang/String;

    .line 47000
    iput-object p1, v0, Lcom/xiaomi/g/a/p;->c:Ljava/lang/String;

    .line 0
    invoke-virtual {v0}, Lcom/xiaomi/g/a/p;->a()Lcom/xiaomi/g/a/p;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/g/a/a;->i:Lcom/xiaomi/g/a/a;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, p2}, Lcom/xiaomi/mipush/sdk/s;->a(Lorg/apache/a/b;Lcom/xiaomi/g/a/a;ZLcom/xiaomi/g/a/d;)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "do not report clicked message"

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 45000
    :cond_1
    iput-object p3, v0, Lcom/xiaomi/g/a/p;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/g/a/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 0
    new-instance v1, Lcom/xiaomi/g/a/p;

    invoke-direct {v1}, Lcom/xiaomi/g/a/p;-><init>()V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "do not report clicked message"

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 48000
    :cond_0
    iput-object p4, v1, Lcom/xiaomi/g/a/p;->d:Ljava/lang/String;

    .line 0
    const-string v0, "bar:click"

    .line 49000
    iput-object v0, v1, Lcom/xiaomi/g/a/p;->e:Ljava/lang/String;

    .line 50000
    iput-object p1, v1, Lcom/xiaomi/g/a/p;->c:Ljava/lang/String;

    .line 0
    invoke-virtual {v1}, Lcom/xiaomi/g/a/p;->a()Lcom/xiaomi/g/a/p;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/g/a/a;->i:Lcom/xiaomi/g/a/a;

    const/4 v3, 0x0

    move-object v5, p2

    move v6, v4

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/xiaomi/mipush/sdk/s;->a(Lorg/apache/a/b;Lcom/xiaomi/g/a/a;ZZLcom/xiaomi/g/a/d;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/mipush/sdk/l;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/mipush/sdk/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const-wide/32 v10, 0x36ee80

    const/4 v5, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "set-alias"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {p0, p2}, Lcom/xiaomi/mipush/sdk/b;->h(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v0, v6, v10

    if-gez v0, :cond_2

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/g;->a(Landroid/content/Context;)I

    move-result v0

    if-ne v5, v0, :cond_1

    invoke-static {p3}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "set-alias"

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/g;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/d;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/g;->a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/d;)V

    goto :goto_0

    :cond_2
    const-string v0, "unset-alias"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, p2}, Lcom/xiaomi/mipush/sdk/b;->h(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Don\'t cancel alias for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is unseted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "set-account"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {p0, p2}, Lcom/xiaomi/mipush/sdk/b;->i(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v0, v6, v10

    if-gez v0, :cond_5

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/g;->a(Landroid/content/Context;)I

    move-result v0

    if-ne v5, v0, :cond_4

    invoke-static {p3}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "set-account"

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/g;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/d;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/g;->a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/d;)V

    goto :goto_0

    :cond_5
    const-string v0, "unset-account"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0, p2}, Lcom/xiaomi/mipush/sdk/b;->i(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-gez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Don\'t cancel account for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is unseted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {p0, p1, v1, p3}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v0

    .line 51014
    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/k;->a:Ljava/lang/String;

    .line 0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/xiaomi/g/a/j;

    invoke-direct {v1}, Lcom/xiaomi/g/a/j;-><init>()V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 51015
    iput-object v0, v1, Lcom/xiaomi/g/a/j;->c:Ljava/lang/String;

    .line 0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v0

    .line 51016
    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/k;->a:Ljava/lang/String;

    .line 51017
    iput-object v0, v1, Lcom/xiaomi/g/a/j;->d:Ljava/lang/String;

    .line 51018
    iput-object p1, v1, Lcom/xiaomi/g/a/j;->e:Ljava/lang/String;

    .line 0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51019
    iget-object v3, v1, Lcom/xiaomi/g/a/j;->f:Ljava/util/List;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/xiaomi/g/a/j;->f:Ljava/util/List;

    :cond_1
    iget-object v3, v1, Lcom/xiaomi/g/a/j;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 51020
    :cond_2
    iput-object p3, v1, Lcom/xiaomi/g/a/j;->h:Ljava/lang/String;

    .line 0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 51021
    iput-object v0, v1, Lcom/xiaomi/g/a/j;->g:Ljava/lang/String;

    .line 0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/g/a/a;->j:Lcom/xiaomi/g/a/a;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/mipush/sdk/s;->a(Lorg/apache/a/b;Lcom/xiaomi/g/a/a;Lcom/xiaomi/g/a/d;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "param "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not nullable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/s;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method protected static b(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "wake_up"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const-string v1, "wake_up"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-class v1, Lcom/xiaomi/mipush/sdk/b;

    monitor-enter v1

    :try_start_0
    const-string v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "alias_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 0
    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appID"

    invoke-static {p1, v0}, Lcom/xiaomi/mipush/sdk/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appToken"

    invoke-static {p2, v0}, Lcom/xiaomi/mipush/sdk/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mipush/sdk/b;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    sput-object p0, Lcom/xiaomi/mipush/sdk/b;->b:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v0

    .line 1000
    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    iget v0, v0, Lcom/xiaomi/mipush/sdk/k;->j:I

    .line 2000
    invoke-static {}, Lcom/xiaomi/a/a/c/a;->c()I

    move-result v1

    .line 0
    if-eq v0, v1, :cond_1

    move v1, v6

    :goto_0
    if-nez v1, :cond_3

    sget-object v0, Lcom/xiaomi/mipush/sdk/b;->b:Landroid/content/Context;

    .line 3000
    const-string v2, "mipush_extra"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "last_reg_request"

    const-wide/16 v8, -0x1

    invoke-interface {v0, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    move v0, v6

    .line 0
    :goto_1
    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/s;->a()V

    const-string v0, "Could not send  register message within 5s repeatly ."

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_1
    move v1, v7

    goto :goto_0

    :cond_2
    move v0, v7

    .line 3000
    goto :goto_1

    .line 0
    :cond_3
    if-nez v1, :cond_c

    sget-object v0, Lcom/xiaomi/mipush/sdk/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v0

    .line 4000
    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mipush/sdk/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 0
    if-eqz v0, :cond_c

    sget-object v0, Lcom/xiaomi/mipush/sdk/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/j;->d()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/g;->a(Landroid/content/Context;)I

    move-result v0

    if-ne v6, v0, :cond_9

    const/4 v0, 0x0

    const-string v1, "callback"

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    :goto_3
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/s;->a()V

    sget-object v0, Lcom/xiaomi/mipush/sdk/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v0

    .line 6000
    iget-object v1, v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/k;->e:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v6

    .line 0
    :goto_4
    if-eqz v0, :cond_5

    new-instance v0, Lcom/xiaomi/g/a/p;

    invoke-direct {v0}, Lcom/xiaomi/g/a/p;-><init>()V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v1

    .line 7000
    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/k;->a:Ljava/lang/String;

    .line 8000
    iput-object v1, v0, Lcom/xiaomi/g/a/p;->d:Ljava/lang/String;

    .line 0
    const-string v1, "client_info_update"

    .line 9000
    iput-object v1, v0, Lcom/xiaomi/g/a/p;->e:Ljava/lang/String;

    .line 0
    invoke-static {}, Lcom/xiaomi/mipush/sdk/b;->a()Ljava/lang/String;

    move-result-object v1

    .line 10000
    iput-object v1, v0, Lcom/xiaomi/g/a/p;->c:Ljava/lang/String;

    .line 0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/xiaomi/g/a/p;->h:Ljava/util/Map;

    iget-object v1, v0, Lcom/xiaomi/g/a/p;->h:Ljava/util/Map;

    const-string v2, "app_version"

    sget-object v3, Lcom/xiaomi/mipush/sdk/b;->b:Landroid/content/Context;

    sget-object v4, Lcom/xiaomi/mipush/sdk/b;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/mipush/sdk/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v1

    .line 11000
    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/k;->g:Ljava/lang/String;

    .line 0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/xiaomi/g/a/p;->h:Ljava/util/Map;

    const-string v3, "deviceid"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/g/a/a;->i:Lcom/xiaomi/g/a/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/xiaomi/mipush/sdk/s;->a(Lorg/apache/a/b;Lcom/xiaomi/g/a/a;ZLcom/xiaomi/g/a/d;)V

    :cond_5
    sget-object v0, Lcom/xiaomi/mipush/sdk/b;->b:Landroid/content/Context;

    const-string v1, "update_devId"

    .line 12000
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 0
    if-nez v0, :cond_6

    .line 13000
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/mipush/sdk/m;

    invoke-direct {v1}, Lcom/xiaomi/mipush/sdk/m;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 0
    sget-object v0, Lcom/xiaomi/mipush/sdk/b;->b:Landroid/content/Context;

    const-string v1, "update_devId"

    .line 14000
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 0
    :cond_6
    sget-object v0, Lcom/xiaomi/mipush/sdk/b;->b:Landroid/content/Context;

    .line 15000
    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/s;->c()Z

    move-result v0

    .line 0
    if-eqz v0, :cond_7

    sget-object v0, Lcom/xiaomi/mipush/sdk/b;->b:Landroid/content/Context;

    .line 16000
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v1, "last_pull_notification"

    const-wide/16 v4, -0x1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    move v0, v6

    .line 0
    :goto_5
    if-eqz v0, :cond_7

    new-instance v1, Lcom/xiaomi/g/a/p;

    invoke-direct {v1}, Lcom/xiaomi/g/a/p;-><init>()V

    sget-object v0, Lcom/xiaomi/mipush/sdk/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v0

    .line 17000
    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/k;->a:Ljava/lang/String;

    .line 18000
    iput-object v0, v1, Lcom/xiaomi/g/a/p;->d:Ljava/lang/String;

    .line 0
    const-string v0, "pull"

    .line 19000
    iput-object v0, v1, Lcom/xiaomi/g/a/p;->e:Ljava/lang/String;

    .line 0
    invoke-static {}, Lcom/xiaomi/mipush/sdk/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 20000
    iput-object v0, v1, Lcom/xiaomi/g/a/p;->c:Ljava/lang/String;

    .line 0
    invoke-virtual {v1}, Lcom/xiaomi/g/a/p;->a()Lcom/xiaomi/g/a/p;

    sget-object v0, Lcom/xiaomi/mipush/sdk/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/g/a/a;->i:Lcom/xiaomi/g/a/a;

    .line 21000
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/s;->a(Lorg/apache/a/b;Lcom/xiaomi/g/a/a;ZZLcom/xiaomi/g/a/d;Z)V

    .line 0
    sget-object v0, Lcom/xiaomi/mipush/sdk/b;->b:Landroid/content/Context;

    .line 22000
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_pull_notification"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 0
    :cond_7
    :goto_6
    sget-boolean v0, Lcom/xiaomi/mipush/sdk/b;->a:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/xiaomi/mipush/sdk/b;->b:Landroid/content/Context;

    .line 32000
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    sub-long/2addr v2, v4

    const-string v4, "wake_up"

    const-wide/16 v6, 0x0

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_8

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "wake_up"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/xiaomi/mipush/sdk/n;

    invoke-direct {v2, v0}, Lcom/xiaomi/mipush/sdk/n;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 0
    :cond_8
    sget-object v0, Lcom/xiaomi/mipush/sdk/b;->b:Landroid/content/Context;

    .line 33000
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_reg_request"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 0
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_9
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v0

    .line 5000
    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/k;->c:Ljava/lang/String;

    .line 0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "register"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/g;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/d;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/b;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/xiaomi/mipush/sdk/g;->a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/d;)V

    goto/16 :goto_3

    :cond_a
    move v0, v7

    .line 6000
    goto/16 :goto_4

    :cond_b
    move v0, v7

    .line 16000
    goto/16 :goto_5

    .line 0
    :cond_c
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaomi/a/a/f/d;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/mipush/sdk/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/j;->b()V

    sget-object v2, Lcom/xiaomi/mipush/sdk/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v2

    .line 23000
    invoke-static {}, Lcom/xiaomi/a/a/c/a;->c()I

    move-result v3

    .line 24000
    iget-object v4, v2, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    .line 25000
    iput v3, v4, Lcom/xiaomi/mipush/sdk/k;->j:I

    .line 24000
    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/j;->c()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "envType"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 0
    sget-object v2, Lcom/xiaomi/mipush/sdk/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0}, Lcom/xiaomi/mipush/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/mipush/sdk/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/b;->b(Landroid/content/Context;)V

    new-instance v2, Lcom/xiaomi/g/a/r;

    invoke-direct {v2}, Lcom/xiaomi/g/a/r;-><init>()V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/b;->a()Ljava/lang/String;

    move-result-object v3

    .line 26000
    iput-object v3, v2, Lcom/xiaomi/g/a/r;->c:Ljava/lang/String;

    .line 27000
    iput-object p1, v2, Lcom/xiaomi/g/a/r;->d:Ljava/lang/String;

    .line 28000
    iput-object p2, v2, Lcom/xiaomi/g/a/r;->g:Ljava/lang/String;

    .line 0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 29000
    iput-object v3, v2, Lcom/xiaomi/g/a/r;->f:Ljava/lang/String;

    .line 30000
    iput-object v0, v2, Lcom/xiaomi/g/a/r;->h:Ljava/lang/String;

    .line 0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31000
    iput-object v0, v2, Lcom/xiaomi/g/a/r;->e:Ljava/lang/String;

    .line 0
    sget-object v0, Lcom/xiaomi/mipush/sdk/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/mipush/sdk/s;->a(Lcom/xiaomi/g/a/r;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6
.end method

.method static c(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v0

    .line 34000
    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/k;->a()Z

    move-result v0

    .line 0
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaomi/a/a/f/d;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v1

    .line 35000
    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/k;->a:Ljava/lang/String;

    .line 0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v2

    .line 36000
    iget-object v2, v2, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    iget-object v2, v2, Lcom/xiaomi/mipush/sdk/k;->b:Ljava/lang/String;

    .line 0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/j;->b()V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/xiaomi/mipush/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/xiaomi/g/a/r;

    invoke-direct {v3}, Lcom/xiaomi/g/a/r;-><init>()V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/b;->a()Ljava/lang/String;

    move-result-object v4

    .line 37000
    iput-object v4, v3, Lcom/xiaomi/g/a/r;->c:Ljava/lang/String;

    .line 38000
    iput-object v1, v3, Lcom/xiaomi/g/a/r;->d:Ljava/lang/String;

    .line 39000
    iput-object v2, v3, Lcom/xiaomi/g/a/r;->g:Ljava/lang/String;

    .line 40000
    iput-object v0, v3, Lcom/xiaomi/g/a/r;->h:Ljava/lang/String;

    .line 0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 41000
    iput-object v0, v3, Lcom/xiaomi/g/a/r;->f:Ljava/lang/String;

    .line 0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42000
    iput-object v0, v3, Lcom/xiaomi/g/a/r;->e:Ljava/lang/String;

    .line 0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/xiaomi/mipush/sdk/s;->a(Lcom/xiaomi/g/a/r;Z)V

    goto :goto_0
.end method

.method static declared-synchronized c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-class v1, Lcom/xiaomi/mipush/sdk/b;

    monitor-enter v1

    :try_start_0
    const-string v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "account_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "set-account"

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/g/a/af;

    invoke-direct {v0}, Lcom/xiaomi/g/a/af;-><init>()V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/b;->a()Ljava/lang/String;

    move-result-object v1

    .line 51000
    iput-object v1, v0, Lcom/xiaomi/g/a/af;->c:Ljava/lang/String;

    .line 0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v1

    .line 51001
    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/k;->a:Ljava/lang/String;

    .line 51002
    iput-object v1, v0, Lcom/xiaomi/g/a/af;->d:Ljava/lang/String;

    .line 0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v1

    .line 51003
    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/k;->c:Ljava/lang/String;

    .line 51004
    iput-object v1, v0, Lcom/xiaomi/g/a/af;->e:Ljava/lang/String;

    .line 0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v1

    .line 51005
    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/k;->b:Ljava/lang/String;

    .line 51006
    iput-object v1, v0, Lcom/xiaomi/g/a/af;->h:Ljava/lang/String;

    .line 0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 51007
    iput-object v1, v0, Lcom/xiaomi/g/a/af;->g:Ljava/lang/String;

    .line 0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mipush/sdk/s;->a(Lcom/xiaomi/g/a/af;)V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a()V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v0

    .line 51008
    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    .line 51009
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xiaomi/mipush/sdk/k;->h:Z

    iget-object v1, v0, Lcom/xiaomi/mipush/sdk/k;->k:Lcom/xiaomi/mipush/sdk/j;

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/j;->c()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "valid"

    iget-boolean v0, v0, Lcom/xiaomi/mipush/sdk/k;->h:Z

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/b;->b(Landroid/content/Context;)V

    .line 51010
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v0

    .line 51011
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/s;->b()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.xiaomi.mipush.SET_NOTIFICATION_TYPE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/xiaomi/push/service/bh;->y:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/xiaomi/push/service/bh;->C:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/a/a/f/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 51012
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v0

    .line 51013
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/s;->b()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.xiaomi.mipush.CLEAR_NOTIFICATION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/xiaomi/push/service/bh;->y:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/xiaomi/push/service/bh;->z:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

.method static declared-synchronized d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-class v1, Lcom/xiaomi/mipush/sdk/b;

    monitor-enter v1

    :try_start_0
    const-string v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "account_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "unset-account"

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static declared-synchronized e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-class v1, Lcom/xiaomi/mipush/sdk/b;

    monitor-enter v1

    :try_start_0
    const-string v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "topic_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-class v1, Lcom/xiaomi/mipush/sdk/b;

    monitor-enter v1

    :try_start_0
    const-string v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "accept_time"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-class v1, Lcom/xiaomi/mipush/sdk/b;

    monitor-enter v1

    :try_start_0
    const-string v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "topic_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "topic_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "alias_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static i(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "account_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
