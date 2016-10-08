.class abstract Lcom/sleepycat/b/g/a/r;
.super Lcom/sleepycat/b/g/a/q;
.source "SingleItemReplicableEntry.java"

# interfaces
.implements Lcom/sleepycat/b/g/a/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sleepycat/b/g/ax;",
        ">",
        "Lcom/sleepycat/b/g/a/q",
        "<TT;>;",
        "Lcom/sleepycat/b/g/a/p;"
    }
.end annotation


# static fields
.field static final synthetic d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/sleepycat/b/g/a/r;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/g/a/r;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/g/af;Lcom/sleepycat/b/g/ax;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/g/af;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/g/a/q;-><init>(Lcom/sleepycat/b/g/af;Lcom/sleepycat/b/g/at;)V

    .line 44
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
    .line 33
    invoke-direct {p0, p1}, Lcom/sleepycat/b/g/a/q;-><init>(Ljava/lang/Class;)V

    .line 34
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/sleepycat/b/g/a/d;->a(Lcom/sleepycat/b/g/a/p;I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/nio/ByteBuffer;I)V
    .locals 1

    .prologue
    .line 65
    invoke-static {p0, p2}, Lcom/sleepycat/b/g/a/d;->b(Lcom/sleepycat/b/g/a/p;I)V

    .line 1102
    iget-object v0, p0, Lcom/sleepycat/b/g/a/q;->c:Lcom/sleepycat/b/g/at;

    .line 68
    check-cast v0, Lcom/sleepycat/b/g/ax;

    invoke-interface {v0, p1, p2}, Lcom/sleepycat/b/g/ax;->b(Ljava/nio/ByteBuffer;I)V

    .line 69
    return-void
.end method
