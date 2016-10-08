.class public final Lcom/sleepycat/b/br;
.super Ljava/lang/Object;
.source "TransactionConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final a:Lcom/sleepycat/b/br;


# instance fields
.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Lcom/sleepycat/b/u;

.field public f:Lcom/sleepycat/b/bc;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/sleepycat/b/br;

    invoke-direct {v0}, Lcom/sleepycat/b/br;-><init>()V

    sput-object v0, Lcom/sleepycat/b/br;->a:Lcom/sleepycat/b/br;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v1, p0, Lcom/sleepycat/b/br;->b:Z

    .line 24
    iput-boolean v1, p0, Lcom/sleepycat/b/br;->c:Z

    .line 25
    iput-boolean v1, p0, Lcom/sleepycat/b/br;->d:Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/br;->e:Lcom/sleepycat/b/u;

    .line 29
    iput-boolean v1, p0, Lcom/sleepycat/b/br;->g:Z

    .line 30
    iput-boolean v1, p0, Lcom/sleepycat/b/br;->h:Z

    .line 31
    iput-boolean v1, p0, Lcom/sleepycat/b/br;->i:Z

    .line 32
    iput-boolean v1, p0, Lcom/sleepycat/b/br;->j:Z

    .line 39
    return-void
.end method

.method static a(ZZZLcom/sleepycat/b/u;)V
    .locals 2

    .prologue
    .line 494
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p3, :cond_1

    .line 495
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mixed use of deprecated and current durability APIs is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_4

    :cond_2
    if-eqz p0, :cond_3

    if-nez p2, :cond_4

    :cond_3
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 503
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only one of TxnSync, TxnNoSync, and TxnWriteNoSync can be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_5
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/br;
    .locals 1

    .prologue
    .line 472
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/br;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/u;)Lcom/sleepycat/b/br;
    .locals 3

    .prologue
    .line 238
    .line 1247
    iget-boolean v0, p0, Lcom/sleepycat/b/br;->b:Z

    iget-boolean v1, p0, Lcom/sleepycat/b/br;->c:Z

    iget-boolean v2, p0, Lcom/sleepycat/b/br;->d:Z

    invoke-static {v0, v1, v2, p1}, Lcom/sleepycat/b/br;->a(ZZZLcom/sleepycat/b/u;)V

    .line 1248
    iput-object p1, p0, Lcom/sleepycat/b/br;->e:Lcom/sleepycat/b/u;

    .line 239
    return-object p0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/sleepycat/b/br;->a()Lcom/sleepycat/b/br;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sync="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sleepycat/b/br;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nnoSync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/b/br;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nwriteNoSync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/b/br;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ndurability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/br;->e:Lcom/sleepycat/b/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nconsistencyPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/br;->f:Lcom/sleepycat/b/bc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nnoWait="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/b/br;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nreadUncommitted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/b/br;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nreadCommitted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/b/br;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nSerializableIsolation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/b/br;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
