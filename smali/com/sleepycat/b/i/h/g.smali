.class public final Lcom/sleepycat/b/i/h/g;
.super Lcom/sleepycat/b/p/r;
.source "BinaryProtocol.java"


# instance fields
.field public final a:Lcom/sleepycat/b/i/h/d;

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/sleepycat/b/i/h/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/h/d;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/i/h/d;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sleepycat/b/i/h/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1016
    invoke-direct {p0}, Lcom/sleepycat/b/p/r;-><init>()V

    .line 1017
    iput-object p1, p0, Lcom/sleepycat/b/i/h/g;->a:Lcom/sleepycat/b/i/h/d;

    .line 1018
    iput-object p2, p0, Lcom/sleepycat/b/i/h/g;->b:Ljava/lang/Class;

    .line 1019
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1022
    invoke-direct {p0, p1}, Lcom/sleepycat/b/p/r;-><init>(Ljava/lang/String;)V

    .line 1023
    iput-object v0, p0, Lcom/sleepycat/b/i/h/g;->a:Lcom/sleepycat/b/i/h/d;

    .line 1024
    iput-object v0, p0, Lcom/sleepycat/b/i/h/g;->b:Ljava/lang/Class;

    .line 1025
    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/sleepycat/b/i/h/g;->a:Lcom/sleepycat/b/i/h/d;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected message type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/i/h/g;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/h/g;->a:Lcom/sleepycat/b/i/h/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/sleepycat/b/p/r;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
