.class public Lcom/sleepycat/b/i/i/m;
.super Ljava/lang/Object;
.source "VLSNRange.java"


# static fields
.field static final a:Lcom/sleepycat/b/i/i/m;

.field static final synthetic h:Z


# instance fields
.field public final b:Lcom/sleepycat/b/p/au;

.field public final c:Lcom/sleepycat/b/p/au;

.field final d:B

.field final e:B

.field public final f:Lcom/sleepycat/b/p/au;

.field public final g:Lcom/sleepycat/b/p/au;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 28
    const-class v0, Lcom/sleepycat/b/i/i/m;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/i/m;->h:Z

    .line 33
    new-instance v0, Lcom/sleepycat/b/i/i/m;

    sget-object v1, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    sget-object v2, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    sget-object v3, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    sget-object v4, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sleepycat/b/i/i/m;-><init>(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;)V

    sput-object v0, Lcom/sleepycat/b/i/i/m;->a:Lcom/sleepycat/b/i/i/m;

    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/sleepycat/b/g/af;->q:Lcom/sleepycat/b/g/af;

    .line 1644
    iget-byte v0, v0, Lcom/sleepycat/b/g/af;->K:B

    .line 43
    iput-byte v0, p0, Lcom/sleepycat/b/i/i/m;->d:B

    .line 44
    sget-object v0, Lcom/sleepycat/b/g/af;->r:Lcom/sleepycat/b/g/af;

    .line 2644
    iget-byte v0, v0, Lcom/sleepycat/b/g/af;->K:B

    .line 44
    iput-byte v0, p0, Lcom/sleepycat/b/i/i/m;->e:B

    .line 57
    iput-object p1, p0, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    .line 58
    iput-object p2, p0, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 59
    iput-object p3, p0, Lcom/sleepycat/b/i/i/m;->f:Lcom/sleepycat/b/p/au;

    .line 60
    iput-object p4, p0, Lcom/sleepycat/b/i/i/m;->g:Lcom/sleepycat/b/p/au;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;B)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/b/i/i/m;-><init>(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;)V

    return-void
.end method

.method public static a(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/i/i/m;
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/sleepycat/b/i/i/n;

    invoke-direct {v0}, Lcom/sleepycat/b/i/i/n;-><init>()V

    .line 104
    invoke-virtual {v0, p0}, Lcom/sleepycat/b/i/i/n;->entryToObject(Lcom/sleepycat/b/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/i/m;

    .line 106
    return-object v0
.end method

.method static a(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Z)Lcom/sleepycat/b/p/au;
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-object p1

    .line 265
    :cond_1
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object p1, p0

    .line 266
    goto :goto_0

    .line 269
    :cond_2
    if-nez p2, :cond_0

    move-object p1, p0

    .line 273
    goto :goto_0
.end method


# virtual methods
.method final a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/z;)Lcom/sleepycat/b/p/au;
    .locals 6

    .prologue
    .line 75
    new-instance v0, Lcom/sleepycat/b/i/i/n;

    invoke-direct {v0}, Lcom/sleepycat/b/i/i/n;-><init>()V

    .line 76
    new-instance v2, Lcom/sleepycat/b/m;

    invoke-direct {v2}, Lcom/sleepycat/b/m;-><init>()V

    .line 77
    new-instance v3, Lcom/sleepycat/b/m;

    invoke-direct {v3}, Lcom/sleepycat/b/m;-><init>()V

    .line 79
    const-wide/16 v4, -0x1

    invoke-static {v4, v5, v2}, Lcom/sleepycat/a/a/g;->a(JLcom/sleepycat/b/m;)V

    .line 80
    invoke-virtual {v0, p0, v3}, Lcom/sleepycat/b/i/i/n;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/b/m;)V

    .line 82
    const/4 v1, 0x0

    .line 84
    :try_start_0
    sget-object v0, Lcom/sleepycat/b/g;->a:Lcom/sleepycat/b/g;

    invoke-static {p2, p3, v0}, Lcom/sleepycat/b/q;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;

    move-result-object v1

    .line 3391
    iget-object v0, v1, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 4263
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/sleepycat/b/c/c;->i:Z

    .line 89
    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 90
    sget-object v2, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v0, v2, :cond_1

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to write VLSNRange, status = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 95
    :cond_0
    throw v0

    :cond_1
    if-eqz v1, :cond_2

    .line 96
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    const-string v1, "first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    const-string v1, " last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 285
    const-string v1, " sync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/i/m;->f:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    const-string v1, " txnEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/i/m;->g:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
