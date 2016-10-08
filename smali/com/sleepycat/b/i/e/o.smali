.class public final Lcom/sleepycat/b/i/e/o;
.super Ljava/lang/Exception;
.source "MasterStatus.java"


# instance fields
.field final synthetic a:Lcom/sleepycat/b/i/e/n;

.field private final b:Lcom/sleepycat/b/i/c/b/x;

.field private final c:Lcom/sleepycat/b/i/c/b/x;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/e/n;)V
    .locals 1

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sleepycat/b/i/e/o;->a:Lcom/sleepycat/b/i/e/n;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 150
    invoke-virtual {p1}, Lcom/sleepycat/b/i/e/n;->j()Lcom/sleepycat/b/i/c/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/e/o;->b:Lcom/sleepycat/b/i/c/b/x;

    .line 151
    invoke-virtual {p1}, Lcom/sleepycat/b/i/e/n;->h()Lcom/sleepycat/b/i/c/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/e/o;->c:Lcom/sleepycat/b/i/c/b/x;

    .line 152
    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Master change. Node master id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/i/e/o;->c:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Group master id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/e/o;->b:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
