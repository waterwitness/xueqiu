.class public final Lcom/sleepycat/b/ar;
.super Ljava/lang/Object;
.source "LockStats.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Lcom/sleepycat/b/p/ai;

.field private final b:Lcom/sleepycat/b/p/ai;

.field private final c:Lcom/sleepycat/b/p/ai;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ai;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/sleepycat/b/ar;->a:Lcom/sleepycat/b/p/ai;

    .line 63
    iput-object p2, p0, Lcom/sleepycat/b/ar;->b:Lcom/sleepycat/b/p/ai;

    .line 64
    iput-object p3, p0, Lcom/sleepycat/b/ar;->c:Lcom/sleepycat/b/p/ai;

    .line 65
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sleepycat/b/ar;->c:Lcom/sleepycat/b/p/ai;

    sget-object v1, Lcom/sleepycat/b/n/n;->e:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->a(Lcom/sleepycat/b/p/ag;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    iget-object v1, p0, Lcom/sleepycat/b/ar;->a:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    iget-object v1, p0, Lcom/sleepycat/b/ar;->b:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v1, p0, Lcom/sleepycat/b/ar;->c:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
