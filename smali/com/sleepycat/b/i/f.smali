.class public final Lcom/sleepycat/b/i/f;
.super Lcom/sleepycat/b/i/y;
.source "InsufficientLogException.java"


# instance fields
.field private final transient c:Lcom/sleepycat/b/i/c/b/aa;

.field private final d:Lcom/sleepycat/b/p/au;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/b/aa;Lcom/sleepycat/b/p/au;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/i/c/b/aa;",
            "Lcom/sleepycat/b/p/au;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .line 1520
    iget-object v0, p1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 69
    sget-object v1, Lcom/sleepycat/b/c/ac;->o:Lcom/sleepycat/b/c/ac;

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/b/i/y;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;)V

    .line 70
    iput-object p1, p0, Lcom/sleepycat/b/i/f;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 71
    iput-object p2, p0, Lcom/sleepycat/b/i/f;->d:Lcom/sleepycat/b/p/au;

    .line 72
    iput-object p3, p0, Lcom/sleepycat/b/i/f;->e:Ljava/util/Set;

    .line 73
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/i/f;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/i/y;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/y;)V

    .line 2125
    iget-object v0, p2, Lcom/sleepycat/b/i/f;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 82
    iput-object v0, p0, Lcom/sleepycat/b/i/f;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 3106
    iget-object v0, p2, Lcom/sleepycat/b/i/f;->d:Lcom/sleepycat/b/p/au;

    .line 83
    iput-object v0, p0, Lcom/sleepycat/b/i/f;->d:Lcom/sleepycat/b/p/au;

    .line 3116
    iget-object v0, p2, Lcom/sleepycat/b/i/f;->e:Ljava/util/Set;

    .line 84
    iput-object v0, p0, Lcom/sleepycat/b/i/f;->e:Ljava/util/Set;

    .line 85
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/sleepycat/b/aa;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/sleepycat/b/i/f;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/i/f;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/f;)V

    return-object v0
.end method
