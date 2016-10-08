.class final Lcom/sleepycat/b/n/g;
.super Ljava/lang/Object;
.source "LockConflict.java"


# static fields
.field static final a:Lcom/sleepycat/b/n/g;

.field static final b:Lcom/sleepycat/b/n/g;

.field static final c:Lcom/sleepycat/b/n/g;


# instance fields
.field d:Z

.field e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 17
    new-instance v0, Lcom/sleepycat/b/n/g;

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/b/n/g;-><init>(ZZ)V

    sput-object v0, Lcom/sleepycat/b/n/g;->a:Lcom/sleepycat/b/n/g;

    .line 18
    new-instance v0, Lcom/sleepycat/b/n/g;

    invoke-direct {v0, v1, v1}, Lcom/sleepycat/b/n/g;-><init>(ZZ)V

    sput-object v0, Lcom/sleepycat/b/n/g;->b:Lcom/sleepycat/b/n/g;

    .line 19
    new-instance v0, Lcom/sleepycat/b/n/g;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/n/g;-><init>(ZZ)V

    sput-object v0, Lcom/sleepycat/b/n/g;->c:Lcom/sleepycat/b/n/g;

    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean p1, p0, Lcom/sleepycat/b/n/g;->d:Z

    .line 29
    iput-boolean p2, p0, Lcom/sleepycat/b/n/g;->e:Z

    .line 30
    return-void
.end method
