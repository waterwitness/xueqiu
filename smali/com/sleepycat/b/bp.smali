.class public Lcom/sleepycat/b/bp;
.super Ljava/lang/Object;
.source "Transaction.java"


# static fields
.field static final synthetic d:Z


# instance fields
.field public a:Lcom/sleepycat/b/n/z;

.field public final b:Lcom/sleepycat/b/x;

.field public final c:J

.field private e:Ljava/lang/String;

.field private f:Lcom/sleepycat/b/d;

.field private g:Lcom/sleepycat/b/bq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-class v0, Lcom/sleepycat/b/bp;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/bp;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/x;Lcom/sleepycat/b/n/z;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object v0, p0, Lcom/sleepycat/b/bp;->f:Lcom/sleepycat/b/d;

    .line 172
    iput-object v0, p0, Lcom/sleepycat/b/bp;->g:Lcom/sleepycat/b/bq;

    .line 186
    iput-object p1, p0, Lcom/sleepycat/b/bp;->b:Lcom/sleepycat/b/x;

    .line 187
    iput-object p2, p0, Lcom/sleepycat/b/bp;->a:Lcom/sleepycat/b/n/z;

    .line 3412
    iput-object p0, p2, Lcom/sleepycat/b/n/z;->I:Lcom/sleepycat/b/bp;

    .line 4169
    iget-wide v0, p2, Lcom/sleepycat/b/n/q;->k:J

    .line 194
    iput-wide v0, p0, Lcom/sleepycat/b/bp;->c:J

    .line 195
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 880
    iget-object v0, p0, Lcom/sleepycat/b/bp;->b:Lcom/sleepycat/b/x;

    .line 7206
    iget-object v0, v0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 881
    if-nez v0, :cond_0

    .line 882
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The environment has been closed. This transaction is no longer usable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 886
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->n()V

    .line 887
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/sleepycat/b/bp;->a:Lcom/sleepycat/b/n/z;

    .line 8043
    iget-object v0, v0, Lcom/sleepycat/b/n/z;->u:Lcom/sleepycat/b/bq;

    .line 921
    iput-object v0, p0, Lcom/sleepycat/b/bp;->g:Lcom/sleepycat/b/bq;

    .line 922
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/bp;->a:Lcom/sleepycat/b/n/z;

    .line 923
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/bp;->a:Lcom/sleepycat/b/n/z;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 250
    :goto_0
    monitor-exit p0

    return-void

    .line 240
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sleepycat/b/bp;->d()V

    .line 242
    iget-object v0, p0, Lcom/sleepycat/b/bp;->b:Lcom/sleepycat/b/x;

    invoke-virtual {v0, p0}, Lcom/sleepycat/b/x;->a(Lcom/sleepycat/b/bp;)V

    .line 243
    iget-object v0, p0, Lcom/sleepycat/b/bp;->a:Lcom/sleepycat/b/n/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/z;->n()V

    .line 246
    invoke-direct {p0}, Lcom/sleepycat/b/bp;->e()V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/b/bp;->b:Lcom/sleepycat/b/x;

    .line 5206
    iget-object v1, v1, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 248
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 249
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/b/bp;->d()V

    .line 351
    invoke-virtual {p0}, Lcom/sleepycat/b/bp;->c()V

    .line 352
    iget-object v0, p0, Lcom/sleepycat/b/bp;->b:Lcom/sleepycat/b/x;

    invoke-virtual {v0, p0}, Lcom/sleepycat/b/x;->a(Lcom/sleepycat/b/bp;)V

    .line 353
    iget-object v0, p0, Lcom/sleepycat/b/bp;->a:Lcom/sleepycat/b/n/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/z;->m()J

    .line 354
    iget-object v0, p0, Lcom/sleepycat/b/bp;->a:Lcom/sleepycat/b/n/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/z;->d()Lcom/sleepycat/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/bp;->f:Lcom/sleepycat/b/d;

    .line 356
    invoke-direct {p0}, Lcom/sleepycat/b/bp;->e()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    monitor-exit p0

    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/b/bp;->b:Lcom/sleepycat/b/x;

    .line 6206
    iget-object v1, v1, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 358
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 359
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final c()V
    .locals 4

    .prologue
    .line 893
    iget-object v0, p0, Lcom/sleepycat/b/bp;->a:Lcom/sleepycat/b/n/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/bp;->a:Lcom/sleepycat/b/n/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/z;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 894
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Transaction Id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/sleepycat/b/bp;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 815
    if-nez p1, :cond_1

    .line 827
    :cond_0
    :goto_0
    return v0

    .line 819
    :cond_1
    instance-of v1, p1, Lcom/sleepycat/b/bp;

    if-eqz v1, :cond_0

    .line 823
    check-cast p1, Lcom/sleepycat/b/bp;

    iget-wide v2, p1, Lcom/sleepycat/b/bp;->c:J

    iget-wide v4, p0, Lcom/sleepycat/b/bp;->c:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 824
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 806
    iget-wide v0, p0, Lcom/sleepycat/b/bp;->c:J

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 833
    const-string v1, "<Transaction id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    iget-wide v2, p0, Lcom/sleepycat/b/bp;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    iget-object v1, p0, Lcom/sleepycat/b/bp;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 836
    const-string v1, " name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    iget-object v1, p0, Lcom/sleepycat/b/bp;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    :cond_0
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
