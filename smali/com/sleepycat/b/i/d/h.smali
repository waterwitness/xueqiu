.class abstract Lcom/sleepycat/b/i/d/h;
.super Lcom/sleepycat/b/i/c/ay;
.source "Protocol.java"


# instance fields
.field final synthetic a:Lcom/sleepycat/b/i/d/g;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/d/g;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sleepycat/b/i/d/h;->a:Lcom/sleepycat/b/i/d/g;

    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/c/ay;-><init>(Lcom/sleepycat/b/i/c/ap;)V

    .line 62
    iput-object p2, p0, Lcom/sleepycat/b/i/d/h;->b:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/b/i/d/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/d/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sleepycat/b/i/d/h;->j:Ljava/lang/String;

    return-object v0
.end method
