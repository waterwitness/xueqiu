.class public final Lcom/sleepycat/b/n/p;
.super Ljava/lang/Object;
.source "LockUpgrade.java"


# static fields
.field public static final a:Lcom/sleepycat/b/n/p;

.field public static final b:Lcom/sleepycat/b/n/p;

.field public static final c:Lcom/sleepycat/b/n/p;

.field public static final d:Lcom/sleepycat/b/n/p;

.field public static final e:Lcom/sleepycat/b/n/p;

.field public static final f:Lcom/sleepycat/b/n/p;


# instance fields
.field public g:Lcom/sleepycat/b/n/o;

.field h:Z

.field i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 23
    new-instance v0, Lcom/sleepycat/b/n/p;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/n/p;-><init>(ZZ)V

    sput-object v0, Lcom/sleepycat/b/n/p;->a:Lcom/sleepycat/b/n/p;

    .line 25
    new-instance v0, Lcom/sleepycat/b/n/p;

    invoke-direct {v0, v1, v1}, Lcom/sleepycat/b/n/p;-><init>(ZZ)V

    sput-object v0, Lcom/sleepycat/b/n/p;->b:Lcom/sleepycat/b/n/p;

    .line 27
    new-instance v0, Lcom/sleepycat/b/n/p;

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/b/n/p;-><init>(ZZ)V

    sput-object v0, Lcom/sleepycat/b/n/p;->c:Lcom/sleepycat/b/n/p;

    .line 29
    new-instance v0, Lcom/sleepycat/b/n/p;

    invoke-direct {v0, v1, v1}, Lcom/sleepycat/b/n/p;-><init>(ZZ)V

    sput-object v0, Lcom/sleepycat/b/n/p;->d:Lcom/sleepycat/b/n/p;

    .line 31
    new-instance v0, Lcom/sleepycat/b/n/p;

    invoke-direct {v0, v1, v1}, Lcom/sleepycat/b/n/p;-><init>(ZZ)V

    sput-object v0, Lcom/sleepycat/b/n/p;->e:Lcom/sleepycat/b/n/p;

    .line 33
    new-instance v0, Lcom/sleepycat/b/n/p;

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/b/n/p;-><init>(ZZ)V

    sput-object v0, Lcom/sleepycat/b/n/p;->f:Lcom/sleepycat/b/n/p;

    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/n/p;->g:Lcom/sleepycat/b/n/o;

    .line 45
    iput-boolean p1, p0, Lcom/sleepycat/b/n/p;->h:Z

    .line 46
    iput-boolean p2, p0, Lcom/sleepycat/b/n/p;->i:Z

    .line 47
    return-void
.end method
