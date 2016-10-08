.class public Lcom/sleepycat/b/i/c/z;
.super Lcom/sleepycat/b/i/c/ay;
.source "RepGroupProtocol.java"


# static fields
.field static final synthetic b:Z


# instance fields
.field final a:Lcom/sleepycat/b/i/c/am;

.field final synthetic c:Lcom/sleepycat/b/i/c/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 232
    const-class v0, Lcom/sleepycat/b/i/c/x;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/c/z;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/c/av;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sleepycat/b/i/c/z;->c:Lcom/sleepycat/b/i/c/x;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/x;->a:Lcom/sleepycat/b/i/c/av;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/z;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/z;->a:Lcom/sleepycat/b/i/c/am;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/t;->a(Lcom/sleepycat/b/i/c/am;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sleepycat/b/i/c/z;->j:Ljava/lang/String;

    return-object v0
.end method
