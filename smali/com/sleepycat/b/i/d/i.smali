.class public Lcom/sleepycat/b/i/d/i;
.super Lcom/sleepycat/b/i/d/h;
.source "Protocol.java"


# instance fields
.field final synthetic b:Lcom/sleepycat/b/i/d/g;

.field private final c:Lcom/sleepycat/b/i/c/t;

.field private final d:Lcom/sleepycat/b/i/d/b;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/d/g;Lcom/sleepycat/b/i/c/t;Ljava/lang/String;Lcom/sleepycat/b/i/d/b;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sleepycat/b/i/d/i;->b:Lcom/sleepycat/b/i/d/g;

    .line 94
    invoke-direct {p0, p1, p3}, Lcom/sleepycat/b/i/d/h;-><init>(Lcom/sleepycat/b/i/d/g;Ljava/lang/String;)V

    .line 95
    iput-object p2, p0, Lcom/sleepycat/b/i/d/i;->c:Lcom/sleepycat/b/i/c/t;

    .line 96
    iput-object p4, p0, Lcom/sleepycat/b/i/d/i;->d:Lcom/sleepycat/b/i/d/b;

    .line 97
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/c/av;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sleepycat/b/i/d/i;->b:Lcom/sleepycat/b/i/d/g;

    iget-object v0, v0, Lcom/sleepycat/b/i/d/g;->a:Lcom/sleepycat/b/i/c/av;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sleepycat/b/i/d/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/d/i;->d:Lcom/sleepycat/b/i/d/b;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/d/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/d/i;->c:Lcom/sleepycat/b/i/c/t;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/t;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
