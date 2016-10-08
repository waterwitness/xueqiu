.class public Lcom/sleepycat/b/i/e/i;
.super Ljava/lang/Object;
.source "FeederTxns.java"


# static fields
.field public static final synthetic d:Z


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/i/e/j;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/sleepycat/b/i/c/aj;

.field public final c:Lcom/sleepycat/b/p/ai;

.field private final e:Lcom/sleepycat/b/p/d;

.field private final f:Lcom/sleepycat/b/p/d;

.field private final g:Lcom/sleepycat/b/p/d;

.field private final h:Lcom/sleepycat/b/p/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/sleepycat/b/i/e/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/e/i;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/sleepycat/b/i/e/i;)Lcom/sleepycat/b/p/d;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sleepycat/b/i/e/i;->e:Lcom/sleepycat/b/p/d;

    return-object v0
.end method

.method static synthetic b(Lcom/sleepycat/b/i/e/i;)Lcom/sleepycat/b/p/d;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sleepycat/b/i/e/i;->g:Lcom/sleepycat/b/p/d;

    return-object v0
.end method

.method static synthetic c(Lcom/sleepycat/b/i/e/i;)Lcom/sleepycat/b/p/d;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sleepycat/b/i/e/i;->h:Lcom/sleepycat/b/p/d;

    return-object v0
.end method

.method static synthetic d(Lcom/sleepycat/b/i/e/i;)Lcom/sleepycat/b/p/d;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sleepycat/b/i/e/i;->f:Lcom/sleepycat/b/p/d;

    return-object v0
.end method
