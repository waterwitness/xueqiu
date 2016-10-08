.class public abstract Lcom/sleepycat/b/p/h;
.super Ljava/lang/Object;
.source "DaemonThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static n:Z

.field static final synthetic s:Z


# instance fields
.field private volatile a:J

.field private final b:Ljava/lang/Object;

.field private c:Ljava/lang/Thread;

.field private volatile d:Z

.field protected l:Ljava/lang/String;

.field protected m:I

.field public volatile o:Z

.field public p:Z

.field public final q:Lcom/sleepycat/b/c/ad;

.field public final r:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    const-class v0, Lcom/sleepycat/b/p/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/p/h;->s:Z

    .line 33
    sput-boolean v1, Lcom/sleepycat/b/p/h;->n:Z

    return-void

    :cond_0
    move v0, v1

    .line 25
    goto :goto_0
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/sleepycat/b/c/ad;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/p/h;->b:Ljava/lang/Object;

    .line 36
    iput-boolean v1, p0, Lcom/sleepycat/b/p/h;->d:Z

    .line 37
    iput-boolean v1, p0, Lcom/sleepycat/b/p/h;->o:Z

    .line 40
    iput-boolean v1, p0, Lcom/sleepycat/b/p/h;->p:Z

    .line 51
    iput-wide p1, p0, Lcom/sleepycat/b/p/h;->a:J

    .line 3338
    iget-object v0, p4, Lcom/sleepycat/b/c/ad;->af:Ljava/lang/String;

    .line 53
    if-nez v0, :cond_0

    .line 54
    iput-object p3, p0, Lcom/sleepycat/b/p/h;->l:Ljava/lang/String;

    .line 58
    :goto_0
    iput-object p4, p0, Lcom/sleepycat/b/p/h;->q:Lcom/sleepycat/b/c/ad;

    .line 4063
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/sleepycat/b/p/h;->r:Ljava/util/logging/Logger;

    .line 60
    return-void

    .line 56
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/p/h;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sleepycat/b/p/h;->q:Lcom/sleepycat/b/c/ad;

    if-nez v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/p/h;->q:Lcom/sleepycat/b/c/ad;

    .line 4474
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->H:Lcom/sleepycat/b/ag;

    .line 211
    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/sleepycat/b/p/h;->l:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sleepycat/b/q;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/sleepycat/b/af;

    goto :goto_0
.end method

.method private a(Ljava/lang/Throwable;)Z
    .locals 4

    .prologue
    .line 224
    const-string v0, "setErrorListener"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    sget-boolean v0, Lcom/sleepycat/b/p/h;->n:Z

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/sleepycat/b/p/h;->r:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sleepycat/b/p/h;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 228
    :cond_0
    new-instance v0, Lcom/sleepycat/b/aa;

    iget-object v1, p0, Lcom/sleepycat/b/p/h;->q:Lcom/sleepycat/b/c/ad;

    sget-object v2, Lcom/sleepycat/b/c/ac;->w:Lcom/sleepycat/b/c/ac;

    const-string v3, "Daemon thread failed during testing"

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 241
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 79
    if-eqz p1, :cond_1

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/p/h;->o:Z

    .line 81
    iget-object v0, p0, Lcom/sleepycat/b/p/h;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/sleepycat/b/p/h;->f()V

    .line 91
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sleepycat/b/p/h;->l:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/p/h;->c:Ljava/lang/Thread;

    .line 85
    iget-object v0, p0, Lcom/sleepycat/b/p/h;->c:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 86
    iget-object v0, p0, Lcom/sleepycat/b/p/h;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 89
    :cond_1
    iput-boolean v2, p0, Lcom/sleepycat/b/p/h;->o:Z

    goto :goto_0
.end method

.method public abstract b()V
.end method

.method public c_()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/p/h;->d:Z

    .line 95
    return-void
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sleepycat/b/p/h;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/p/h;->d:Z

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/p/h;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/sleepycat/b/p/h;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/p/h;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 106
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/p/h;->c:Ljava/lang/Thread;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 117
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/p/h;->c:Ljava/lang/Thread;

    .line 119
    :cond_1
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/sleepycat/b/p/h;->o:Z

    if-nez v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/sleepycat/b/p/h;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/p/h;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 132
    monitor-exit v1

    .line 134
    :cond_0
    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 137
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/sleepycat/b/p/h;->d:Z

    if-nez v0, :cond_8

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/b/p/h;->a()J

    move-result-wide v4

    move v0, v2

    .line 143
    :goto_1
    int-to-long v6, v0

    cmp-long v1, v6, v4

    if-gtz v1, :cond_1

    iget-boolean v1, p0, Lcom/sleepycat/b/p/h;->d:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sleepycat/b/p/h;->o:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v1, :cond_1

    .line 146
    :try_start_1
    iget v1, p0, Lcom/sleepycat/b/p/h;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sleepycat/b/p/h;->m:I

    .line 147
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sleepycat/b/p/h;->p:Z

    .line 148
    invoke-virtual {p0}, Lcom/sleepycat/b/p/h;->b()V
    :try_end_1
    .catch Lcom/sleepycat/b/an; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/sleepycat/b/p/h;->p:Z

    .line 157
    :cond_1
    iget-boolean v0, p0, Lcom/sleepycat/b/p/h;->d:Z

    if-nez v0, :cond_0

    .line 158
    iget-object v1, p0, Lcom/sleepycat/b/p/h;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    .line 159
    :try_start_3
    iget-wide v4, p0, Lcom/sleepycat/b/p/h;->a:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sleepycat/b/p/h;->o:Z

    if-eqz v0, :cond_5

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/p/h;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 164
    :goto_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_3

    .line 166
    :catch_0
    move-exception v0

    .line 167
    invoke-direct {p0, v0}, Lcom/sleepycat/b/p/h;->a(Ljava/lang/Exception;)V

    .line 168
    sget-boolean v1, Lcom/sleepycat/b/p/h;->n:Z

    if-nez v1, :cond_3

    .line 169
    iget-object v1, p0, Lcom/sleepycat/b/p/h;->r:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Shutting down "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " due to exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 172
    :cond_3
    iput-boolean v8, p0, Lcom/sleepycat/b/p/h;->d:Z

    .line 174
    sget-boolean v1, Lcom/sleepycat/b/p/h;->s:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sleepycat/b/p/h;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 152
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Lcom/sleepycat/b/p/h;->p:Z

    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_3

    .line 175
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 176
    invoke-direct {p0, v1}, Lcom/sleepycat/b/p/h;->a(Ljava/lang/Exception;)V

    .line 177
    sget-boolean v0, Lcom/sleepycat/b/p/h;->n:Z

    if-nez v0, :cond_4

    .line 185
    iget-object v3, p0, Lcom/sleepycat/b/p/h;->r:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/b/p/h;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " caught exception, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v0, p0, Lcom/sleepycat/b/p/h;->d:Z

    if-eqz v0, :cond_6

    const-string v0, " Exiting"

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    :cond_4
    sget-boolean v0, Lcom/sleepycat/b/p/h;->s:Z

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/sleepycat/b/p/h;->a(Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    :catch_2
    move-exception v1

    .line 152
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Lcom/sleepycat/b/p/h;->p:Z
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_3

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 162
    :cond_5
    :try_start_7
    iget-object v0, p0, Lcom/sleepycat/b/p/h;->b:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/sleepycat/b/p/h;->a:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 185
    :cond_6
    const-string v0, " Continuing"

    goto :goto_3

    .line 192
    :catch_3
    move-exception v0

    .line 193
    sget-boolean v1, Lcom/sleepycat/b/p/h;->s:Z

    if-nez v1, :cond_7

    invoke-direct {p0, v0}, Lcom/sleepycat/b/p/h;->a(Ljava/lang/Throwable;)Z

    .line 194
    :cond_7
    iget-object v1, p0, Lcom/sleepycat/b/p/h;->q:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 200
    iput-boolean v8, p0, Lcom/sleepycat/b/p/h;->d:Z

    .line 201
    iget-object v1, p0, Lcom/sleepycat/b/p/h;->r:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error caught in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 204
    :cond_8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    const-string v1, "<DaemonThread name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/p/h;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
