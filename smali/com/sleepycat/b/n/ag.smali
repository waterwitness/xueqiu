.class final Lcom/sleepycat/b/n/ag;
.super Ljava/lang/Object;
.source "TxnChain.java"


# static fields
.field static final synthetic e:Z


# instance fields
.field final a:J

.field final b:J

.field final c:Z

.field final d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 275
    const-class v0, Lcom/sleepycat/b/n/ad;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/n/ag;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(JJZLjava/util/LinkedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-wide p1, p0, Lcom/sleepycat/b/n/ag;->a:J

    .line 286
    iput-wide p3, p0, Lcom/sleepycat/b/n/ag;->b:J

    .line 287
    iput-boolean p5, p0, Lcom/sleepycat/b/n/ag;->c:Z

    .line 288
    iput-object p6, p0, Lcom/sleepycat/b/n/ag;->d:Ljava/util/LinkedList;

    .line 289
    return-void
.end method
