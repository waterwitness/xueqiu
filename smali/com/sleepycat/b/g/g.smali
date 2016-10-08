.class public Lcom/sleepycat/b/g/g;
.super Lcom/sleepycat/b/g/av;
.source "DbOpReplicationContext.java"


# static fields
.field public static a:Lcom/sleepycat/b/g/g;

.field public static final synthetic e:Z


# instance fields
.field public final b:Lcom/sleepycat/b/g/a/f;

.field public c:Lcom/sleepycat/b/c/ax;

.field public d:Lcom/sleepycat/b/c/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 22
    const-class v0, Lcom/sleepycat/b/g/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/g/g;->e:Z

    .line 29
    new-instance v0, Lcom/sleepycat/b/g/g;

    sget-object v2, Lcom/sleepycat/b/g/a/f;->a:Lcom/sleepycat/b/g/a/f;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/g/g;-><init>(ZLcom/sleepycat/b/g/a/f;)V

    sput-object v0, Lcom/sleepycat/b/g/g;->a:Lcom/sleepycat/b/g/g;

    return-void

    :cond_0
    move v0, v1

    .line 22
    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/g/a/o;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1}, Lcom/sleepycat/b/g/av;-><init>(Lcom/sleepycat/b/p/au;)V

    .line 34
    iput-object v0, p0, Lcom/sleepycat/b/g/g;->c:Lcom/sleepycat/b/c/ax;

    .line 35
    iput-object v0, p0, Lcom/sleepycat/b/g/g;->d:Lcom/sleepycat/b/c/h;

    .line 1271
    iget-object v0, p2, Lcom/sleepycat/b/g/a/o;->h:Lcom/sleepycat/b/g/a/f;

    .line 59
    iput-object v0, p0, Lcom/sleepycat/b/g/g;->b:Lcom/sleepycat/b/g/a/f;

    .line 61
    iget-object v0, p0, Lcom/sleepycat/b/g/g;->b:Lcom/sleepycat/b/g/a/f;

    invoke-static {v0}, Lcom/sleepycat/b/g/a/f;->a(Lcom/sleepycat/b/g/a/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1278
    iget-object v0, p2, Lcom/sleepycat/b/g/a/o;->j:Lcom/sleepycat/b/c/ax;

    .line 62
    iput-object v0, p0, Lcom/sleepycat/b/g/g;->c:Lcom/sleepycat/b/c/ax;

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/g/g;->b:Lcom/sleepycat/b/g/a/f;

    sget-object v1, Lcom/sleepycat/b/g/a/f;->d:Lcom/sleepycat/b/g/a/f;

    if-ne v0, v1, :cond_0

    .line 1285
    iget-object v0, p2, Lcom/sleepycat/b/g/a/o;->i:Lcom/sleepycat/b/c/h;

    .line 64
    iput-object v0, p0, Lcom/sleepycat/b/g/g;->d:Lcom/sleepycat/b/c/h;

    goto :goto_0
.end method

.method public constructor <init>(ZLcom/sleepycat/b/g/a/f;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1}, Lcom/sleepycat/b/g/av;-><init>(Z)V

    .line 34
    iput-object v0, p0, Lcom/sleepycat/b/g/g;->c:Lcom/sleepycat/b/c/ax;

    .line 35
    iput-object v0, p0, Lcom/sleepycat/b/g/g;->d:Lcom/sleepycat/b/c/h;

    .line 44
    iput-object p2, p0, Lcom/sleepycat/b/g/g;->b:Lcom/sleepycat/b/g/a/f;

    .line 45
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/g/a/f;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sleepycat/b/g/g;->b:Lcom/sleepycat/b/g/a/f;

    return-object v0
.end method

.method public final b()Lcom/sleepycat/b/c/ax;
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Lcom/sleepycat/b/g/g;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/g/g;->b:Lcom/sleepycat/b/g/a/f;

    invoke-static {v0}, Lcom/sleepycat/b/g/a/f;->a(Lcom/sleepycat/b/g/a/f;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/g/g;->c:Lcom/sleepycat/b/c/ax;

    return-object v0
.end method

.method public final c()Lcom/sleepycat/b/c/h;
    .locals 2

    .prologue
    .line 89
    sget-boolean v0, Lcom/sleepycat/b/g/g;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/g/g;->b:Lcom/sleepycat/b/g/a/f;

    sget-object v1, Lcom/sleepycat/b/g/a/f;->d:Lcom/sleepycat/b/g/a/f;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/g/g;->d:Lcom/sleepycat/b/c/h;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    invoke-super {p0}, Lcom/sleepycat/b/g/av;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, "opType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/g/g;->b:Lcom/sleepycat/b/g/a/f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, "truncDbId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/g/g;->d:Lcom/sleepycat/b/c/h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
