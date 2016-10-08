.class abstract Lcom/sleepycat/b/g/a/d;
.super Lcom/sleepycat/b/g/a/c;
.source "BaseReplicableEntry.java"

# interfaces
.implements Lcom/sleepycat/b/g/a/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sleepycat/b/g/ax;",
        ">",
        "Lcom/sleepycat/b/g/a/c",
        "<TT;>;",
        "Lcom/sleepycat/b/g/a/p;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sleepycat/b/g/a/c;-><init>()V

    .line 43
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sleepycat/b/g/a/c;-><init>(Ljava/lang/Class;)V

    .line 37
    return-void
.end method

.method public static a(Lcom/sleepycat/b/g/a/p;I)I
    .locals 1

    .prologue
    .line 86
    invoke-static {p0, p1}, Lcom/sleepycat/b/g/a/d;->b(Lcom/sleepycat/b/g/a/p;I)V

    .line 87
    invoke-interface {p0}, Lcom/sleepycat/b/g/a/p;->d_()I

    move-result v0

    return v0
.end method

.method public static b(Lcom/sleepycat/b/g/a/p;I)V
    .locals 3

    .prologue
    .line 105
    const/16 v0, 0x8

    if-ge p1, v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The requested log version, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", is older than the last format change, 8, for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 68
    invoke-static {p0, p1}, Lcom/sleepycat/b/g/a/d;->a(Lcom/sleepycat/b/g/a/p;I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/b/g/a/d;->a(Ljava/nio/ByteBuffer;I)V

    .line 52
    return-void
.end method
