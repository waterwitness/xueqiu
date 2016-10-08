.class public final Lcom/sleepycat/b/i/h/w;
.super Lcom/sleepycat/b/p/at;
.source "ReplicationFormatter.java"


# instance fields
.field private final a:Lcom/sleepycat/b/i/c/b/x;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/b/x;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sleepycat/b/p/at;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sleepycat/b/i/h/w;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 22
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/i/h/w;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 1087
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    return-void
.end method
