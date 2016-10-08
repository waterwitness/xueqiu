.class final Lcom/sleepycat/b/i/c/b/v;
.super Ljava/lang/Object;
.source "MasterTransfer.java"


# static fields
.field static final synthetic c:Z


# instance fields
.field final a:Lcom/sleepycat/b/p/au;

.field final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 351
    const-class v0, Lcom/sleepycat/b/i/c/b/u;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/c/b/v;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/p/au;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/v;->a:Lcom/sleepycat/b/p/au;

    .line 356
    iput-object p2, p0, Lcom/sleepycat/b/i/c/b/v;->b:Ljava/lang/String;

    .line 357
    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/sleepycat/b/i/c/b/v;
    .locals 2

    .prologue
    .line 360
    new-instance v0, Lcom/sleepycat/b/i/c/b/v;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sleepycat/b/i/c/b/v;-><init>(Lcom/sleepycat/b/p/au;Ljava/lang/String;)V

    return-object v0
.end method
